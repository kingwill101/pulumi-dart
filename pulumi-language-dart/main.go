// Copyright 2023 Pulumi Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package main

import (
	"archive/tar"
	"bufio"
	"bytes"
	"compress/gzip"
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"net"
	"os"
	"os/exec"
	"os/signal"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"sync"
	"syscall"
	"time"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/version"
	pbempty "google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/pkg/errors"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	sdk "github.com/pulumi/pulumi/sdk/v3"
	"github.com/pulumi/pulumi/sdk/v3/go/common/apitype"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource/plugin"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/logging"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/rpcutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	codegenrpc "github.com/pulumi/pulumi/sdk/v3/proto/go/codegen"
	"google.golang.org/grpc"
	"gopkg.in/yaml.v3"
)

// dartProcessExitedAfterShowingUserActionableMessage is an exit code we recognize when the Dart process exits.
// If we see this error, there's no need for us to print any additional error messages since the user already got a good one they can handle.
const dartProcessExitedAfterShowingUserActionableMessage = 32

// main is the entry point for the Dart language host.
func main() {
	var tracing string
	var binary string
	var root string
	flag.StringVar(&tracing, "tracing", "", "Emit tracing to a Zipkin-compatible tracing endpoint")
	flag.StringVar(&binary, "binary", "", "A relative or absolute path to a precompiled Dart executable to execute")
	flag.StringVar(&root, "root", "", "Project root path to use")

	flag.Parse()
	args := flag.Args()
	logging.InitLogging(false, 0, false)
	cmdutil.InitTracing("pulumi-language-dart", "pulumi-language-dart", tracing)

	// Determine the Dart executable path
	dartExec, err := exec.LookPath("dart")
	if err != nil {
		err = errors.Wrap(err, "could not find `dart` on the $PATH")
		cmdutil.Exit(err)
	}

	// Optionally pluck out the engine so we can do logging, etc.
	var engineAddress string
	if len(args) > 0 {
		engineAddress = args[0]
	}

	ctx, cancel := signal.NotifyContext(context.Background(), os.Interrupt)
	// Map the context Done channel to the rpcutil boolean cancel channel.
	cancelChannel := make(chan bool)
	go func() {
		<-ctx.Done()
		cancel()
		close(cancelChannel)
	}()

	err = rpcutil.Healthcheck(ctx, engineAddress, 5*time.Minute, cancel)
	if err != nil {
		cmdutil.Exit(errors.Wrapf(err, "could not start health check host RPC server"))
	}

	// Fire up a gRPC server, letting the kernel choose a free port.
	handle, err := rpcutil.ServeWithOptions(rpcutil.ServeOptions{
		Cancel: cancelChannel,
		Init: func(srv *grpc.Server) error {
			host := newLanguageHost(dartExec, engineAddress, tracing, binary)
			pulumirpc.RegisterLanguageRuntimeServer(srv, host)
			return nil
		},
		Options: rpcutil.OpenTracingServerInterceptorOptions(nil),
	})
	if err != nil {
		cmdutil.Exit(errors.Wrapf(err, "could not start language host RPC server"))
	}

	// Otherwise, print out the port so that the spawner knows how to reach us.
	fmt.Printf("%d\n", handle.Port)

	// And finally wait for the server to stop serving.
	if err := <-handle.Done; err != nil {
		cmdutil.Exit(errors.Wrapf(err, "language host RPC stopped serving"))
	}
}

// dartLanguageHost implements the LanguageRuntimeServer interface for Dart.
type dartLanguageHost struct {
	pulumirpc.UnimplementedLanguageRuntimeServer

	exec               string
	engineAddress      string
	tracing            string
	binary             string
	dartBuildSucceeded bool
	operationMu        sync.Mutex
	operation          *activeOperation
}

type activeOperation struct {
	cancel context.CancelFunc
}

// newLanguageHost creates a new instance of dartLanguageHost.
func newLanguageHost(exec, engineAddress, tracing string, binary string) pulumirpc.LanguageRuntimeServer {
	return &dartLanguageHost{
		exec:          exec,
		engineAddress: engineAddress,
		tracing:       tracing,
		binary:        binary,
	}
}

func (host *dartLanguageHost) connectToEngine() (pulumirpc.EngineClient, io.Closer, error) {
	conn, err := grpc.Dial(
		host.engineAddress,
		grpc.WithInsecure(),
		rpcutil.GrpcChannelOptions(),
	)
	if err != nil {
		return nil, nil, errors.Wrap(err, "language host could not make connection to engine")
	}

	return pulumirpc.NewEngineClient(conn), conn, nil
}

func (host *dartLanguageHost) beginOperation(ctx context.Context) (context.Context, func()) {
	opCtx, cancel := context.WithCancel(ctx)
	op := &activeOperation{cancel: cancel}

	host.operationMu.Lock()
	host.operation = op
	host.operationMu.Unlock()

	return opCtx, func() {
		host.operationMu.Lock()
		if host.operation == op {
			host.operation = nil
		}
		host.operationMu.Unlock()
		cancel()
	}
}

func (host *dartLanguageHost) cancelOperation() {
	host.operationMu.Lock()
	op := host.operation
	host.operationMu.Unlock()
	if op != nil {
		op.cancel()
	}
}

func (host *dartLanguageHost) Handshake(
	ctx context.Context,
	req *pulumirpc.LanguageHandshakeRequest,
) (*pulumirpc.LanguageHandshakeResponse, error) {
	if req == nil || req.GetEngineAddress() == "" {
		return nil, errors.New("must contain engine address in request")
	}
	host.engineAddress = req.GetEngineAddress()

	ctx, cancel := context.WithCancel(ctx)
	cancelChannel := make(chan bool)
	go func() {
		<-ctx.Done()
		cancel()
		close(cancelChannel)
	}()

	if err := rpcutil.Healthcheck(ctx, host.engineAddress, 5*time.Minute, cancel); err != nil {
		return nil, fmt.Errorf("could not start health check host RPC server: %w", err)
	}

	return &pulumirpc.LanguageHandshakeResponse{}, nil
}

func normalizePackageDependencyVersion(version string) string {
	version = strings.TrimSpace(version)
	if version == "" {
		return ""
	}
	if strings.HasPrefix(version, "path:") ||
		strings.HasPrefix(version, "git:") ||
		strings.HasPrefix(version, "sdk:") {
		return ""
	}

	version = strings.TrimLeft(version, "^~=")
	if version == "" || strings.ContainsAny(version, " <>|*") {
		return ""
	}
	if strings.HasPrefix(version, "v") {
		return version
	}
	return "v" + version
}

func dependencyToPackageName(name string) string {
	name = strings.TrimSpace(name)
	if name == "" || name == "pulumi" {
		return ""
	}
	if strings.HasPrefix(name, "pulumi_") {
		name = strings.TrimPrefix(name, "pulumi_")
	}
	name = strings.ReplaceAll(name, "_", "-")
	return strings.TrimSpace(name)
}

type projectPackageSpec struct {
	Source     string   `yaml:"source"`
	Version    string   `yaml:"version"`
	Server     string   `yaml:"server"`
	Parameters []string `yaml:"parameters"`
}

type pulumiProjectSpec struct {
	Packages map[string]projectPackageSpec `yaml:"packages"`
}

func findPulumiProjectFile(startDir string) (string, error) {
	dir, err := filepath.Abs(startDir)
	if err != nil {
		return "", err
	}

	candidates := []string{"Pulumi.yaml", "Pulumi.yml"}
	for {
		for _, filename := range candidates {
			path := filepath.Join(dir, filename)
			if _, err := os.Stat(path); err == nil {
				return path, nil
			}
		}

		parentDir := filepath.Dir(dir)
		if parentDir == dir {
			break
		}
		dir = parentDir
	}

	return "", fmt.Errorf("Pulumi project file not found in %s or any parent directory", startDir)
}

func readProjectPackages(startDir string) (map[string]projectPackageSpec, error) {
	projectPath, err := findPulumiProjectFile(startDir)
	if err != nil {
		return nil, err
	}

	data, err := os.ReadFile(projectPath)
	if err != nil {
		return nil, fmt.Errorf("failed to read Pulumi project file at %s: %w", projectPath, err)
	}

	var project pulumiProjectSpec
	if err := yaml.Unmarshal(data, &project); err != nil {
		return nil, fmt.Errorf("failed to parse Pulumi project file at %s: %w", projectPath, err)
	}

	return project.Packages, nil
}

func encodePackageParameters(parameters []string) []byte {
	if len(parameters) == 0 {
		return nil
	}
	if len(parameters) == 1 {
		return []byte(parameters[0])
	}
	encoded, err := json.Marshal(parameters)
	if err != nil {
		return []byte(strings.Join(parameters, ","))
	}
	return encoded
}

func (host *dartLanguageHost) GetRequiredPackages(
	ctx context.Context,
	req *pulumirpc.GetRequiredPackagesRequest,
) (*pulumirpc.GetRequiredPackagesResponse, error) {
	if req == nil || req.GetInfo() == nil {
		return nil, errors.New("missing program info in GetRequiredPackages request")
	}

	searchDir := req.GetInfo().GetProgramDirectory()
	if searchDir == "" {
		searchDir = req.GetInfo().GetRootDirectory()
	}
	if searchDir == "" {
		return nil, errors.New("program directory or root directory must be set in program info")
	}

	pubspecPath, err := findPubspecYaml(searchDir)
	if err != nil {
		logging.V(5).Infof("GetRequiredPackages: no pubspec found from %s: %v", searchDir, err)
		return &pulumirpc.GetRequiredPackagesResponse{}, nil
	}

	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil {
		return nil, err
	}

	projectPackages, err := readProjectPackages(searchDir)
	if err != nil {
		logging.V(5).Infof("GetRequiredPackages: no Pulumi project packages found from %s: %v", searchDir, err)
		projectPackages = nil
	}

	pulumiPackages := DeterminePulumiPackages(pubspec.Dependencies)
	packages := make([]*pulumirpc.PackageDependency, 0, len(pulumiPackages)+len(projectPackages))
	seen := map[string]struct{}{}
	for _, pkg := range pulumiPackages {
		if len(pkg) == 0 {
			continue
		}

		aliasName := dependencyToPackageName(pkg[0])
		if aliasName == "" {
			continue
		}

		version := ""
		if len(pkg) > 1 {
			version = normalizePackageDependencyVersion(pkg[1])
		}

		providerName := aliasName
		server := ""
		var parameterization *pulumirpc.PackageParameterization
		if spec, ok := projectPackages[aliasName]; ok {
			if sourceName := dependencyToPackageName(spec.Source); sourceName != "" {
				providerName = sourceName
			}
			if configuredVersion := normalizePackageDependencyVersion(spec.Version); configuredVersion != "" {
				version = configuredVersion
			}
			server = strings.TrimSpace(spec.Server)
			if len(spec.Parameters) > 0 {
				parameterVersion := strings.TrimSpace(spec.Version)
				if parameterVersion == "" {
					parameterVersion = strings.TrimPrefix(version, "v")
				}
				if parameterVersion != "" {
					parameterization = &pulumirpc.PackageParameterization{
						Name:    aliasName,
						Version: parameterVersion,
						Value:   encodePackageParameters(spec.Parameters),
					}
				}
			}
		}

		key := providerName + "|" + version
		if parameterization != nil {
			key += "|" + parameterization.Name + "|" + parameterization.Version
		}
		if _, ok := seen[key]; ok {
			continue
		}
		seen[key] = struct{}{}

		packages = append(packages, &pulumirpc.PackageDependency{
			Name:             providerName,
			Kind:             "resource",
			Version:          version,
			Server:           server,
			Parameterization: parameterization,
		})
	}

	for aliasName, spec := range projectPackages {
		aliasName = dependencyToPackageName(aliasName)
		if aliasName == "" {
			continue
		}

		sourceName := dependencyToPackageName(spec.Source)
		if sourceName == "" {
			continue
		}

		version := normalizePackageDependencyVersion(spec.Version)
		server := strings.TrimSpace(spec.Server)
		var parameterization *pulumirpc.PackageParameterization
		if len(spec.Parameters) > 0 && strings.TrimSpace(spec.Version) != "" {
			parameterization = &pulumirpc.PackageParameterization{
				Name:    aliasName,
				Version: strings.TrimSpace(spec.Version),
				Value:   encodePackageParameters(spec.Parameters),
			}
		}

		key := sourceName + "|" + version
		if parameterization != nil {
			key += "|" + parameterization.Name + "|" + parameterization.Version
		}
		if _, ok := seen[key]; ok {
			continue
		}
		seen[key] = struct{}{}

		packages = append(packages, &pulumirpc.PackageDependency{
			Name:             sourceName,
			Kind:             "resource",
			Version:          version,
			Server:           server,
			Parameterization: parameterization,
		})
	}

	return &pulumirpc.GetRequiredPackagesResponse{Packages: packages}, nil
}

// GetRequiredPlugins computes the complete set of anticipated plugins required by a Dart program.
func (host *dartLanguageHost) GetRequiredPlugins(
	ctx context.Context,
	req *pulumirpc.GetRequiredPluginsRequest,
) (*pulumirpc.GetRequiredPluginsResponse, error) {
	logging.V(5).Infof("GetRequiredPlugins: %v", req.GetProgram())

	if host.binary != "" {
		logging.V(5).Infof("GetRequiredPlugins: no plugins can be listed when a binary is specified")
		return &pulumirpc.GetRequiredPluginsResponse{}, nil
	}

	// Make a connection to the real engine that we will log messages to.
	conn, err := grpc.Dial(
		host.engineAddress,
		grpc.WithInsecure(),
		rpcutil.GrpcChannelOptions(),
	)
	if err != nil {
		return nil, errors.Wrapf(err, "language host could not make connection to engine")
	}

	// Make a client around that connection.
	engineClient := pulumirpc.NewEngineClient(conn)

	// First do a `dart pub get`. This will ensure that all the pub dependencies of the project
	// are restored and locally available for us.
	if err := host.DartPubGet(ctx, req, engineClient); err != nil {
		return nil, err
	}

	plugins := []*pulumirpc.PluginDependency{}

	return &pulumirpc.GetRequiredPluginsResponse{Plugins: plugins}, nil
}

// DartPubGet runs 'dart pub get' to ensure all dependencies are available.
func (host *dartLanguageHost) DartPubGet(
	ctx context.Context, req *pulumirpc.GetRequiredPluginsRequest, engineClient pulumirpc.EngineClient,
) error {
	args := []string{"pub", "get"}

	args = append(args, "-C", req.GetPwd())

	// Run the `dart pub get` command. Report the output to the user as it's happening.
	_, err := host.RunDartCommand(ctx, engineClient, args, true /*logToUser*/)
	if err != nil {
		return err
	}

	host.dartBuildSucceeded = true
	return nil
}

func (host *dartLanguageHost) DeterminePossiblePulumiPackages(
	ctx context.Context,
	req *pulumirpc.GetRequiredPluginsRequest,
	engineClient pulumirpc.EngineClient,
) ([][]string, error) {
	logging.V(5).Infof("GetRequiredPlugins: Determining Pulumi packages")

	//TODO probably a convenient(accurate) way to determine the correct packages
	//args := []string{"pub", "deps", "--style=list"}
	//commandOutput, err := host.RunDartCommand(ctx, engineClient, args, false /*logToUser*/)
	//if err != nil {
	//	return nil, err
	//}

	// Find pubspec.yaml in the current directory or parent directories
	pubspecPath, err := findPubspecYaml(".")
	if err != nil {
		return nil, fmt.Errorf("failed to find pubspec.yaml: %v", err)
	}

	logging.V(5).Infof("Found pubspec.yaml at: %s", pubspecPath)

	// Read and parse the pubspec.yaml file
	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil {
		logging.V(7).Infof("failed to find pubspec.yaml: %v", err)
		return nil, err
	}

	logging.V(7).Infof("Parsed pubspec: %+v", pubspec)

	if len(pubspec.Dependencies) == 0 {
		return nil, fmt.Errorf("no dependencies found in pubspec.yaml at %s", pubspecPath)
	}

	// Determine Pulumi packages
	packages := DeterminePulumiPackages(pubspec.Dependencies)

	if len(packages) == 0 {
		return nil, fmt.Errorf("pubspec.yaml at %s does not reference any 'pulumi*' packages. Dependencies: %v", pubspecPath, pubspec.Dependencies)
	}

	logging.V(5).Infof("GetRequiredPlugins: Pulumi packages: %#v", packages)

	return packages, nil
}

type versionFile struct {
	name    string
	version string
}

func newVersionFile(b []byte, _ string) *versionFile {
	var name string
	version := strings.TrimSpace(string(b))
	parts := strings.SplitN(version, "\n", 2)
	if len(parts) == 2 {
		// version.txt may contain two lines, in which case it's "plugin name\nversion"
		name = strings.TrimSpace(parts[0])
		version = strings.TrimSpace(parts[1])
	}

	if !strings.HasPrefix(version, "v") {
		// Version file has stripped off the "v" that we need. So add it back here.
		version = fmt.Sprintf("v%v", version)
	}

	return &versionFile{
		name:    name,
		version: version,
	}
}

// RunDartCommand executes a Dart command and optionally logs the output to the user.
func (host *dartLanguageHost) RunDartCommand(
	ctx context.Context, engineClient pulumirpc.EngineClient, args []string, logToUser bool,
) (string, error) {
	commandStr := strings.Join(args, " ")
	if logging.V(5) {
		logging.V(5).Infoln("Language host launching process: ", host.exec, commandStr)
	}

	cmd := exec.Command(host.exec, args...)
	var stdout, stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr

	if logToUser {
		_, err := engineClient.Log(ctx, &pulumirpc.LogRequest{
			Message:   fmt.Sprintf("Running 'dart %v'", commandStr),
			Severity:  pulumirpc.LogSeverity_INFO,
			Ephemeral: true,
		})
		if err != nil {
			return "", err
		}
	}

	err := cmd.Run()
	if err != nil {
		return "", fmt.Errorf("command 'dart %v' failed: %v\nStderr: %v", commandStr, err, stderr.String())
	}

	if logToUser {
		_, err := engineClient.Log(ctx, &pulumirpc.LogRequest{
			Message:   fmt.Sprintf("'dart %v' completed successfully", commandStr),
			Severity:  pulumirpc.LogSeverity_INFO,
			Ephemeral: true,
		})
		if err != nil {
			return "", err
		}
	}

	return stdout.String(), nil
}

type dapRequest struct {
	Seq     int    `json:"seq"`
	Type    string `json:"type"`
	Command string `json:"command"`
}

func readDAPRequest(reader *bufio.Reader) (*dapRequest, error) {
	headers := map[string]string{}
	for {
		line, err := reader.ReadString('\n')
		if err != nil {
			return nil, err
		}

		line = strings.TrimRight(line, "\r\n")
		if line == "" {
			break
		}

		parts := strings.SplitN(line, ":", 2)
		if len(parts) != 2 {
			continue
		}

		key := strings.ToLower(strings.TrimSpace(parts[0]))
		value := strings.TrimSpace(parts[1])
		headers[key] = value
	}

	contentLength, ok := headers["content-length"]
	if !ok {
		return nil, errors.New("missing Content-Length header in DAP message")
	}

	size, err := strconv.Atoi(contentLength)
	if err != nil {
		return nil, fmt.Errorf("invalid Content-Length %q: %w", contentLength, err)
	}

	body := make([]byte, size)
	if _, err := io.ReadFull(reader, body); err != nil {
		return nil, err
	}

	var req dapRequest
	if err := json.Unmarshal(body, &req); err != nil {
		return nil, err
	}

	return &req, nil
}

func writeDAPMessage(writer io.Writer, message map[string]interface{}) error {
	body, err := json.Marshal(message)
	if err != nil {
		return err
	}

	if _, err := fmt.Fprintf(writer, "Content-Length: %d\r\n\r\n", len(body)); err != nil {
		return err
	}
	_, err = writer.Write(body)
	return err
}

type dapDebugServer struct {
	listener     net.Listener
	continueCh   chan struct{}
	continueOnce sync.Once
}

func (s *dapDebugServer) markContinue() {
	s.continueOnce.Do(func() {
		close(s.continueCh)
	})
}

func (s *dapDebugServer) hasContinued() bool {
	select {
	case <-s.continueCh:
		return true
	default:
		return false
	}
}

func (s *dapDebugServer) WaitForContinue(ctx context.Context, timeout time.Duration) error {
	var timeoutChannel <-chan time.Time
	if timeout > 0 {
		timer := time.NewTimer(timeout)
		defer timer.Stop()
		timeoutChannel = timer.C
	}

	select {
	case <-ctx.Done():
		return ctx.Err()
	case <-timeoutChannel:
		return fmt.Errorf("timed out waiting for debugger continue")
	case <-s.continueCh:
		return nil
	}
}

func (s *dapDebugServer) Close() error {
	s.markContinue()
	return s.listener.Close()
}

func serveDAPConnection(conn net.Conn, server *dapDebugServer, emitTerminateEvent bool) {
	defer conn.Close()

	reader := bufio.NewReader(conn)
	seq := 1

	writeResponse := func(req *dapRequest, body map[string]interface{}) error {
		if body == nil {
			body = map[string]interface{}{}
		}
		msg := map[string]interface{}{
			"seq":         seq,
			"type":        "response",
			"request_seq": req.Seq,
			"success":     true,
			"command":     req.Command,
			"body":        body,
		}
		seq++
		return writeDAPMessage(conn, msg)
	}

	writeEvent := func(event string, body map[string]interface{}) error {
		msg := map[string]interface{}{
			"seq":   seq,
			"type":  "event",
			"event": event,
		}
		if body != nil {
			msg["body"] = body
		}
		seq++
		return writeDAPMessage(conn, msg)
	}

	for {
		req, err := readDAPRequest(reader)
		if err != nil {
			return
		}
		if req.Type != "request" {
			continue
		}

		switch req.Command {
		case "initialize":
			if err := writeResponse(req, map[string]interface{}{}); err != nil {
				return
			}
		case "attach":
			if err := writeEvent("initialized", nil); err != nil {
				return
			}
			if err := writeResponse(req, nil); err != nil {
				return
			}
		case "continue":
			if err := writeResponse(req, map[string]interface{}{"allThreadsContinued": true}); err != nil {
				return
			}
			server.markContinue()
			if emitTerminateEvent {
				if err := writeEvent("terminated", nil); err != nil {
					return
				}
			}
		case "disconnect":
			_ = writeResponse(req, nil)
			return
		default:
			if err := writeResponse(req, nil); err != nil {
				return
			}
		}
	}
}

func startDAPDebugServer(emitTerminateEvent bool) (*dapDebugServer, int, error) {
	listener, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		return nil, 0, err
	}

	server := &dapDebugServer{
		listener:   listener,
		continueCh: make(chan struct{}),
	}

	go func() {
		for {
			if server.hasContinued() {
				return
			}

			conn, err := listener.Accept()
			if err != nil {
				return
			}

			go serveDAPConnection(conn, server, emitTerminateEvent)
		}
	}()

	port := listener.Addr().(*net.TCPAddr).Port
	return server, port, nil
}

func (host *dartLanguageHost) emitStartDebugging(
	ctx context.Context,
	engineClient pulumirpc.EngineClient,
	name string,
	port int,
) error {
	config, err := structpb.NewStruct(map[string]interface{}{
		"name":    name,
		"type":    "dart",
		"request": "attach",
		"port":    port,
		"connect": map[string]interface{}{
			"host": "127.0.0.1",
			"port": port,
		},
	})
	if err != nil {
		return fmt.Errorf("failed to serialize debugger config: %w", err)
	}

	_, err = engineClient.StartDebugging(ctx, &pulumirpc.StartDebuggingRequest{
		Config:  config,
		Message: fmt.Sprintf("on port %d", port),
	})
	if err != nil {
		return fmt.Errorf("unable to start debugging: %w", err)
	}

	return nil
}

// Run executes

// Run is the RPC endpoint for LanguageRuntimeServer::Run
func (host *dartLanguageHost) Run(ctx context.Context, req *pulumirpc.RunRequest) (*pulumirpc.RunResponse, error) {
	if host.engineAddress == "" {
		return nil, errors.New("when debugging or running explicitly, must call Handshake before Run")
	}
	runCtx, endOperation := host.beginOperation(ctx)
	defer endOperation()

	config, err := host.constructConfig(req)
	if err != nil {
		return nil, errors.Wrap(err, "failed to serialize configuration")
	}
	configSecretKeys, err := host.constructConfigSecretKeys(req)
	if err != nil {
		return nil, errors.Wrap(err, "failed to serialize configuration secret keys")
	}

	executable := host.exec
	args := []string{}

	if host.binary != "" {
		// Use the specified binary
		executable = host.binary
	} else {
		// Run from source
		args = append(args, "run")

		//TODO decide on the appropriate entrypoint for dart apps
		//currently requires the entrypoint being in a file located at "bin/{package name}.dart"
	}

	if logging.V(5) {
		commandStr := strings.Join(args, " ")
		logging.V(5).Infoln("Language host launching process: ", executable, commandStr)
	}

	if req.GetAttachDebugger() {
		engineClient, closer, err := host.connectToEngine()
		if err != nil {
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("problem connecting engine for debugging: %v", err),
			}, nil
		}
		defer closer.Close()

		debugServer, port, err := startDAPDebugServer(true)
		if err != nil {
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("problem starting debugger endpoint: %v", err),
			}, nil
		}
		defer debugServer.Close()

		if err := host.emitStartDebugging(ctx, engineClient, "Pulumi: Program (Dart)", port); err != nil {
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("problem starting debugger: %v", err),
			}, nil
		}
		if err := debugServer.WaitForContinue(runCtx, 2*time.Minute); err != nil {
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("problem waiting for debugger attach: %v", err),
			}, nil
		}
	}

	// Now simply spawn a process to execute the requested program, wiring up stdout/stderr directly.
	cmd := exec.CommandContext(runCtx, executable, args...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	cmd.Env = host.constructEnv(req, config, configSecretKeys)
	if err := cmd.Run(); err != nil {
		if exiterr, ok := err.(*exec.ExitError); ok {
			// If the program ran, but exited with a non-zero error code.  This will happen often, since user
			// errors will trigger this.  So, the error message should look as nice as possible.
			if status, stok := exiterr.Sys().(syscall.WaitStatus); stok {
				// Check if we got special exit code that means "we already gave the user an
				// actionable message". In that case, we can simply bail out and terminate `pulumi`
				// without showing any more messages.

				//TODO decide on a exit code in dart
				if status.ExitStatus() == dartProcessExitedAfterShowingUserActionableMessage {
					return &pulumirpc.RunResponse{Error: "", Bail: true}, nil
				}

				return &pulumirpc.RunResponse{
					Error: fmt.Sprintf("Program exited with non-zero exit code: %d\n %v", status.ExitStatus(), err),
				}, nil
			}
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("Program exited unexpectedly: %v", exiterr),
			}, nil
		}

		// Otherwise, we didn't even get to run the program.  This ought to never happen unless there's
		// a bug or system condition that prevented us from running the language exec.  Issue a scarier error.
		return &pulumirpc.RunResponse{
			Error: fmt.Sprintf("Problem executing program (could not run language executor): %v", err),
		}, nil
	}

	return &pulumirpc.RunResponse{}, nil
}

// constructEnv constructs the environment for the Dart process.
func (host *dartLanguageHost) constructEnv(req *pulumirpc.RunRequest, config, configSecretKeys string) []string {
	env := os.Environ()

	maybeAppendEnv := func(k, v string) {
		if v != "" {
			env = append(env, fmt.Sprintf("PULUMI_%s=%s", strings.ToUpper(k), v))
		}
	}

	maybeAppendEnv("monitor", req.GetMonitorAddress())
	maybeAppendEnv("engine", host.engineAddress)
	maybeAppendEnv("organization", req.GetOrganization())
	maybeAppendEnv("project", req.GetProject())
	maybeAppendEnv("stack", req.GetStack())
	maybeAppendEnv("pwd", req.GetPwd())
	if info := req.GetInfo(); info != nil {
		maybeAppendEnv("root_directory", info.GetRootDirectory())
	}
	maybeAppendEnv("dry_run", fmt.Sprintf("%v", req.GetDryRun()))
	maybeAppendEnv("query_mode", fmt.Sprint(req.GetQueryMode()))
	maybeAppendEnv("parallel", fmt.Sprint(req.GetParallel()))
	maybeAppendEnv("tracing", host.tracing)
	maybeAppendEnv("config", config)
	maybeAppendEnv("config_secret_keys", configSecretKeys)

	return env
}

// constructConfig json-serializes the configuration data given as part of a RunRequest.
func (host *dartLanguageHost) constructConfig(req *pulumirpc.RunRequest) (string, error) {
	configMap := req.GetConfig()
	if configMap == nil {
		return "", nil
	}

	configJSON, err := json.Marshal(configMap)
	if err != nil {
		return "", err
	}

	return string(configJSON), nil
}

// constructConfigSecretKeys JSON-serializes the list of keys that contain secret values given as part of
// a RunRequest.
func (host *dartLanguageHost) constructConfigSecretKeys(req *pulumirpc.RunRequest) (string, error) {
	configSecretKeys := req.GetConfigSecretKeys()
	if configSecretKeys == nil {
		return "[]", nil
	}

	configSecretKeysJSON, err := json.Marshal(configSecretKeys)
	if err != nil {
		return "", err
	}

	return string(configSecretKeysJSON), nil
}

// GetPluginInfo returns metadata about the language plugin.
func (host *dartLanguageHost) GetPluginInfo(ctx context.Context, req *pbempty.Empty) (*pulumirpc.PluginInfo, error) {
	return &pulumirpc.PluginInfo{
		Version: version.Version,
	}, nil
}

// InstallDependencies installs dependencies for the Dart project.
func (host *dartLanguageHost) InstallDependencies(
	req *pulumirpc.InstallDependenciesRequest, server pulumirpc.LanguageRuntime_InstallDependenciesServer,
) error {
	closer, stdout, stderr, err := rpcutil.MakeInstallDependenciesStreams(server, req.IsTerminal)
	if err != nil {
		return err
	}
	defer closer.Close()

	stdout.Write([]byte("Installing dependencies...\n\n"))

	cmd := exec.Command(host.exec, "pub", "get")
	cmd.Dir = req.Directory
	cmd.Env = os.Environ()
	cmd.Stdout, cmd.Stderr = stdout, stderr

	if err := cmd.Run(); err != nil {
		return fmt.Errorf("`dart pub get` failed to install dependencies: %w", err)
	}
	stdout.Write([]byte("Finished installing dependencies\n\n"))

	return nil
}

// RuntimeOptionsPrompts returns an empty response as no prompts are needed for Dart.
func (host *dartLanguageHost) RuntimeOptionsPrompts(ctx context.Context,
	req *pulumirpc.RuntimeOptionsRequest,
) (*pulumirpc.RuntimeOptionsResponse, error) {
	return &pulumirpc.RuntimeOptionsResponse{}, nil
}

// About returns information about the runtime for the language.
func (host *dartLanguageHost) About(ctx context.Context, req *pulumirpc.AboutRequest) (*pulumirpc.AboutResponse, error) {
	dartPath, err := exec.LookPath("dart")
	if err != nil {
		return nil, fmt.Errorf("could not find Dart executable: %w", err)
	}

	cmd := exec.Command(dartPath, "--version")
	out, err := cmd.Output()
	if err != nil {
		return nil, fmt.Errorf("failed to execute 'dart --version'")
	}

	return &pulumirpc.AboutResponse{
		Executable: dartPath,
		Version:    strings.TrimSpace(string(out)),
	}, nil
}

// GetProgramDependencies returns the dependencies of the Dart program.
func (host *dartLanguageHost) GetProgramDependencies(
	ctx context.Context, req *pulumirpc.GetProgramDependenciesRequest,
) (*pulumirpc.GetProgramDependenciesResponse, error) {
	cmd := exec.Command(host.exec, "pub", "deps", "--style=compact")
	cmd.Dir = filepath.Dir(req.GetProgram())
	out, err := cmd.Output()
	if err != nil {
		return nil, fmt.Errorf("failed to get dependencies: %w", err)
	}

	lines := strings.Split(string(out), "\n")
	var dependencies []*pulumirpc.DependencyInfo

	for _, line := range lines {
		parts := strings.Fields(line)
		if len(parts) >= 2 {
			dependencies = append(dependencies, &pulumirpc.DependencyInfo{
				Name:    parts[0],
				Version: parts[1],
			})
		}
	}

	return &pulumirpc.GetProgramDependenciesResponse{
		Dependencies: dependencies,
	}, nil
}

// RunPlugin executes a plugin.
func (host *dartLanguageHost) RunPlugin(
	req *pulumirpc.RunPluginRequest, server pulumirpc.LanguageRuntime_RunPluginServer,
) error {
	if host.engineAddress == "" {
		return errors.New("when debugging or running explicitly, must call Handshake before RunPlugin")
	}

	ctx, endOperation := host.beginOperation(server.Context())
	defer endOperation()
	isAnalyzer := req.Kind == string(apitype.AnalyzerPlugin)

	var engineClient pulumirpc.EngineClient
	var engineCloser io.Closer
	if req.GetAttachDebugger() {
		var err error
		engineClient, engineCloser, err = host.connectToEngine()
		if err != nil {
			return err
		}
		defer engineCloser.Close()
	}

	closer, stdout, stderr, err := rpcutil.MakeRunPluginStreams(server, false)
	if err != nil {
		return err
	}
	// best effort close, but we try an explicit close and error check at the end as well
	defer closer.Close()

	runArgs := append([]string{}, req.Args...)
	cmdDir := req.Pwd
	if info := req.GetInfo(); info != nil && info.GetProgramDirectory() != "" {
		if isAnalyzer {
			cmdDir = info.GetProgramDirectory()
		} else {
			candidate := info.GetProgramDirectory()
			if _, err := os.Stat(filepath.Join(candidate, "pubspec.yaml")); err == nil {
				cmdDir = candidate
			}
		}
	}
	if !isAnalyzer && len(runArgs) > 0 {
		candidate := runArgs[0]
		if !filepath.IsAbs(candidate) {
			candidate = filepath.Join(req.Pwd, candidate)
		}
		if stat, err := os.Stat(candidate); err == nil && stat.IsDir() {
			if _, err := os.Stat(filepath.Join(candidate, "pubspec.yaml")); err == nil {
				cmdDir = candidate
				runArgs = runArgs[1:]
			}
		}
	}

	runTarget := ""
	if pubspec, err := ReadAndParsePubspec(filepath.Join(cmdDir, "pubspec.yaml")); err == nil {
		runTarget = strings.TrimSpace(pubspec.Name)
	}

	dartArgs := []string{"run"}
	if runTarget != "" {
		dartArgs = append(dartArgs, runTarget)
	}
	if isAnalyzer {
		dartArgs = append(dartArgs, runArgs...)
		if info := req.GetInfo(); info != nil && info.GetProgramDirectory() != "" {
			dartArgs = append(dartArgs, info.GetProgramDirectory())
		}
	} else if len(runArgs) > 0 {
		dartArgs = append(dartArgs, runArgs...)
	}

	env := append([]string{}, req.Env...)
	var policyPackServer *sdk.PolicyProxy
	if isAnalyzer {
		policyPackServer, stdout, err = sdk.NewPolicyProxy(ctx, stdout)
		if err != nil {
			return fmt.Errorf("could not start policy pack proxy: %w", err)
		}

		config, err := policyPackServer.AwaitConfiguration(ctx)
		if err != nil {
			return fmt.Errorf("could not get stack configuration: %w", err)
		}

		env, err = appendPolicyPackConfigEnv(env, config)
		if err != nil {
			return err
		}
	}

	cmd := exec.CommandContext(ctx, host.exec, dartArgs...)
	cmd.Dir = cmdDir
	cmd.Env = env
	cmd.Stdout, cmd.Stderr = stdout, stderr

	run := func() error {
		if err := cmd.Start(); err != nil {
			return err
		}

		if req.GetAttachDebugger() {
			pluginName := strings.TrimSpace(req.Name)
			if pluginName == "" {
				pluginName = strings.TrimSpace(filepath.Base(cmdDir))
			}
			if pluginName == "" {
				pluginName = "dart-plugin"
			}

			debugServer, port, err := startDAPDebugServer(false)
			if err != nil {
				_ = cmd.Process.Kill()
				_ = cmd.Wait()
				return fmt.Errorf("problem starting debugger endpoint: %v", err)
			}
			defer debugServer.Close()

			if err := host.emitStartDebugging(
				ctx,
				engineClient,
				fmt.Sprintf("Pulumi: Plugin (%s)", pluginName),
				port,
			); err != nil {
				_ = cmd.Process.Kill()
				_ = cmd.Wait()
				return fmt.Errorf("problem starting debugger: %v", err)
			}
			if err := debugServer.WaitForContinue(ctx, 2*time.Minute); err != nil {
				_ = cmd.Process.Kill()
				_ = cmd.Wait()
				return fmt.Errorf("problem waiting for debugger attach: %v", err)
			}
		}

		if policyPackServer != nil {
			if err := policyPackServer.Attach(ctx, cmd); err != nil {
				return fmt.Errorf("could not attach policy pack proxy: %w", err)
			}
			return nil
		}

		return cmd.Wait()
	}

	if err := run(); err != nil {
		var exiterr *exec.ExitError
		if errors.As(err, &exiterr) {
			if status, stok := exiterr.Sys().(syscall.WaitStatus); stok {
				return server.Send(&pulumirpc.RunPluginResponse{
					//nolint:gosec // WaitStatus always uses the lower 8 bits for the exit code.
					Output: &pulumirpc.RunPluginResponse_Exitcode{Exitcode: int32(status.ExitStatus())},
				})
			}
			return fmt.Errorf("plugin exited unexpectedly: %v", exiterr)
		}
		return fmt.Errorf("problem executing plugin: %v", err)
	}

	if err := closer.Close(); err != nil {
		return err
	}
	return nil
}

func appendPolicyPackConfigEnv(
	env []string,
	config *pulumirpc.AnalyzerStackConfigureRequest,
) ([]string, error) {
	if config == nil {
		return env, nil
	}

	maybeAppendEnv := func(k, v string) {
		if v != "" {
			env = append(env, k+"="+v)
		}
	}

	maybeAppendEnv("PULUMI_ORGANIZATION", config.Organization)
	maybeAppendEnv("PULUMI_PROJECT", config.Project)
	maybeAppendEnv("PULUMI_STACK", config.Stack)
	maybeAppendEnv("PULUMI_DRY_RUN", strconv.FormatBool(config.DryRun))
	if config.Config != nil {
		configJSON, err := json.Marshal(config.Config)
		if err != nil {
			return nil, fmt.Errorf("could not marshal stack configuration: %w", err)
		}
		maybeAppendEnv("PULUMI_CONFIG", string(configJSON))
	}

	return env, nil
}

type packageSchema struct {
	Name             string                         `json:"name"`
	Namespace        string                         `json:"namespace"`
	Version          string                         `json:"version"`
	Description      string                         `json:"description"`
	License          string                         `json:"license"`
	Homepage         string                         `json:"homepage"`
	Repository       string                         `json:"repository"`
	Keywords         []string                       `json:"keywords"`
	Parameterization *packageParameterizationSpec   `json:"-"`
	Resources        map[string]packageResourceSpec `json:"resources"`
	Functions        map[string]packageFunctionSpec `json:"functions"`
	Config           *packageConfigSpec             `json:"-"`
	Enums            []packageEnumSpec              `json:"-"`
	ObjectClasses    []packageObjectClassSpec       `json:"-"`
}

type packageParameterizationSpec struct {
	PluginName     string
	PluginVersion  string
	PackageName    string
	PackageVersion string
	DownloadURL    string
	Value          []byte
}

type packageResourceSpec struct {
	IsComponent      bool                  `json:"isComponent"`
	Comment          string                `json:"-"`
	ArgsClass        string                `json:"-"`
	OutputProperties []packagePropertySpec `json:"-"`
}

type packageFunctionSpec struct {
	Comment     string `json:"-"`
	HasArgs     bool   `json:"-"`
	ArgsClass   string `json:"-"`
	ResultClass string `json:"-"`
}

type packageObjectClassSpec struct {
	ClassName      string
	ModulePath     string
	Comment        string
	UsesInputTypes bool
	Properties     []packagePropertySpec
}

type packagePropertySpec struct {
	Name              string
	FieldName         string
	Comment           string
	Required          bool
	TypeSpec          packageTypeSpec
	DartType          string
	ReferenceKind     string
	ReferenceType     string
	ReferenceWireType string
}

type packageTypeSpec struct {
	Kind              string
	DartType          string
	ReferenceType     string
	ReferenceWireType string
	ElementType       *packageTypeSpec
}

type packageEnumSpec struct {
	EnumName       string
	ModulePath     string
	Comment        string
	UnderlyingType string
	Values         []packageEnumValueSpec
}

type packageEnumValueSpec struct {
	Name    string
	Comment string
	Literal string
}

type packageConfigSpec struct {
	ClassName  string
	Comment    string
	Properties []packagePropertySpec
}

type packageNamedTypeRef struct {
	Kind             string
	Name             string
	UnderlyingType   string
	UseReferenceType bool
}

type rawPackageSchema struct {
	Name        string                     `json:"name"`
	Namespace   string                     `json:"namespace"`
	Version     string                     `json:"version"`
	Description string                     `json:"description"`
	License     string                     `json:"license"`
	Homepage    string                     `json:"homepage"`
	Repository  string                     `json:"repository"`
	Keywords    []string                   `json:"keywords"`
	Types       map[string]rawTypeSpec     `json:"types"`
	Config      rawConfigSpec              `json:"config"`
	Resources   map[string]rawResourceSpec `json:"resources"`
	Functions   map[string]rawFunctionSpec `json:"functions"`
}

type rawConfigSpec struct {
	Description string                         `json:"description"`
	Variables   map[string]rawPropertyTypeSpec `json:"variables"`
	Required    []string                       `json:"required"`
}

type rawResourceSpec struct {
	Description     string                         `json:"description"`
	IsComponent     bool                           `json:"isComponent"`
	InputProperties map[string]rawPropertyTypeSpec `json:"inputProperties"`
	RequiredInputs  []string                       `json:"requiredInputs"`
	Properties      map[string]rawPropertyTypeSpec `json:"properties"`
	Required        []string                       `json:"required"`
}

type rawFunctionSpec struct {
	Description string         `json:"description"`
	Inputs      *rawObjectSpec `json:"inputs"`
	Outputs     *rawObjectSpec `json:"outputs"`
}

type rawObjectSpec struct {
	Properties map[string]rawPropertyTypeSpec `json:"properties"`
	Required   []string                       `json:"required"`
}

type rawTypeSpec struct {
	Description          string                         `json:"description"`
	Type                 string                         `json:"type"`
	Enum                 []rawEnumValueSpec             `json:"enum"`
	Properties           map[string]rawPropertyTypeSpec `json:"properties"`
	Required             []string                       `json:"required"`
	Items                *rawPropertyTypeSpec           `json:"items"`
	AdditionalProperties *rawPropertyTypeSpec           `json:"additionalProperties"`
}

type rawEnumValueSpec struct {
	Name        string `json:"name"`
	Description string `json:"description"`
	Value       any    `json:"value"`
}

type rawPropertyTypeSpec struct {
	Description          string                `json:"description"`
	Type                 string                `json:"type"`
	Ref                  string                `json:"$ref"`
	Items                *rawPropertyTypeSpec  `json:"items"`
	AdditionalProperties *rawPropertyTypeSpec  `json:"additionalProperties"`
	OneOf                []rawPropertyTypeSpec `json:"oneOf"`
	AnyOf                []rawPropertyTypeSpec `json:"anyOf"`
}

func rawRequiredSet(required []string) map[string]struct{} {
	requiredSet := make(map[string]struct{}, len(required))
	for _, property := range required {
		requiredSet[property] = struct{}{}
	}
	return requiredSet
}

func enumValueName(preferred string, value any, used map[string]int) string {
	candidate := preferred
	if strings.TrimSpace(candidate) == "" {
		candidate = fmt.Sprintf("value_%v", value)
	}
	return propertyFieldName(candidate, used)
}

func dartEnumLiteral(value any, typeName string) (string, bool) {
	switch typeName {
	case "String":
		v, ok := value.(string)
		if !ok {
			return "", false
		}
		return strconv.Quote(v), true
	case "bool":
		v, ok := value.(bool)
		if !ok {
			return "", false
		}
		if v {
			return "true", true
		}
		return "false", true
	case "int":
		switch v := value.(type) {
		case int:
			return strconv.Itoa(v), true
		case int64:
			return strconv.FormatInt(v, 10), true
		case float64:
			if v == float64(int64(v)) {
				return strconv.FormatInt(int64(v), 10), true
			}
		}
		return "", false
	case "double":
		switch v := value.(type) {
		case float64:
			return strconv.FormatFloat(v, 'f', -1, 64), true
		case int:
			return strconv.FormatFloat(float64(v), 'f', -1, 64), true
		case int64:
			return strconv.FormatFloat(float64(v), 'f', -1, 64), true
		}
		return "", false
	default:
		return "", false
	}
}

func rawRefToken(ref string) string {
	if ref == "" {
		return ""
	}
	const typesPrefix = "#/types/"
	if strings.HasPrefix(ref, typesPrefix) {
		return strings.TrimPrefix(ref, typesPrefix)
	}
	return ref
}

func directReferenceInfo(typeSpec packageTypeSpec) (referenceKind string, referenceType string, referenceWireType string) {
	switch typeSpec.Kind {
	case "enum":
		return "enum", typeSpec.ReferenceType, typeSpec.ReferenceWireType
	case "object":
		return "object", typeSpec.ReferenceType, "Map<String, dynamic>"
	default:
		return "", "", ""
	}
}

func makePackageTypeSpec(kind, dartType string) packageTypeSpec {
	return packageTypeSpec{
		Kind:     kind,
		DartType: dartType,
	}
}

func dartTypeSpecFromRawPropertyType(
	typ rawPropertyTypeSpec,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
) packageTypeSpec {
	if token := rawRefToken(typ.Ref); token != "" {
		if namedType, ok := namedTypeRefs[token]; ok {
			if namedType.Kind == "object" && !namedType.UseReferenceType {
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
			if useReferenceTypes {
				return packageTypeSpec{
					Kind:              namedType.Kind,
					DartType:          namedType.Name,
					ReferenceType:     namedType.Name,
					ReferenceWireType: namedType.UnderlyingType,
				}
			}
			if namedType.Kind == "enum" {
				return makePackageTypeSpec("scalar", namedType.UnderlyingType)
			}
			return makePackageTypeSpec("object", "Map<String, dynamic>")
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	}

	switch typ.Type {
	case "boolean":
		return makePackageTypeSpec("scalar", "bool")
	case "integer":
		return makePackageTypeSpec("scalar", "int")
	case "number":
		return makePackageTypeSpec("scalar", "double")
	case "string":
		return makePackageTypeSpec("scalar", "String")
	case "array":
		elementSpec := makePackageTypeSpec("dynamic", "dynamic")
		if typ.Items != nil {
			elementSpec = dartTypeSpecFromRawPropertyType(*typ.Items, namedTypeRefs, useReferenceTypes)
		}
		return packageTypeSpec{
			Kind:        "array",
			DartType:    fmt.Sprintf("List<%s>", elementSpec.DartType),
			ElementType: &elementSpec,
		}
	case "object":
		if typ.AdditionalProperties != nil {
			valueSpec := dartTypeSpecFromRawPropertyType(*typ.AdditionalProperties, namedTypeRefs, useReferenceTypes)
			return packageTypeSpec{
				Kind:        "map",
				DartType:    fmt.Sprintf("Map<String, %s>", valueSpec.DartType),
				ElementType: &valueSpec,
			}
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	}

	if len(typ.OneOf) > 0 {
		for _, candidate := range typ.OneOf {
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes)
			if typeSpec.DartType != "dynamic" {
				return typeSpec
			}
		}
	}

	if len(typ.AnyOf) > 0 {
		for _, candidate := range typ.AnyOf {
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes)
			if typeSpec.DartType != "dynamic" {
				return typeSpec
			}
		}
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func makeRawObjectClassSpec(
	baseName string,
	modulePath string,
	classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	usedClassNames map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	className := uniqueClassName(toDartClassName(baseName), usedClassNames)
	return buildRawObjectClassSpec(
		className,
		modulePath,
		classComment,
		properties,
		required,
		namedTypeRefs,
		useReferenceTypes,
		usesInputTypes,
	)
}

func buildRawObjectClassSpec(
	className string,
	modulePath string,
	classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	propertyNames := make([]string, 0, len(properties))
	for name := range properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)

	requiredSet := rawRequiredSet(required)
	usedFieldNames := map[string]int{}
	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		property := properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		typeSpec := dartTypeSpecFromRawPropertyType(
			property,
			namedTypeRefs,
			useReferenceTypes,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              propertyName,
			FieldName:         propertyFieldName(propertyName, usedFieldNames),
			Comment:           strings.TrimSpace(property.Description),
			Required:          isRequired,
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	return &packageObjectClassSpec{
		ClassName:      className,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(classComment),
		UsesInputTypes: usesInputTypes,
		Properties:     fields,
	}
}

func makeRawEnumSpec(
	typeName string,
	modulePath string,
	rawType rawTypeSpec,
) *packageEnumSpec {
	if len(rawType.Enum) == 0 {
		return nil
	}

	underlyingType := dartTypeFromRawTypeName(rawType.Type)
	values := make([]packageEnumValueSpec, 0, len(rawType.Enum))
	usedValueNames := map[string]int{}
	for _, enumValue := range rawType.Enum {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Comment: strings.TrimSpace(enumValue.Description),
			Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}

	return &packageEnumSpec{
		EnumName:       typeName,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(rawType.Description),
		UnderlyingType: underlyingType,
		Values:         values,
	}
}

func dartTypeFromRawTypeName(typeName string) string {
	switch typeName {
	case "boolean":
		return "bool"
	case "integer":
		return "int"
	case "number":
		return "double"
	case "string":
		return "String"
	default:
		return "String"
	}
}

func makeRawResourceOutputPropertySpecs(
	resource rawResourceSpec,
	namedTypeRefs map[string]packageNamedTypeRef,
) []packagePropertySpec {
	if len(resource.Properties) == 0 {
		return nil
	}

	propertyNames := make([]string, 0, len(resource.Properties))
	for name := range resource.Properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)

	requiredSet := rawRequiredSet(resource.Required)
	usedFieldNames := map[string]int{
		"urn": 1,
	}
	if !resource.IsComponent {
		usedFieldNames["id"] = 1
	}

	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		if propertyName == "urn" {
			continue
		}
		if !resource.IsComponent && propertyName == "id" {
			continue
		}

		property := resource.Properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		typeSpec := dartTypeSpecFromRawPropertyType(
			property,
			namedTypeRefs,
			true,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              propertyName,
			FieldName:         propertyFieldName(propertyName, usedFieldNames),
			Comment:           strings.TrimSpace(property.Description),
			Required:          isRequired,
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	if len(fields) == 0 {
		return nil
	}
	return fields
}

func parsePackageSchema(schemaJSON string) (*packageSchema, error) {
	var rawSpec rawPackageSchema
	if err := json.Unmarshal([]byte(schemaJSON), &rawSpec); err != nil {
		return nil, fmt.Errorf("failed to parse package schema: %w", err)
	}
	if rawSpec.Name == "" {
		return nil, errors.New("package schema is missing name")
	}

	spec := &packageSchema{
		Name:          rawSpec.Name,
		Namespace:     rawSpec.Namespace,
		Version:       rawSpec.Version,
		Description:   strings.TrimSpace(rawSpec.Description),
		License:       strings.TrimSpace(rawSpec.License),
		Homepage:      strings.TrimSpace(rawSpec.Homepage),
		Repository:    strings.TrimSpace(rawSpec.Repository),
		Keywords:      append([]string(nil), rawSpec.Keywords...),
		Resources:     map[string]packageResourceSpec{},
		Functions:     map[string]packageFunctionSpec{},
		Config:        nil,
		Enums:         []packageEnumSpec{},
		ObjectClasses: []packageObjectClassSpec{},
	}

	usedClassNames := map[string]int{}
	namedTypeRefs := map[string]packageNamedTypeRef{}

	typeTokens := make([]string, 0, len(rawSpec.Types))
	for token := range rawSpec.Types {
		typeTokens = append(typeTokens, token)
	}
	sort.Strings(typeTokens)

	for _, token := range typeTokens {
		typeSpec := rawSpec.Types[token]
		if len(typeSpec.Enum) > 0 {
			typeName := uniqueClassName(toDartClassName(tokenElementName(token)), usedClassNames)
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             typeName,
				UnderlyingType:   dartTypeFromRawTypeName(typeSpec.Type),
				UseReferenceType: true,
			}
			continue
		}
		if typeSpec.Type == "object" {
			typeName := ""
			useReferenceType := false
			if len(typeSpec.Properties) > 0 {
				typeName = uniqueClassName(toDartClassName(tokenElementName(token)), usedClassNames)
				useReferenceType = true
			}
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "object",
				Name:             typeName,
				UnderlyingType:   "Map<String, dynamic>",
				UseReferenceType: useReferenceType,
			}
		}
	}

	for _, token := range typeTokens {
		typeSpec := rawSpec.Types[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch namedType.Kind {
		case "enum":
			if enumSpec := makeRawEnumSpec(namedType.Name, tokenModulePath(token), typeSpec); enumSpec != nil {
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case "object":
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildRawObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				typeSpec.Description,
				typeSpec.Properties,
				typeSpec.Required,
				namedTypeRefs,
				true,
				false,
			); classSpec != nil {
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}

	if len(rawSpec.Config.Variables) > 0 {
		configClassName := uniqueClassName(toDartClassName(rawSpec.Name)+"Config", usedClassNames)
		if configClass := buildRawObjectClassSpec(
			configClassName,
			"config",
			rawSpec.Config.Description,
			rawSpec.Config.Variables,
			rawSpec.Config.Required,
			namedTypeRefs,
			true,
			false,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}

	resourceTokens := make([]string, 0, len(rawSpec.Resources))
	for token := range rawSpec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		resource := rawSpec.Resources[token]
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
			Comment:     strings.TrimSpace(resource.Description),
		}
		if classSpec := makeRawObjectClassSpec(
			toDartClassName(tokenElementName(token))+"Args",
			tokenModulePath(token),
			fmt.Sprintf("The set of arguments for %s.", toDartClassName(tokenElementName(token))),
			resource.InputProperties,
			resource.RequiredInputs,
			usedClassNames,
			namedTypeRefs,
			true,
			true,
		); classSpec != nil {
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}
		resourceSpec.OutputProperties = makeRawResourceOutputPropertySpecs(resource, namedTypeRefs)
		spec.Resources[token] = resourceSpec
	}

	functionTokens := make([]string, 0, len(rawSpec.Functions))
	for token := range rawSpec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)

	for _, token := range functionTokens {
		function := rawSpec.Functions[token]
		var inputProperties map[string]rawPropertyTypeSpec
		var inputRequired []string
		if function.Inputs != nil {
			inputProperties = function.Inputs.Properties
			inputRequired = function.Inputs.Required
		}
		var outputProperties map[string]rawPropertyTypeSpec
		var outputRequired []string
		if function.Outputs != nil {
			outputProperties = function.Outputs.Properties
			outputRequired = function.Outputs.Required
		}

		functionSpec := packageFunctionSpec{
			Comment: strings.TrimSpace(function.Description),
			HasArgs: len(inputProperties) > 0,
		}
		base := toDartClassName(tokenElementName(token))
		if classSpec := makeRawObjectClassSpec(
			base+"Args",
			tokenModulePath(token),
			fmt.Sprintf("Arguments for %s.", functionNameFromToken(token, map[string]int{})),
			inputProperties,
			inputRequired,
			usedClassNames,
			namedTypeRefs,
			true,
			true,
		); classSpec != nil {
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ArgsClass = classSpec.ClassName
		}
		if classSpec := makeRawObjectClassSpec(
			base+"Result",
			tokenModulePath(token),
			fmt.Sprintf("Result data returned by %s.", functionNameFromToken(token, map[string]int{})),
			outputProperties,
			outputRequired,
			usedClassNames,
			namedTypeRefs,
			true,
			false,
		); classSpec != nil {
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ResultClass = classSpec.ClassName
		}
		spec.Functions[token] = functionSpec
	}

	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec, nil
}

func uniqueClassName(base string, used map[string]int) string {
	return claimUniqueTypeName(base, used)
}

var dartReservedIdentifiers = map[string]struct{}{
	"assert": {}, "break": {}, "case": {}, "catch": {}, "class": {}, "const": {}, "continue": {},
	"default": {}, "do": {}, "else": {}, "enum": {}, "extends": {}, "false": {}, "final": {},
	"finally": {}, "for": {}, "if": {}, "in": {}, "is": {}, "new": {}, "null": {}, "rethrow": {},
	"return": {}, "super": {}, "switch": {}, "this": {}, "throw": {}, "true": {}, "try": {},
	"var": {}, "void": {}, "while": {}, "with": {},
}

var dartDisallowedFieldNames = map[string]struct{}{
	"runtimeType":  {},
	"hashCode":     {},
	"toString":     {},
	"noSuchMethod": {},
	"toMap":        {},
	"fromMap":      {},
}

var dartDisallowedTypeNames = map[string]struct{}{
	"ComponentResource":     {},
	"CustomResource":        {},
	"CustomResourceOptions": {},
	"Deployment":            {},
	"Function":              {},
	"Input":                 {},
	"InputArgs":             {},
	"InvokeOptions":         {},
	"List":                  {},
	"Map":                   {},
	"Output":                {},
	"Resource":              {},
	"ResourceOptions":       {},
	"Set":                   {},
}

func sanitizeTypeName(name string) string {
	if name == "" {
		return "GeneratedType"
	}
	if _, disallowed := dartDisallowedTypeNames[name]; disallowed {
		return name + "Type"
	}
	return name
}

func claimUniqueTypeName(base string, used map[string]int) string {
	if base == "" {
		base = "GeneratedType"
	}
	base = sanitizeTypeName(base)

	if _, exists := used[base]; !exists {
		used[base] = 1
		return base
	}

	stem := base
	start := 2
	for i := len(base) - 1; i >= 0; i-- {
		if base[i] < '0' || base[i] > '9' {
			if i < len(base)-1 {
				parsed, err := strconv.Atoi(base[i+1:])
				if err == nil && parsed >= 1 {
					start = parsed + 1
					stem = base[:i+1]
				}
			}
			break
		}
		if i == 0 {
			stem = base
			start = 2
		}
	}

	for suffix := start; ; suffix++ {
		candidate := fmt.Sprintf("%s%d", stem, suffix)
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
}

func propertyFieldName(name string, used map[string]int) string {
	candidate := toDartClassName(name)
	if candidate == "" {
		candidate = "value"
	}
	runes := []rune(candidate)
	if len(runes) > 0 && runes[0] >= 'A' && runes[0] <= 'Z' {
		runes[0] = runes[0] - 'A' + 'a'
	}
	candidate = string(runes)
	if _, reserved := dartReservedIdentifiers[candidate]; reserved {
		candidate += "_"
	}
	if _, disallowed := dartDisallowedFieldNames[candidate]; disallowed {
		candidate += "_"
	}
	count := used[candidate]
	used[candidate] = count + 1
	if count == 0 {
		return candidate
	}
	return fmt.Sprintf("%s%d", candidate, count+1)
}

func dartTypeSpecFromSchemaType(
	typ schema.Type,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
) packageTypeSpec {
	for {
		switch t := typ.(type) {
		case *schema.OptionalType:
			typ = t.ElementType
		case *schema.InputType:
			typ = t.ElementType
		default:
			goto resolved
		}
	}

resolved:
	switch t := typ.(type) {
	case nil:
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.ArrayType:
		elementType := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes)
		return packageTypeSpec{
			Kind:        "array",
			DartType:    fmt.Sprintf("List<%s>", elementType.DartType),
			ElementType: &elementType,
		}
	case *schema.MapType:
		valueType := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes)
		return packageTypeSpec{
			Kind:        "map",
			DartType:    fmt.Sprintf("Map<String, %s>", valueType.DartType),
			ElementType: &valueType,
		}
	case *schema.UnionType:
		if t.DefaultType != nil {
			return dartTypeSpecFromSchemaType(t.DefaultType, namedTypeRefs, useReferenceTypes)
		}
		for _, elementType := range t.ElementTypes {
			candidate := dartTypeSpecFromSchemaType(elementType, namedTypeRefs, useReferenceTypes)
			if candidate.DartType != "dynamic" {
				return candidate
			}
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.EnumType:
		if namedTypeRefs != nil {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if !namedType.UseReferenceType {
					return makePackageTypeSpec("scalar", namedType.UnderlyingType)
				}
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              namedType.Kind,
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: namedType.UnderlyingType,
					}
				}
				return makePackageTypeSpec("scalar", namedType.UnderlyingType)
			}
		}
		return dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes)
	case *schema.TokenType:
		if namedTypeRefs != nil {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if namedType.Kind == "object" && !namedType.UseReferenceType {
					return makePackageTypeSpec("object", "Map<String, dynamic>")
				}
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              namedType.Kind,
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: namedType.UnderlyingType,
					}
				}
				if namedType.Kind == "enum" {
					return makePackageTypeSpec("scalar", namedType.UnderlyingType)
				}
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
		}
		if t.UnderlyingType != nil {
			return dartTypeSpecFromSchemaType(t.UnderlyingType, namedTypeRefs, useReferenceTypes)
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.ObjectType:
		if namedTypeRefs != nil && t.Token != "" {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if namedType.Kind == "object" && !namedType.UseReferenceType {
					return makePackageTypeSpec("object", "Map<String, dynamic>")
				}
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              namedType.Kind,
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: namedType.UnderlyingType,
					}
				}
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	case *schema.ResourceType:
		return makePackageTypeSpec("dynamic", "dynamic")
	}

	switch typ {
	case schema.BoolType:
		return makePackageTypeSpec("scalar", "bool")
	case schema.IntType:
		return makePackageTypeSpec("scalar", "int")
	case schema.NumberType:
		return makePackageTypeSpec("scalar", "double")
	case schema.StringType:
		return makePackageTypeSpec("scalar", "String")
	case schema.AssetType, schema.ArchiveType, schema.AnyResourceType, schema.JSONType, schema.AnyType:
		return makePackageTypeSpec("dynamic", "dynamic")
	default:
		return makePackageTypeSpec("dynamic", "dynamic")
	}
}

func makeObjectClassSpec(
	baseName string,
	modulePath string,
	classComment string,
	properties []*schema.Property,
	usedClassNames map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	className := uniqueClassName(toDartClassName(baseName), usedClassNames)
	return buildObjectClassSpec(
		className,
		modulePath,
		classComment,
		properties,
		namedTypeRefs,
		useReferenceTypes,
		usesInputTypes,
	)
}

func buildObjectClassSpec(
	className string,
	modulePath string,
	classComment string,
	properties []*schema.Property,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	props := make([]*schema.Property, len(properties))
	copy(props, properties)
	sort.Slice(props, func(i, j int) bool {
		return props[i].Name < props[j].Name
	})

	usedFieldNames := map[string]int{}
	fields := make([]packagePropertySpec, 0, len(props))
	for _, property := range props {
		typeSpec := dartTypeSpecFromSchemaType(
			property.Type,
			namedTypeRefs,
			useReferenceTypes,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              property.Name,
			FieldName:         propertyFieldName(property.Name, usedFieldNames),
			Comment:           strings.TrimSpace(property.Comment),
			Required:          property.IsRequired(),
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	return &packageObjectClassSpec{
		ClassName:      className,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(classComment),
		UsesInputTypes: usesInputTypes,
		Properties:     fields,
	}
}

func makeResourceOutputPropertySpecs(
	resource *schema.Resource,
	namedTypeRefs map[string]packageNamedTypeRef,
) []packagePropertySpec {
	if len(resource.Properties) == 0 {
		return nil
	}

	props := make([]*schema.Property, len(resource.Properties))
	copy(props, resource.Properties)
	sort.Slice(props, func(i, j int) bool {
		return props[i].Name < props[j].Name
	})

	usedFieldNames := map[string]int{
		"urn": 1,
	}
	if !resource.IsComponent {
		usedFieldNames["id"] = 1
	}

	fields := make([]packagePropertySpec, 0, len(props))
	for _, property := range props {
		if property.Name == "urn" {
			continue
		}
		if !resource.IsComponent && property.Name == "id" {
			continue
		}

		typeSpec := dartTypeSpecFromSchemaType(
			property.Type,
			namedTypeRefs,
			true,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              property.Name,
			FieldName:         propertyFieldName(property.Name, usedFieldNames),
			Comment:           strings.TrimSpace(property.Comment),
			Required:          property.IsRequired(),
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	if len(fields) == 0 {
		return nil
	}
	return fields
}

func makeSchemaEnumSpec(typeName string, modulePath string, enumType *schema.EnumType) *packageEnumSpec {
	if enumType == nil || len(enumType.Elements) == 0 {
		return nil
	}

	underlyingType := dartTypeSpecFromSchemaType(enumType.ElementType, nil, false).DartType
	values := make([]packageEnumValueSpec, 0, len(enumType.Elements))
	usedValueNames := map[string]int{}
	for _, enumValue := range enumType.Elements {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}

	return &packageEnumSpec{
		EnumName:       typeName,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(enumType.Comment),
		UnderlyingType: underlyingType,
		Values:         values,
	}
}

func packageSchemaFromPackage(pkg *schema.Package) *packageSchema {
	version := ""
	if pkg.Version != nil {
		version = pkg.Version.String()
	}

	spec := &packageSchema{
		Name:             pkg.Name,
		Namespace:        pkg.Namespace,
		Version:          version,
		Description:      strings.TrimSpace(pkg.Description),
		License:          strings.TrimSpace(pkg.License),
		Homepage:         strings.TrimSpace(pkg.Homepage),
		Repository:       strings.TrimSpace(pkg.Repository),
		Keywords:         append([]string(nil), pkg.Keywords...),
		Parameterization: nil,
		Resources:        map[string]packageResourceSpec{},
		Functions:        map[string]packageFunctionSpec{},
		Config:           nil,
		Enums:            []packageEnumSpec{},
		ObjectClasses:    []packageObjectClassSpec{},
	}

	if pkg.Parameterization != nil {
		pluginVersion := pkg.Parameterization.BaseProvider.Version.String()
		packageVersion := version
		if packageVersion == "" {
			packageVersion = pluginVersion
		}
		if pluginVersion == "" {
			pluginVersion = packageVersion
		}
		if pluginVersion == "" {
			pluginVersion = "0.0.1"
		}
		if packageVersion == "" {
			packageVersion = pluginVersion
		}

		spec.Parameterization = &packageParameterizationSpec{
			PluginName:     pkg.Parameterization.BaseProvider.Name,
			PluginVersion:  pluginVersion,
			PackageName:    pkg.Name,
			PackageVersion: packageVersion,
			DownloadURL:    pkg.PluginDownloadURL,
			Value:          append([]byte(nil), pkg.Parameterization.Parameter...),
		}
	}

	usedClassNames := map[string]int{}
	namedTypeRefs := map[string]packageNamedTypeRef{}

	typeTokens := make([]string, 0, len(pkg.Types))
	typesByToken := map[string]schema.Type{}
	for _, typ := range pkg.Types {
		switch t := typ.(type) {
		case *schema.EnumType:
			if t.Token == "" {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		case *schema.ObjectType:
			if t.Token == "" || t.IsInputShape() {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		}
	}
	sort.Strings(typeTokens)

	for _, token := range typeTokens {
		typ := typesByToken[token]
		switch t := typ.(type) {
		case *schema.EnumType:
			typeName := uniqueClassName(toDartClassName(tokenElementName(token)), usedClassNames)
			underlyingType := dartTypeSpecFromSchemaType(t.ElementType, nil, false).DartType
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             typeName,
				UnderlyingType:   underlyingType,
				UseReferenceType: true,
			}
		case *schema.ObjectType:
			typeName := ""
			useReferenceType := false
			if len(t.Properties) > 0 {
				typeName = uniqueClassName(toDartClassName(tokenElementName(token)), usedClassNames)
				useReferenceType = true
			}
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "object",
				Name:             typeName,
				UnderlyingType:   "Map<String, dynamic>",
				UseReferenceType: useReferenceType,
			}
		}
	}

	for _, token := range typeTokens {
		typ := typesByToken[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch t := typ.(type) {
		case *schema.EnumType:
			if enumSpec := makeSchemaEnumSpec(namedType.Name, tokenModulePath(token), t); enumSpec != nil {
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case *schema.ObjectType:
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				t.Comment,
				t.Properties,
				namedTypeRefs,
				true,
				false,
			); classSpec != nil {
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}

	if len(pkg.Config) > 0 {
		configClassName := uniqueClassName(toDartClassName(pkg.Name)+"Config", usedClassNames)
		if configClass := buildObjectClassSpec(
			configClassName,
			"config",
			fmt.Sprintf("Configuration values for the %s package.", pkg.Name),
			pkg.Config,
			namedTypeRefs,
			true,
			false,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}

	resourceByToken := map[string]*schema.Resource{}
	resourceTokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		resourceByToken[resource.Token] = resource
		resourceTokens = append(resourceTokens, resource.Token)
	}
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		resource := resourceByToken[token]
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
			Comment:     strings.TrimSpace(resource.Comment),
		}
		if classSpec := makeObjectClassSpec(
			toDartClassName(tokenElementName(resource.Token))+"Args",
			tokenModulePath(resource.Token),
			fmt.Sprintf("The set of arguments for %s.", toDartClassName(tokenElementName(resource.Token))),
			resource.InputProperties,
			usedClassNames,
			namedTypeRefs,
			true,
			true,
		); classSpec != nil {
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}
		resourceSpec.OutputProperties = makeResourceOutputPropertySpecs(resource, namedTypeRefs)
		spec.Resources[resource.Token] = resourceSpec
	}

	functionByToken := map[string]*schema.Function{}
	functionTokens := make([]string, 0, len(pkg.Functions))
	for _, function := range pkg.Functions {
		functionByToken[function.Token] = function
		functionTokens = append(functionTokens, function.Token)
	}
	sort.Strings(functionTokens)

	for _, token := range functionTokens {
		function := functionByToken[token]
		inputProperties := []*schema.Property{}
		if function.Inputs != nil {
			inputProperties = function.Inputs.Properties
		}
		outputProperties := []*schema.Property{}
		if function.Outputs != nil {
			outputProperties = function.Outputs.Properties
		}

		functionSpec := packageFunctionSpec{
			Comment: strings.TrimSpace(function.Comment),
			HasArgs: len(inputProperties) > 0,
		}
		base := toDartClassName(tokenElementName(function.Token))
		if classSpec := makeObjectClassSpec(
			base+"Args",
			tokenModulePath(function.Token),
			fmt.Sprintf("Arguments for %s.", functionNameFromToken(function.Token, map[string]int{})),
			inputProperties,
			usedClassNames,
			namedTypeRefs,
			true,
			true,
		); classSpec != nil {
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ArgsClass = classSpec.ClassName
		}
		if classSpec := makeObjectClassSpec(
			base+"Result",
			tokenModulePath(function.Token),
			fmt.Sprintf("Result data returned by %s.", functionNameFromToken(function.Token, map[string]int{})),
			outputProperties,
			usedClassNames,
			namedTypeRefs,
			true,
			false,
		); classSpec != nil {
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ResultClass = classSpec.ClassName
		}
		spec.Functions[function.Token] = functionSpec
	}

	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec
}

func sanitizeDartIdentifier(value string) string {
	value = strings.ToLower(value)

	var b strings.Builder
	lastWasUnderscore := false
	for _, r := range value {
		isAlpha := r >= 'a' && r <= 'z'
		isDigit := r >= '0' && r <= '9'
		if isAlpha || isDigit {
			if b.Len() == 0 && isDigit {
				b.WriteString("pkg_")
			}
			b.WriteRune(r)
			lastWasUnderscore = false
			continue
		}
		if b.Len() > 0 && !lastWasUnderscore {
			b.WriteRune('_')
			lastWasUnderscore = true
		}
	}

	out := strings.Trim(b.String(), "_")
	if out == "" {
		return "pulumi_package"
	}
	if out[0] >= '0' && out[0] <= '9' {
		return "pkg_" + out
	}
	return out
}

func toDartPackageName(namespace, name string) string {
	base := ""
	if namespace == "" {
		base = sanitizeDartIdentifier(name)
	} else {
		base = sanitizeDartIdentifier(namespace + "_" + name)
	}
	if strings.HasPrefix(base, "pulumi_") {
		return base
	}
	return sanitizeDartIdentifier("pulumi_" + base)
}

func toDartClassName(name string) string {
	parts := strings.FieldsFunc(name, func(r rune) bool {
		return !((r >= 'a' && r <= 'z') || (r >= 'A' && r <= 'Z') || (r >= '0' && r <= '9'))
	})
	if len(parts) == 0 {
		return "Resource"
	}

	var b strings.Builder
	for _, part := range parts {
		if part == "" {
			continue
		}
		head := part[0]
		if head >= 'a' && head <= 'z' {
			part = string(head-'a'+'A') + part[1:]
		}
		b.WriteString(part)
	}

	result := b.String()
	if result == "" {
		return "Resource"
	}
	if result[0] >= '0' && result[0] <= '9' {
		return "Resource" + result
	}
	return result
}

func tokenElementName(token string) string {
	name := token
	if idx := strings.LastIndex(token, ":"); idx >= 0 && idx+1 < len(token) {
		name = token[idx+1:]
	}
	if idx := strings.LastIndex(name, "/"); idx >= 0 && idx+1 < len(name) {
		name = name[idx+1:]
	}
	return name
}

func tokenModulePath(token string) string {
	first := strings.Index(token, ":")
	if first < 0 || first+1 >= len(token) {
		return "index"
	}
	rest := token[first+1:]
	last := strings.LastIndex(rest, ":")
	if last < 0 {
		return "index"
	}
	module := strings.TrimSpace(rest[:last])
	if module == "" {
		return "index"
	}
	return module
}

func resourceClassNameFromToken(token string, used map[string]int) string {
	base := sanitizeTypeName(toDartClassName(tokenElementName(token)))
	return claimUniqueTypeName(base, used)
}

func functionNameFromToken(token string, used map[string]int) string {
	base := tokenElementName(token)
	if base == "" {
		base = "invoke"
	}

	classLike := toDartClassName(base)
	if classLike == "" {
		classLike = "Invoke"
	}

	runes := []rune(classLike)
	if len(runes) > 0 && runes[0] >= 'A' && runes[0] <= 'Z' {
		runes[0] = runes[0] - 'A' + 'a'
	}
	candidate := string(runes)
	if candidate == "" {
		candidate = "invoke"
	}

	for suffix := 2; ; suffix++ {
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
		candidate = fmt.Sprintf("%s%d", string(runes), suffix)
	}
}

func propertyTypeSpec(property packagePropertySpec) packageTypeSpec {
	if property.TypeSpec.DartType != "" {
		return property.TypeSpec
	}
	if property.DartType != "" {
		kind := "scalar"
		if property.DartType == "dynamic" {
			kind = "dynamic"
		}
		return makePackageTypeSpec(kind, property.DartType)
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func propertyBaseDartType(property packagePropertySpec) string {
	return propertyTypeSpec(property).DartType
}

func nullableDartType(base string, required bool) string {
	if required || base == "dynamic" {
		return base
	}
	return base + "?"
}

func objectClassPropertyDartType(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	base := propertyBaseDartType(property)
	if objectClass.UsesInputTypes {
		typed := fmt.Sprintf("Input<%s>", base)
		if property.Required {
			return typed
		}
		return typed + "?"
	}
	return nullableDartType(base, property.Required)
}

func typeSpecElement(typeSpec packageTypeSpec) packageTypeSpec {
	if typeSpec.ElementType != nil {
		return *typeSpec.ElementType
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func typeSpecNeedsDecodeConversion(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return typeSpecNeedsDecodeConversion(typeSpecElement(typeSpec))
	default:
		return false
	}
}

func typeSpecNeedsEncodeConversion(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return typeSpecNeedsEncodeConversion(typeSpecElement(typeSpec))
	default:
		return false
	}
}

func typeSpecWireDartType(typeSpec packageTypeSpec) string {
	switch typeSpec.Kind {
	case "enum":
		if typeSpec.ReferenceWireType != "" {
			return typeSpec.ReferenceWireType
		}
	case "object":
		if typeSpec.ReferenceType != "" {
			return "Map<String, dynamic>"
		}
		return "Map<String, dynamic>"
	case "array":
		element := typeSpecElement(typeSpec)
		return fmt.Sprintf("List<%s>", typeSpecWireDartType(element))
	case "map":
		element := typeSpecElement(typeSpec)
		return fmt.Sprintf("Map<String, %s>", typeSpecWireDartType(element))
	}
	if typeSpec.DartType != "" {
		return typeSpec.DartType
	}
	return "dynamic"
}

func typeSpecDecodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		return fmt.Sprintf("%s.fromValue(%s as %s)", typeSpec.ReferenceType, sourceExpr, wireType)
	case "object":
		if typeSpec.ReferenceType == "" {
			return fmt.Sprintf("(%s as Map).cast<String, dynamic>()", sourceExpr)
		}
		return fmt.Sprintf("%s.fromMap((%s as Map).cast<String, dynamic>())", typeSpec.ReferenceType, sourceExpr)
	case "array":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsDecodeConversion(element) {
			return fmt.Sprintf(
				"Input.decodeList<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				typeSpecDecodeExpression(element, "value"),
			)
		}
		return fmt.Sprintf("(%s as List).cast<%s>()", sourceExpr, element.DartType)
	case "map":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsDecodeConversion(element) {
			return fmt.Sprintf(
				"Input.decodeMapValues<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				typeSpecDecodeExpression(element, "value"),
			)
		}
		return fmt.Sprintf("(%s as Map).cast<String, %s>()", sourceExpr, element.DartType)
	case "dynamic":
		return sourceExpr
	default:
		target := typeSpec.DartType
		if target == "" || target == "dynamic" {
			return sourceExpr
		}
		return fmt.Sprintf("%s as %s", sourceExpr, target)
	}
}

func typeSpecEncodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		return fmt.Sprintf("%s.value", sourceExpr)
	case "object":
		if typeSpec.ReferenceType == "" {
			return sourceExpr
		}
		return fmt.Sprintf("%s.toMap()", sourceExpr)
	case "array":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"Input.encodeList<%s, %s>(%s, (value) => %s)",
				element.DartType,
				typeSpecWireDartType(element),
				sourceExpr,
				typeSpecEncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	case "map":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"Input.encodeMapValues<%s, %s>(%s, (value) => %s)",
				element.DartType,
				typeSpecWireDartType(element),
				sourceExpr,
				typeSpecEncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	default:
		return sourceExpr
	}
}

func typeSpecNeedsDecodeListHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeConversion(element) || typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsDecodeMapHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeConversion(element) || typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsEncodeListHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeConversion(element) || typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsEncodeMapHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeConversion(element) || typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	default:
		return false
	}
}

func objectClassFromMapExpression(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	base := propertyBaseDartType(property)
	if objectClass.UsesInputTypes {
		if property.Required {
			return fmt.Sprintf("Input.asInput<%s>(map['%s'])", base, property.Name)
		}
		return fmt.Sprintf("Input.asOptionalInput<%s>(map['%s'])", base, property.Name)
	}

	sourceExpr := fmt.Sprintf("map['%s']", property.Name)
	typeSpec := propertyTypeSpec(property)
	decodedExpr := typeSpecDecodeExpression(typeSpec, sourceExpr)
	if property.Required {
		return decodedExpr
	}
	return fmt.Sprintf("%s == null ? null : %s", sourceExpr, decodedExpr)
}

func objectClassToMapExpressionFromSource(objectClass packageObjectClassSpec, property packagePropertySpec, sourceExpr string) string {
	typeSpec := propertyTypeSpec(property)
	if objectClass.UsesInputTypes {
		if typeSpecNeedsEncodeConversion(typeSpec) {
			if property.Required {
				return fmt.Sprintf(
					"Input.mapInputValue<%s, %s>(%s, (value) => %s)",
					typeSpec.DartType,
					typeSpecWireDartType(typeSpec),
					sourceExpr,
					typeSpecEncodeExpression(typeSpec, "value"),
				)
			}
			return fmt.Sprintf(
				"Input.mapOptionalInputValue<%s, %s>(%s, (value) => %s)",
				typeSpec.DartType,
				typeSpecWireDartType(typeSpec),
				sourceExpr,
				typeSpecEncodeExpression(typeSpec, "value"),
			)
		}
		return sourceExpr
	}

	if typeSpecNeedsEncodeConversion(typeSpec) {
		return typeSpecEncodeExpression(typeSpec, sourceExpr)
	}
	return sourceExpr
}

func objectClassToMapExpression(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	return objectClassToMapExpressionFromSource(objectClass, property, property.FieldName)
}

func resourceOutputValueType(property packagePropertySpec) string {
	return nullableDartType(propertyBaseDartType(property), property.Required)
}

func configPropertyGetterType(property packagePropertySpec) string {
	base := propertyBaseDartType(property)
	if base == "dynamic" {
		return "dynamic"
	}
	return base + "?"
}

func configTypeRequiresJSONDecode(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array", "map":
		return true
	case "object":
		return true
	default:
		return false
	}
}

func configTypeNeedsIntParser(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "scalar":
		return typeSpec.DartType == "int"
	case "enum":
		return typeSpec.ReferenceWireType == "int"
	default:
		return false
	}
}

func configTypeNeedsDoubleParser(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "scalar":
		return typeSpec.DartType == "double"
	case "enum":
		return typeSpec.ReferenceWireType == "double"
	default:
		return false
	}
}

func configTypeNeedsBoolParser(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "scalar":
		return typeSpec.DartType == "bool"
	case "enum":
		return typeSpec.ReferenceWireType == "bool"
	default:
		return false
	}
}

func configPropertyParseExpression(property packagePropertySpec, rawExpr string) string {
	typeSpec := propertyTypeSpec(property)
	if configTypeRequiresJSONDecode(typeSpec) {
		return fmt.Sprintf(
			"%s == null ? null : %s",
			rawExpr,
			typeSpecDecodeExpression(typeSpec, fmt.Sprintf("jsonDecode(%s)", rawExpr)),
		)
	}

	if typeSpec.Kind == "enum" {
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		parseWire := rawExpr
		switch wireType {
		case "int":
			parseWire = fmt.Sprintf("_parseIntConfig(%s)", rawExpr)
		case "double":
			parseWire = fmt.Sprintf("_parseDoubleConfig(%s)", rawExpr)
		case "bool":
			parseWire = fmt.Sprintf("_parseBoolConfig(%s)", rawExpr)
		}
		return fmt.Sprintf(
			"%s == null ? null : %s.fromValue(%s as %s)",
			parseWire,
			typeSpec.ReferenceType,
			parseWire,
			wireType,
		)
	}

	switch typeSpec.DartType {
	case "String":
		return rawExpr
	case "int":
		return fmt.Sprintf("_parseIntConfig(%s)", rawExpr)
	case "double":
		return fmt.Sprintf("_parseDoubleConfig(%s)", rawExpr)
	case "bool":
		return fmt.Sprintf("_parseBoolConfig(%s)", rawExpr)
	default:
		return rawExpr
	}
}

func writeGeneratedConfigClass(b *strings.Builder, configSpec packageConfigSpec) {
	writeDartDocComment(b, "", configSpec.Comment)
	fmt.Fprintf(b, "class %s {\n", configSpec.ClassName)
	fmt.Fprintf(b, "  const %s();\n\n", configSpec.ClassName)
	b.WriteString(
		"  String? _raw(String key) {\n" +
			"    final deployment = Deployment.instance;\n" +
			"    return deployment.getConfig(key);\n" +
			"  }\n\n",
	)
	b.WriteString(
		"  bool _isSecret(String key) {\n" +
			"    final deployment = Deployment.instance;\n" +
			"    return deployment.isConfigSecret(key);\n" +
			"  }\n\n",
	)

	for _, property := range configSpec.Properties {
		writeDartDocComment(b, "  ", property.Comment)
		getterType := configPropertyGetterType(property)
		fmt.Fprintf(b, "  %s get %s {\n", getterType, property.FieldName)
		fmt.Fprintf(b, "    final raw = _raw('%s');\n", property.Name)
		fmt.Fprintf(b, "    return %s;\n", configPropertyParseExpression(property, "raw"))
		b.WriteString("  }\n\n")

		if property.Required {
			methodName := "require" + toDartClassName(property.FieldName)
			returnType := propertyBaseDartType(property)
			fmt.Fprintf(b, "  %s %s() {\n", returnType, methodName)
			fmt.Fprintf(b, "    final value = %s;\n", property.FieldName)
			fmt.Fprintf(
				b,
				"    if (value == null) {\n      throw ArgumentError(\"Missing required config value '%s'.\");\n    }\n",
				property.Name,
			)
			b.WriteString("    return value;\n")
			b.WriteString("  }\n\n")
		}

		fmt.Fprintf(b, "  bool get %sIsSecret => _isSecret('%s');\n\n", property.FieldName, property.Name)
	}

	b.WriteString("}\n\n")
	b.WriteString(fmt.Sprintf("final config = %s();\n\n", configSpec.ClassName))
}

func writeDartDocComment(b *strings.Builder, indent, comment string) {
	// Normalize CRLF/CR from upstream docs to avoid embedding raw carriage
	// returns that can break Dart parser/formatter behavior.
	comment = strings.ReplaceAll(comment, "\r", "")
	comment = strings.TrimSpace(comment)
	if comment == "" {
		return
	}

	for _, rawLine := range strings.Split(comment, "\n") {
		line := strings.TrimSpace(rawLine)
		if line == "" {
			fmt.Fprintf(b, "%s///\n", indent)
			continue
		}
		fmt.Fprintf(b, "%s/// %s\n", indent, line)
	}
}

func writeGeneratedEnumClass(b *strings.Builder, enumSpec packageEnumSpec) {
	writeDartDocComment(b, "", enumSpec.Comment)
	fmt.Fprintf(b, "enum %s {\n", enumSpec.EnumName)
	for i, enumValue := range enumSpec.Values {
		suffix := ","
		if i == len(enumSpec.Values)-1 {
			suffix = ";"
		}
		writeDartDocComment(b, "  ", enumValue.Comment)
		fmt.Fprintf(b, "  %s(%s)%s\n", enumValue.Name, enumValue.Literal, suffix)
	}
	b.WriteString("\n")
	fmt.Fprintf(b, "  const %s(this.value);\n", enumSpec.EnumName)
	fmt.Fprintf(b, "  final %s value;\n\n", enumSpec.UnderlyingType)
	fmt.Fprintf(
		b,
		"  static %s fromValue(%s value) {\n    for (final item in %s.values) {\n      if (item.value == value) {\n        return item;\n      }\n    }\n    throw ArgumentError('Unknown %s value: $value');\n  }\n",
		enumSpec.EnumName,
		enumSpec.UnderlyingType,
		enumSpec.EnumName,
		enumSpec.EnumName,
	)
	b.WriteString("}\n\n")
}

func writeGeneratedObjectClass(b *strings.Builder, objectClass packageObjectClassSpec) {
	writeDartDocComment(b, "", objectClass.Comment)
	fmt.Fprintf(b, "class %s {\n", objectClass.ClassName)
	for _, property := range objectClass.Properties {
		writeDartDocComment(b, "  ", property.Comment)
		fmt.Fprintf(
			b,
			"  final %s %s;\n",
			objectClassPropertyDartType(objectClass, property),
			property.FieldName,
		)
	}

	if len(objectClass.Properties) == 0 {
		fmt.Fprintf(b, "\n  %s();\n\n", objectClass.ClassName)
	} else {
		fmt.Fprintf(b, "\n  %s({\n", objectClass.ClassName)
		for _, property := range objectClass.Properties {
			if property.Required {
				fmt.Fprintf(b, "    required this.%s,\n", property.FieldName)
			} else {
				fmt.Fprintf(b, "    this.%s,\n", property.FieldName)
			}
		}
		b.WriteString("  });\n\n")
	}

	b.WriteString("  Map<String, dynamic> toMap() {\n")
	b.WriteString("    final map = <String, dynamic>{};\n")
	for _, property := range objectClass.Properties {
		if property.Required {
			fmt.Fprintf(
				b,
				"    map['%s'] = %s;\n",
				property.Name,
				objectClassToMapExpression(objectClass, property),
			)
		} else {
			valueName := property.FieldName + "Value"
			fmt.Fprintf(
				b,
				"    final %s = %s;\n    if (%s != null) {\n      map['%s'] = %s;\n    }\n",
				valueName,
				property.FieldName,
				valueName,
				property.Name,
				objectClassToMapExpressionFromSource(objectClass, property, valueName),
			)
		}
	}
	b.WriteString("    return map;\n")
	b.WriteString("  }\n\n")

	fmt.Fprintf(b, "  factory %s.fromMap(Map<String, dynamic> map) {\n", objectClass.ClassName)
	fmt.Fprintf(b, "    return %s(\n", objectClass.ClassName)
	for _, property := range objectClass.Properties {
		fmt.Fprintf(
			b,
			"      %s: %s,\n",
			property.FieldName,
			objectClassFromMapExpression(objectClass, property),
		)
	}
	b.WriteString("    );\n")
	b.WriteString("  }\n")
	b.WriteString("}\n\n")
}

func generatedPackageLibrary(spec *packageSchema, packageName string) []byte {
	var b strings.Builder
	fmt.Fprintf(&b, "library %s;\n\n", packageName)
	b.WriteString("import 'package:pulumi/pulumi.dart';\n\n")

	resourceTokens := make([]string, 0, len(spec.Resources))
	for token := range spec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)
	functionTokens := make([]string, 0, len(spec.Functions))
	for token := range spec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)
	hasPackageRegistration := spec.Parameterization != nil &&
		spec.Parameterization.PluginName != "" &&
		spec.Parameterization.PluginVersion != "" &&
		spec.Parameterization.PackageVersion != ""
	usesDeploymentModels := len(functionTokens) > 0 || hasPackageRegistration
	hasConfig := spec.Config != nil
	configNeedsJSONDecode := false
	configNeedsIntParser := false
	configNeedsDoubleParser := false
	configNeedsBoolParser := false
	hasTypedInputObjects := false
	hasInputReferenceMappings := false
	needsDecodeListHelper := false
	needsDecodeMapHelper := false
	needsEncodeListHelper := false
	needsEncodeMapHelper := false
	for _, objectClass := range spec.ObjectClasses {
		if objectClass.UsesInputTypes {
			hasTypedInputObjects = true
		}
		for _, property := range objectClass.Properties {
			typeSpec := propertyTypeSpec(property)
			if objectClass.UsesInputTypes && typeSpecNeedsEncodeConversion(typeSpec) {
				hasInputReferenceMappings = true
			}
			if typeSpecNeedsDecodeListHelper(typeSpec) {
				needsDecodeListHelper = true
			}
			if typeSpecNeedsDecodeMapHelper(typeSpec) {
				needsDecodeMapHelper = true
			}
			if typeSpecNeedsEncodeListHelper(typeSpec) {
				needsEncodeListHelper = true
			}
			if typeSpecNeedsEncodeMapHelper(typeSpec) {
				needsEncodeMapHelper = true
			}
		}
	}
	if hasConfig {
		for _, property := range spec.Config.Properties {
			typeSpec := propertyTypeSpec(property)
			if configTypeRequiresJSONDecode(typeSpec) {
				configNeedsJSONDecode = true
			}
			if configTypeNeedsIntParser(typeSpec) {
				configNeedsIntParser = true
			}
			if configTypeNeedsDoubleParser(typeSpec) {
				configNeedsDoubleParser = true
			}
			if configTypeNeedsBoolParser(typeSpec) {
				configNeedsBoolParser = true
			}
			if typeSpecNeedsDecodeListHelper(typeSpec) {
				needsDecodeListHelper = true
			}
			if typeSpecNeedsDecodeMapHelper(typeSpec) {
				needsDecodeMapHelper = true
			}
		}
	}
	if configNeedsJSONDecode {
		b.WriteString("import 'dart:convert';\n\n")
	}

	if usesDeploymentModels {
		b.WriteString("import 'package:pulumi/src/deployment/models.dart' as deployment_models;\n\n")
	}

	if len(resourceTokens) > 0 {
		b.WriteString(`Inputs _mapToInputs(Map<String, dynamic> args) {
  final mapped = <String, Input<dynamic>>{};
  for (final entry in args.entries) {
    final value = entry.value;
    if (value is Input<dynamic>) {
      mapped[entry.key] = value;
    } else {
      mapped[entry.key] = Input.fromValue(value);
    }
  }
  return mapped;
}

`)
	}

	if hasTypedInputObjects {
		b.WriteString(`Input<T> _asInput<T>(dynamic value) {
  if (value is Input<T>) {
    return value;
  }
  return Input.fromValue(value as T);
}

Input<T>? _asOptionalInput<T>(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is Input<T>) {
    return value;
  }
  return Input.fromValue(value as T);
}

`)
	}

	if hasInputReferenceMappings {
		b.WriteString(`Input<U> _mapInputValue<T, U>(Input<T> input, U Function(T value) mapper) {
  return Input.fromOutput(input.toOutput().apply((value) => mapper(value as T)));
}

Input<U>? _mapOptionalInputValue<T, U>(Input<T>? input, U Function(T value) mapper) {
  if (input == null) {
    return null;
  }
  return _mapInputValue<T, U>(input, mapper);
}

`)
	}

	if needsDecodeListHelper {
		b.WriteString(`List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

`)
	}

	if needsDecodeMapHelper {
		b.WriteString(`Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

`)
	}

	if needsEncodeListHelper {
		b.WriteString(`List<U> _encodeList<T, U>(List<T> value, U Function(T value) encoder) {
  return value.map((item) => encoder(item)).toList(growable: false);
}

`)
	}

	if needsEncodeMapHelper {
		b.WriteString(`Map<String, U> _encodeMapValues<T, U>(Map<String, T> value, U Function(T value) encoder) {
  return value.map((key, item) => MapEntry(key, encoder(item)));
}

`)
	}

	if len(functionTokens) > 0 {
		b.WriteString(`deployment_models.InvokeOptions? _toDeploymentInvokeOptions(InvokeOptions? options) {
  if (options == null) {
    return null;
  }

  return deployment_models.InvokeOptions(
    parent: options.parent,
    provider: options.provider,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
  );
}

`)
	}

	if hasPackageRegistration {
		downloadURLLine := ""
		if spec.Parameterization.DownloadURL != "" {
			downloadURLLine = fmt.Sprintf("\n  downloadUrl: %q,", spec.Parameterization.DownloadURL)
		}
		fmt.Fprintf(
			&b,
			`final deployment_models.RegisterPackageRequest _registerPackageRequest = deployment_models.RegisterPackageRequest(
  name: %q,
  version: %q,%s
  parameterization: deployment_models.Parameterization(
    name: %q,
    version: %q,
    value: %s,
  ),
);

`,
			spec.Parameterization.PluginName,
			spec.Parameterization.PluginVersion,
			downloadURLLine,
			spec.Parameterization.PackageName,
			spec.Parameterization.PackageVersion,
			dartByteListLiteral(spec.Parameterization.Value),
		)
	}

	if len(resourceTokens) == 0 &&
		len(functionTokens) == 0 &&
		!hasConfig &&
		len(spec.Enums) == 0 &&
		len(spec.ObjectClasses) == 0 {
		b.WriteString("// This package schema did not define resources or functions.\n")
		return []byte(b.String())
	}

	if len(spec.Enums) > 0 {
		for _, enumSpec := range spec.Enums {
			writeGeneratedEnumClass(&b, enumSpec)
		}
	}

	if len(spec.ObjectClasses) > 0 {
		for _, objectClass := range spec.ObjectClasses {
			writeGeneratedObjectClass(&b, objectClass)
		}
	}

	if hasConfig && configNeedsIntParser {
		b.WriteString(`int? _parseIntConfig(String? value) {
  if (value == null) {
    return null;
  }
  return int.tryParse(value);
}

`)
	}

	if hasConfig && configNeedsDoubleParser {
		b.WriteString(`double? _parseDoubleConfig(String? value) {
  if (value == null) {
    return null;
  }
  return double.tryParse(value);
}

`)
	}

	if hasConfig && configNeedsBoolParser {
		b.WriteString(`bool? _parseBoolConfig(String? value) {
  if (value == null) {
    return null;
  }

  switch (value.toLowerCase()) {
    case 'true':
    case '1':
      return true;
    case 'false':
    case '0':
      return false;
    default:
      return null;
  }
}

`)
	}

	if hasConfig {
		writeGeneratedConfigClass(&b, *spec.Config)
	}

	usedClassNames := map[string]int{}
	resourceRegisterPackageArg := ""
	if hasPackageRegistration {
		resourceRegisterPackageArg = ",\n          registerPackageRequest: _registerPackageRequest"
	}
	for _, token := range resourceTokens {
		resource := spec.Resources[token]
		className := resourceClassNameFromToken(token, usedClassNames)
		writeDartDocComment(&b, "", resource.Comment)

		if resource.IsComponent {
			fmt.Fprintf(&b, "class %s extends ComponentResource {\n", className)
			for _, property := range resource.OutputProperties {
				writeDartDocComment(&b, "  ", property.Comment)
				fmt.Fprintf(
					&b,
					"  late final Output<%s> %s;\n",
					resourceOutputValueType(property),
					property.FieldName,
				)
			}
			if len(resource.OutputProperties) > 0 {
				b.WriteString("\n")
			}

			signature := "  %s(\n    String name, {\n    ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          null,\n          options ?? ComponentResourceOptions(),\n        )"
			if resource.ArgsClass != "" {
				signature = "  %s(\n    String name, {\n    %s? args,\n    ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? ComponentResourceOptions(),\n        )"
				fmt.Fprintf(&b, signature, className, resource.ArgsClass, token)
			} else {
				fmt.Fprintf(&b, signature, className, token)
			}

			if len(resource.OutputProperties) == 0 {
				b.WriteString(";\n}\n\n")
			} else {
				b.WriteString(" {\n")
				for _, property := range resource.OutputProperties {
					fmt.Fprintf(
						&b,
						"    this.%s = registerOutput<%s>('%s');\n",
						property.FieldName,
						resourceOutputValueType(property),
						property.Name,
					)
				}
				b.WriteString("  }\n}\n\n")
			}
			continue
		}

		fmt.Fprintf(&b, "class %s extends CustomResource {\n", className)
		for _, property := range resource.OutputProperties {
			writeDartDocComment(&b, "  ", property.Comment)
			fmt.Fprintf(
				&b,
				"  late final Output<%s> %s;\n",
				resourceOutputValueType(property),
				property.FieldName,
			)
		}
		if len(resource.OutputProperties) > 0 {
			b.WriteString("\n")
		}
		if resource.ArgsClass != "" {
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    %s? args,\n    CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? CustomResourceOptions()%s,\n        )",
				className,
				resource.ArgsClass,
				token,
				resourceRegisterPackageArg,
			)
		} else {
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          _mapToInputs(args ?? const {}),\n          options ?? CustomResourceOptions()%s,\n        )",
				className,
				token,
				resourceRegisterPackageArg,
			)
		}
		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n}\n\n")
			continue
		}
		b.WriteString(" {\n")
		for _, property := range resource.OutputProperties {
			fmt.Fprintf(
				&b,
				"    this.%s = registerOutput<%s>('%s');\n",
				property.FieldName,
				resourceOutputValueType(property),
				property.Name,
			)
		}
		b.WriteString("  }\n}\n\n")
	}

	usedFunctionNames := map[string]int{}
	invokeRegisterPackageArg := ""
	if hasPackageRegistration {
		invokeRegisterPackageArg = ",\n    registerPackageRequest: _registerPackageRequest"
	}
	for _, token := range functionTokens {
		funcName := functionNameFromToken(token, usedFunctionNames)
		function := spec.Functions[token]
		writeDartDocComment(&b, "", function.Comment)

		signatureArgs := "Map<String, dynamic> args, {\n  InvokeOptions? options,\n"
		invokeArgs := "args"
		if function.ArgsClass != "" {
			signatureArgs = fmt.Sprintf("%s args, {\n  InvokeOptions? options,\n", function.ArgsClass)
			invokeArgs = "args.toMap()"
		} else if !function.HasArgs {
			signatureArgs = "{\n  InvokeOptions? options,\n"
			invokeArgs = "const <String, dynamic>{}"
		}

		if function.ResultClass != "" {
			fmt.Fprintf(
				&b,
				"Future<%s> %s(\n  %s}) async {\n  final deployment = Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n\n",
				function.ResultClass,
				funcName,
				signatureArgs,
				token,
				invokeArgs,
				invokeRegisterPackageArg,
				function.ResultClass,
			)
			continue
		}

		fmt.Fprintf(
			&b,
			"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n}\n\n",
			funcName,
			signatureArgs,
			token,
			invokeArgs,
			invokeRegisterPackageArg,
		)
	}

	return []byte(b.String())
}

func toSnakeCaseIdentifier(value string) string {
	if value == "" {
		return "generated"
	}

	var out []rune
	var prev rune
	for i, r := range value {
		isUpper := r >= 'A' && r <= 'Z'
		isLower := r >= 'a' && r <= 'z'
		isDigit := r >= '0' && r <= '9'
		if isUpper {
			if i > 0 && (prev >= 'a' && prev <= 'z' || prev >= '0' && prev <= '9') {
				out = append(out, '_')
			}
			out = append(out, r-'A'+'a')
		} else if isLower || isDigit {
			out = append(out, r)
		} else if len(out) > 0 && out[len(out)-1] != '_' {
			out = append(out, '_')
		}
		prev = r
	}

	result := strings.Trim(strings.TrimSpace(string(out)), "_")
	if result == "" {
		return "generated"
	}
	return result
}

func collectReferenceTypes(typeSpec packageTypeSpec, refs map[string]struct{}) {
	if typeSpec.ReferenceType != "" {
		refs[typeSpec.ReferenceType] = struct{}{}
	}
	if typeSpec.ElementType != nil {
		collectReferenceTypes(*typeSpec.ElementType, refs)
	}
}

func referencedTypesFromProperties(properties []packagePropertySpec) []string {
	refs := map[string]struct{}{}
	for _, property := range properties {
		collectReferenceTypes(property.TypeSpec, refs)
	}
	names := make([]string, 0, len(refs))
	for name := range refs {
		names = append(names, name)
	}
	sort.Strings(names)
	return names
}

func objectClassNeedsObjectHelpers(objectClass packageObjectClassSpec) bool {
	if objectClass.UsesInputTypes {
		return true
	}
	for _, property := range objectClass.Properties {
		typeSpec := propertyTypeSpec(property)
		if typeSpecNeedsDecodeListHelper(typeSpec) || typeSpecNeedsDecodeMapHelper(typeSpec) {
			return true
		}
		if typeSpecNeedsEncodeListHelper(typeSpec) || typeSpecNeedsEncodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}

func configNeedsObjectHelpers(configSpec packageConfigSpec) bool {
	for _, property := range configSpec.Properties {
		typeSpec := propertyTypeSpec(property)
		if typeSpecNeedsDecodeListHelper(typeSpec) || typeSpecNeedsDecodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}

func normalizedModulePath(modulePath string) string {
	path := strings.TrimSpace(filepath.ToSlash(modulePath))
	if path == "" {
		return ""
	}

	parts := strings.Split(path, "/")
	normalized := make([]string, 0, len(parts))
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			continue
		}
		normalized = append(normalized, toSnakeCaseIdentifier(part))
	}
	return strings.Join(normalized, "/")
}

func moduleClassFilePath(modulePath, className string) string {
	fileName := toSnakeCaseIdentifier(className) + ".dart"
	normalizedModule := normalizedModulePath(modulePath)
	if normalizedModule == "" {
		return fileName
	}
	return filepath.ToSlash(filepath.Join(filepath.FromSlash(normalizedModule), fileName))
}

func uniqueGeneratedFilePath(filePath string, used map[string]int) string {
	count := used[filePath]
	used[filePath] = count + 1
	if count == 0 {
		return filePath
	}
	ext := filepath.Ext(filePath)
	base := strings.TrimSuffix(filePath, ext)
	return fmt.Sprintf("%s_%d%s", base, count+1, ext)
}

func relativeDartImportPath(fromFilePath, toFilePath string) string {
	fromDir := filepath.Dir(filepath.FromSlash(fromFilePath))
	toPath := filepath.FromSlash(toFilePath)
	rel, err := filepath.Rel(fromDir, toPath)
	if err != nil {
		return filepath.ToSlash(toFilePath)
	}
	return filepath.ToSlash(rel)
}

func generatedObjectClassFile(
	objectClass packageObjectClassSpec,
	filePath string,
	typeFiles map[string]string,
) []byte {
	var b strings.Builder
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")
	if objectClass.UsesInputTypes || objectClassNeedsObjectHelpers(objectClass) {
		b.WriteString("import 'package:pulumi/pulumi.dart';\n")
	}

	imports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(objectClass.Properties) {
		if ref == objectClass.ClassName {
			continue
		}
		if path, ok := typeFiles[ref]; ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	b.WriteString("\n")

	writeGeneratedObjectClass(&b, objectClass)
	return []byte(b.String())
}

func generatedEnumFile(enumSpec packageEnumSpec) []byte {
	var b strings.Builder
	writeGeneratedEnumClass(&b, enumSpec)
	return []byte(b.String())
}

func generatedResourceFile(
	token string,
	resource packageResourceSpec,
	className string,
	filePath string,
	hasPackageRegistration bool,
	typeFiles map[string]string,
	registrationFilePath string,
) []byte {
	var b strings.Builder
	b.WriteString("import 'package:pulumi/pulumi.dart';\n")

	imports := map[string]struct{}{}
	if resource.ArgsClass != "" {
		if path, ok := typeFiles[resource.ArgsClass]; ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	for _, ref := range referencedTypesFromProperties(resource.OutputProperties) {
		if path, ok := typeFiles[ref]; ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	if hasPackageRegistration && !resource.IsComponent {
		fmt.Fprintf(&b, "import '%s' as package_registration;\n", relativeDartImportPath(filePath, registrationFilePath))
	}
	b.WriteString("\n")

	writeDartDocComment(&b, "", resource.Comment)
	if resource.IsComponent {
		fmt.Fprintf(&b, "class %s extends ComponentResource {\n", className)
		for _, property := range resource.OutputProperties {
			writeDartDocComment(&b, "  ", property.Comment)
			fmt.Fprintf(
				&b,
				"  late final Output<%s> %s;\n",
				resourceOutputValueType(property),
				property.FieldName,
			)
		}
		if len(resource.OutputProperties) > 0 {
			b.WriteString("\n")
		}

		signature := "  %s(\n    String name, {\n    ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          null,\n          options ?? ComponentResourceOptions(),\n        )"
		if resource.ArgsClass != "" {
			signature = "  %s(\n    String name, {\n    %s? args,\n    ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? ComponentResourceOptions(),\n        )"
			fmt.Fprintf(&b, signature, className, resource.ArgsClass, token)
		} else {
			fmt.Fprintf(&b, signature, className, token)
		}

		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n}\n")
		} else {
			b.WriteString(" {\n")
			for _, property := range resource.OutputProperties {
				fmt.Fprintf(
					&b,
					"    this.%s = registerOutput<%s>('%s');\n",
					property.FieldName,
					resourceOutputValueType(property),
					property.Name,
				)
			}
			b.WriteString("  }\n}\n")
		}
		return []byte(b.String())
	}

	fmt.Fprintf(&b, "class %s extends CustomResource {\n", className)
	for _, property := range resource.OutputProperties {
		writeDartDocComment(&b, "  ", property.Comment)
		fmt.Fprintf(
			&b,
			"  late final Output<%s> %s;\n",
			resourceOutputValueType(property),
			property.FieldName,
		)
	}
	if len(resource.OutputProperties) > 0 {
		b.WriteString("\n")
	}

	resourceRegisterPackageArg := ""
	if hasPackageRegistration {
		resourceRegisterPackageArg = ",\n          registerPackageRequest: package_registration.registerPackageRequest"
	}

	if resource.ArgsClass != "" {
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    %s? args,\n    CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? CustomResourceOptions()%s,\n        )",
			className,
			resource.ArgsClass,
			token,
			resourceRegisterPackageArg,
		)
	} else {
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          Input.mapToInputs(args ?? const {}),\n          options ?? CustomResourceOptions()%s,\n        )",
			className,
			token,
			resourceRegisterPackageArg,
		)
	}
	if len(resource.OutputProperties) == 0 {
		b.WriteString(";\n}\n")
		return []byte(b.String())
	}
	b.WriteString(" {\n")
	for _, property := range resource.OutputProperties {
		fmt.Fprintf(
			&b,
			"    this.%s = registerOutput<%s>('%s');\n",
			property.FieldName,
			resourceOutputValueType(property),
			property.Name,
		)
	}
	b.WriteString("  }\n}\n")
	return []byte(b.String())
}

func generatedFunctionFile(
	token string,
	function packageFunctionSpec,
	funcName string,
	filePath string,
	hasPackageRegistration bool,
	typeFiles map[string]string,
	registrationFilePath string,
) []byte {
	var b strings.Builder
	b.WriteString("import 'package:pulumi/pulumi.dart';\n")

	imports := map[string]struct{}{}
	if function.ArgsClass != "" {
		if path, ok := typeFiles[function.ArgsClass]; ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	if function.ResultClass != "" {
		if path, ok := typeFiles[function.ResultClass]; ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	if hasPackageRegistration {
		fmt.Fprintf(&b, "import '%s' as package_registration;\n", relativeDartImportPath(filePath, registrationFilePath))
	}
	b.WriteString("\n")

	invokeRegisterPackageArg := ""
	if hasPackageRegistration {
		invokeRegisterPackageArg = ",\n    registerPackageRequest: package_registration.registerPackageRequest"
	}

	writeDartDocComment(&b, "", function.Comment)
	signatureArgs := "Map<String, dynamic> args, {\n  InvokeOptions? options,\n"
	invokeArgs := "args"
	if function.ArgsClass != "" {
		signatureArgs = fmt.Sprintf("%s args, {\n  InvokeOptions? options,\n", function.ArgsClass)
		invokeArgs = "args.toMap()"
	} else if !function.HasArgs {
		signatureArgs = "{\n  InvokeOptions? options,\n"
		invokeArgs = "const <String, dynamic>{}"
	}

	if function.ResultClass != "" {
		fmt.Fprintf(
			&b,
			"Future<%s> %s(\n  %s}) async {\n  final deployment = Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n",
			function.ResultClass,
			funcName,
			signatureArgs,
			token,
			invokeArgs,
			invokeRegisterPackageArg,
			function.ResultClass,
		)
		return []byte(b.String())
	}

	fmt.Fprintf(
		&b,
		"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: toDeploymentInvokeOptions(options)%s,\n  );\n}\n",
		funcName,
		signatureArgs,
		token,
		invokeArgs,
		invokeRegisterPackageArg,
	)
	return []byte(b.String())
}

func generatedConfigFile(spec *packageSchema, packageName string, filePath string, typeFiles map[string]string) []byte {
	if spec.Config == nil {
		return nil
	}

	var b strings.Builder
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")

	configNeedsJSONDecode := false
	for _, property := range spec.Config.Properties {
		if configTypeRequiresJSONDecode(propertyTypeSpec(property)) {
			configNeedsJSONDecode = true
			break
		}
	}
	if configNeedsJSONDecode {
		b.WriteString("import 'dart:convert';\n")
	}
	b.WriteString("import 'package:pulumi/pulumi.dart';\n")

	imports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(spec.Config.Properties) {
		if path, ok := typeFiles[ref]; ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	b.WriteString("\n")

	b.WriteString(`int? _parseIntConfig(String? value) {
  if (value == null) {
    return null;
  }
  return int.tryParse(value);
}

double? _parseDoubleConfig(String? value) {
  if (value == null) {
    return null;
  }
  return double.tryParse(value);
}

bool? _parseBoolConfig(String? value) {
  if (value == null) {
    return null;
  }

  switch (value.toLowerCase()) {
    case 'true':
    case '1':
      return true;
    case 'false':
    case '0':
      return false;
    default:
      return null;
  }
}

`)

	writeGeneratedConfigClass(&b, *spec.Config)
	return []byte(b.String())
}

func generatedPackageRegistrationFile(parameterization *packageParameterizationSpec) []byte {
	if parameterization == nil ||
		parameterization.PluginName == "" ||
		parameterization.PluginVersion == "" ||
		parameterization.PackageVersion == "" {
		return nil
	}

	downloadURLLine := ""
	if parameterization.DownloadURL != "" {
		downloadURLLine = fmt.Sprintf("\n  downloadUrl: %q,", parameterization.DownloadURL)
	}

	return []byte(fmt.Sprintf(
		`import 'package:pulumi/src/deployment/models.dart' as deployment_models;

final registerPackageRequest = deployment_models.RegisterPackageRequest(
  name: %q,
  version: %q,%s
  parameterization: deployment_models.Parameterization(
    name: %q,
    version: %q,
    value: %s,
  ),
);
`,
		parameterization.PluginName,
		parameterization.PluginVersion,
		downloadURLLine,
		parameterization.PackageName,
		parameterization.PackageVersion,
		dartByteListLiteral(parameterization.Value),
	))
}

func generatedPackageSources(spec *packageSchema, packageName, sdkLibraryName string) map[string][]byte {
	files := map[string][]byte{}

	_ = packageName
	typeFiles := map[string]string{}
	typeExports := make([]string, 0, len(spec.Enums)+len(spec.ObjectClasses))
	usedPaths := map[string]int{
		"sdk.dart": 1,
	}

	registrationFilePath := "internal/package_registration.dart"

	for _, enumSpec := range spec.Enums {
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(enumSpec.ModulePath, enumSpec.EnumName), usedPaths)
		typeFiles[enumSpec.EnumName] = filePath
	}
	for _, objectClass := range spec.ObjectClasses {
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(objectClass.ModulePath, objectClass.ClassName), usedPaths)
		typeFiles[objectClass.ClassName] = filePath
	}

	for _, enumSpec := range spec.Enums {
		filePath := typeFiles[enumSpec.EnumName]
		typeExports = append(typeExports, filePath)
		files[filePath] = generatedEnumFile(enumSpec)
	}
	for _, objectClass := range spec.ObjectClasses {
		filePath := typeFiles[objectClass.ClassName]
		typeExports = append(typeExports, filePath)
		files[filePath] = generatedObjectClassFile(objectClass, filePath, typeFiles)
	}

	sort.Strings(typeExports)
	moduleSymbolFiles := make([]string, 0, len(typeExports)+len(spec.Resources)+len(spec.Functions))
	moduleSymbolFiles = append(moduleSymbolFiles, typeExports...)

	resourceTokens := make([]string, 0, len(spec.Resources))
	for token := range spec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)

	usedClassNames := map[string]int{}
	for className := range typeFiles {
		if className != "" {
			usedClassNames[className] = 1
		}
	}
	if spec.Config != nil && spec.Config.ClassName != "" {
		usedClassNames[spec.Config.ClassName] = 1
	}
	resourceExports := make([]string, 0, len(resourceTokens))
	for _, token := range resourceTokens {
		className := resourceClassNameFromToken(token, usedClassNames)
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(tokenModulePath(token), className), usedPaths)
		resourceExports = append(resourceExports, filePath)
		files[filePath] = generatedResourceFile(
			token,
			spec.Resources[token],
			className,
			filePath,
			spec.Parameterization != nil,
			typeFiles,
			registrationFilePath,
		)
	}

	functionTokens := make([]string, 0, len(spec.Functions))
	for token := range spec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)

	usedFunctionNames := map[string]int{}
	functionExports := make([]string, 0, len(functionTokens))
	for _, token := range functionTokens {
		funcName := functionNameFromToken(token, usedFunctionNames)
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(tokenModulePath(token), funcName), usedPaths)
		functionExports = append(functionExports, filePath)
		files[filePath] = generatedFunctionFile(
			token,
			spec.Functions[token],
			funcName,
			filePath,
			spec.Parameterization != nil,
			typeFiles,
			registrationFilePath,
		)
	}

	if configFile := generatedConfigFile(spec, packageName, "config/config.dart", typeFiles); configFile != nil {
		files["config/config.dart"] = configFile
		usedPaths["config/config.dart"] = 1
	}
	if registrationFile := generatedPackageRegistrationFile(spec.Parameterization); registrationFile != nil {
		files[registrationFilePath] = registrationFile
		usedPaths[registrationFilePath] = 1
	}

	var sdk strings.Builder
	fmt.Fprintf(&sdk, "library %s;\n\n", sdkLibraryName)
	for _, exportPath := range typeExports {
		fmt.Fprintf(&sdk, "export '%s';\n", exportPath)
	}
	if spec.Config != nil {
		sdk.WriteString("export 'config/config.dart';\n")
	}
	sort.Strings(resourceExports)
	moduleSymbolFiles = append(moduleSymbolFiles, resourceExports...)
	for _, exportPath := range resourceExports {
		fmt.Fprintf(&sdk, "export '%s';\n", exportPath)
	}
	sort.Strings(functionExports)
	moduleSymbolFiles = append(moduleSymbolFiles, functionExports...)
	for _, exportPath := range functionExports {
		fmt.Fprintf(&sdk, "export '%s';\n", exportPath)
	}
	if len(typeExports) == 0 && len(resourceExports) == 0 && len(functionExports) == 0 && spec.Config == nil {
		sdk.WriteString("// This package schema did not define resources or functions.\n")
	}
	files["sdk.dart"] = []byte(sdk.String())
	for indexPath, indexContent := range generatedModuleIndexFiles(moduleSymbolFiles) {
		files[indexPath] = indexContent
	}

	return files
}

func generatedModuleIndexFiles(symbolFilePaths []string) map[string][]byte {
	if len(symbolFilePaths) == 0 {
		return map[string][]byte{}
	}

	directFilesByDir := map[string]map[string]struct{}{}
	moduleDirs := map[string]struct{}{}
	for _, filePath := range symbolFilePaths {
		normalized := filepath.ToSlash(strings.TrimSpace(filePath))
		if normalized == "" {
			continue
		}
		dir := filepath.ToSlash(filepath.Dir(normalized))
		if dir == "." || dir == "" {
			continue
		}
		moduleDirs[dir] = struct{}{}
		if _, ok := directFilesByDir[dir]; !ok {
			directFilesByDir[dir] = map[string]struct{}{}
		}
		directFilesByDir[dir][filepath.Base(normalized)] = struct{}{}
	}

	// Ensure parent module directories get index files that export child modules.
	for dir := range moduleDirs {
		current := dir
		for {
			parent := filepath.ToSlash(filepath.Dir(current))
			if parent == "." || parent == "" {
				break
			}
			moduleDirs[parent] = struct{}{}
			current = parent
		}
	}

	childDirsByDir := map[string]map[string]struct{}{}
	for dir := range moduleDirs {
		parent := filepath.ToSlash(filepath.Dir(dir))
		if parent == "." || parent == "" {
			continue
		}
		if _, ok := childDirsByDir[parent]; !ok {
			childDirsByDir[parent] = map[string]struct{}{}
		}
		childDirsByDir[parent][filepath.Base(dir)] = struct{}{}
	}

	dirs := make([]string, 0, len(moduleDirs))
	for dir := range moduleDirs {
		dirs = append(dirs, dir)
	}
	sort.Strings(dirs)

	indexFiles := map[string][]byte{}
	for _, dir := range dirs {
		var b strings.Builder
		fmt.Fprintf(&b, "library %s;\n\n", sanitizeDartIdentifier("module_"+strings.ReplaceAll(dir, "/", "_")))

		fileNames := make([]string, 0, len(directFilesByDir[dir]))
		for fileName := range directFilesByDir[dir] {
			if fileName == "index.dart" {
				continue
			}
			fileNames = append(fileNames, fileName)
		}
		sort.Strings(fileNames)
		for _, fileName := range fileNames {
			fmt.Fprintf(&b, "export '%s';\n", fileName)
		}

		childDirs := make([]string, 0, len(childDirsByDir[dir]))
		for childDir := range childDirsByDir[dir] {
			childDirs = append(childDirs, childDir)
		}
		sort.Strings(childDirs)
		for _, childDir := range childDirs {
			fmt.Fprintf(&b, "export '%s/index.dart';\n", childDir)
		}

		if len(fileNames) == 0 && len(childDirs) == 0 {
			b.WriteString("// No symbols generated for this module directory.\n")
		}

		indexFiles[filepath.ToSlash(filepath.Join(dir, "index.dart"))] = []byte(b.String())
	}

	return indexFiles
}

func generatedPublicModuleEntryPoints(packageName string, sdkSources map[string][]byte) map[string][]byte {
	rootModules := map[string]struct{}{}
	for relativePath := range sdkSources {
		normalized := filepath.ToSlash(relativePath)
		if !strings.HasSuffix(normalized, "/index.dart") {
			continue
		}
		moduleDir := strings.TrimSuffix(normalized, "/index.dart")
		if moduleDir == "" || moduleDir == "." ||
			strings.HasPrefix(moduleDir, "internal") ||
			strings.HasPrefix(moduleDir, "config") {
			continue
		}
		root := moduleDir
		if slash := strings.Index(root, "/"); slash > 0 {
			root = root[:slash]
		}
		rootModules[root] = struct{}{}
	}

	entryPoints := map[string][]byte{}
	modulePaths := make([]string, 0, len(rootModules))
	for moduleDir := range rootModules {
		modulePaths = append(modulePaths, moduleDir)
	}
	sort.Strings(modulePaths)

	for _, moduleDir := range modulePaths {
		entryPath := filepath.ToSlash(moduleDir + ".dart")
		libraryName := sanitizeDartIdentifier(packageName + "_" + strings.ReplaceAll(moduleDir, "/", "_"))
		entryContent := fmt.Sprintf(
			"library %s;\n\nexport 'package:%s/src/%s/%s/index.dart';\n",
			libraryName,
			packageName,
			packageName,
			moduleDir,
		)
		entryPoints[entryPath] = []byte(entryContent)
	}

	return entryPoints
}

func generatedPackageRootLibrary(packageName string) []byte {
	return []byte(fmt.Sprintf(
		"library %s;\n\nexport 'src/%s/sdk.dart';\n",
		packageName,
		packageName,
	))
}

func dartByteListLiteral(value []byte) string {
	if len(value) == 0 {
		return "const <int>[]"
	}

	var b strings.Builder
	b.WriteString("<int>[")
	for i, v := range value {
		if i > 0 {
			b.WriteString(", ")
		}
		b.WriteString(strconv.Itoa(int(v)))
	}
	b.WriteString("]")
	return b.String()
}

func normalizeGeneratedVersion(version string) string {
	version = strings.TrimSpace(version)
	if version == "" {
		return ""
	}
	return strings.TrimPrefix(version, "v")
}

func generatedSDKPackageVersion(upstreamVersion string) string {
	if override := normalizeGeneratedVersion(os.Getenv("PULUMI_DART_SDK_VERSION")); override != "" {
		return override
	}

	baseVersion := normalizeGeneratedVersion(upstreamVersion)
	if baseVersion == "" {
		baseVersion = "0.0.1"
	}

	if suffix := strings.TrimSpace(os.Getenv("PULUMI_DART_SDK_VERSION_SUFFIX")); suffix != "" {
		if strings.HasPrefix(suffix, "-") || strings.HasPrefix(suffix, "+") {
			return baseVersion + suffix
		}
		return baseVersion + "-" + suffix
	}

	return baseVersion
}

func dependencyPackageName(rootDirectory, dependencyPath, fallbackName string) string {
	pubspecPath := filepath.Join(rootDirectory, dependencyPath, "pubspec.yaml")
	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil || pubspec == nil || pubspec.Name == "" {
		return sanitizeDartIdentifier(fallbackName)
	}
	return sanitizeDartIdentifier(pubspec.Name)
}

func generatedProgramStub(pclSource map[string]string) []byte {
	var sourceFiles []string
	for filename := range pclSource {
		sourceFiles = append(sourceFiles, filename)
	}
	sort.Strings(sourceFiles)

	var sourceList string
	if len(sourceFiles) > 0 {
		sourceList = strings.Join(sourceFiles, ", ")
	} else {
		sourceList = "(no source files provided)"
	}

	return []byte(fmt.Sprintf(`import 'package:pulumi/pulumi.dart';

class GeneratedStack extends Stack {
  GeneratedStack() {
    // Generated by pulumi-language-dart from PCL sources: %s
    // TODO: replace this scaffold with generated resource definitions.
  }
}

Future<void> main() async {
  await Deployment.run(() => GeneratedStack());
}
`, sourceList))
}

func generatedPackageExampleMain(packageName string) []byte {
	return []byte(fmt.Sprintf(`// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart';
import 'package:%s/%s.dart' as provider;

class ExampleStack extends Stack {
  ExampleStack() {
    // TODO: Add resources from package:%s.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await Deployment.run(() => ExampleStack());
}
`, packageName, packageName, packageName))
}

func buildGeneratedPubspec(packageName string, localDependencies map[string]string) PubSpec {
	pubspec := PubSpec{
		Name:        packageName,
		Description: "Generated Pulumi Dart project.",
		Version:     "0.0.1",
		Environment: map[string]string{
			"sdk": "^3.10.0",
		},
		Dependencies: map[string]interface{}{},
	}

	if pulumiPath, ok := localDependencies["pulumi"]; ok && strings.TrimSpace(pulumiPath) != "" {
		pubspec.Dependencies["pulumi"] = map[string]string{
			"path": filepath.ToSlash(pulumiPath),
		}
	} else {
		// Prefer a permissive constraint so generated projects can resolve dependencies where available.
		pubspec.Dependencies["pulumi"] = "^1.0.0"
	}

	return pubspec
}

func toPubspecTopics(keywords []string) []string {
	topics := make([]string, 0, len(keywords))
	seen := map[string]struct{}{}

	sanitize := func(value string) string {
		value = strings.ToLower(strings.TrimSpace(value))
		if value == "" {
			return ""
		}

		var b strings.Builder
		lastDash := false
		for _, r := range value {
			isLower := r >= 'a' && r <= 'z'
			isDigit := r >= '0' && r <= '9'
			if isLower || isDigit {
				b.WriteRune(r)
				lastDash = false
				continue
			}
			if !lastDash && b.Len() > 0 {
				b.WriteRune('-')
				lastDash = true
			}
		}

		result := strings.Trim(b.String(), "-")
		if len(result) > 32 {
			result = strings.Trim(result[:32], "-")
		}
		return result
	}

	for _, keyword := range keywords {
		topic := sanitize(keyword)
		if topic == "" {
			continue
		}
		if _, ok := seen[topic]; ok {
			continue
		}
		seen[topic] = struct{}{}
		topics = append(topics, topic)
		if len(topics) == 5 {
			break
		}
	}

	return topics
}

func applyPackageMetadataToPubspec(pubspec *PubSpec, spec *packageSchema) {
	if pubspec == nil || spec == nil {
		return
	}

	if description := strings.TrimSpace(spec.Description); description != "" {
		pubspec.Description = description
	}
	if license := strings.TrimSpace(spec.License); license != "" {
		pubspec.License = license
	}
	if homepage := strings.TrimSpace(spec.Homepage); homepage != "" {
		pubspec.Homepage = homepage
	}
	if repository := strings.TrimSpace(spec.Repository); repository != "" {
		pubspec.Repository = repository
	}

	pubspec.Topics = toPubspecTopics(spec.Keywords)
}

func safeOutputPath(rootDir, relativePath string) (string, error) {
	cleanRelativePath := filepath.Clean(relativePath)
	if cleanRelativePath == "." || cleanRelativePath == "" {
		return "", fmt.Errorf("path must not be empty: %q", relativePath)
	}
	if filepath.IsAbs(cleanRelativePath) {
		return "", fmt.Errorf("absolute paths are not allowed: %q", relativePath)
	}
	if cleanRelativePath == ".." || strings.HasPrefix(cleanRelativePath, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("path escapes package directory: %q", relativePath)
	}

	outputPath := filepath.Join(rootDir, cleanRelativePath)
	relativeToRoot, err := filepath.Rel(rootDir, outputPath)
	if err != nil {
		return "", fmt.Errorf("failed to resolve output path for %q: %w", relativePath, err)
	}
	if relativeToRoot == ".." || strings.HasPrefix(relativeToRoot, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("path escapes package directory: %q", relativePath)
	}

	return outputPath, nil
}

func (host *dartLanguageHost) GenerateProgram(
	ctx context.Context, req *pulumirpc.GenerateProgramRequest,
) (*pulumirpc.GenerateProgramResponse, error) {
	source := map[string][]byte{
		"main.dart": generatedProgramStub(req.GetSource()),
	}

	return &pulumirpc.GenerateProgramResponse{
		Source: source,
	}, nil
}

func (host *dartLanguageHost) GenerateProject(
	ctx context.Context, req *pulumirpc.GenerateProjectRequest,
) (*pulumirpc.GenerateProjectResponse, error) {
	if strings.TrimSpace(req.GetTargetDirectory()) == "" {
		return nil, errors.New("target directory is required")
	}
	if err := os.MkdirAll(req.GetTargetDirectory(), 0o700); err != nil {
		return nil, fmt.Errorf("failed to create target directory: %w", err)
	}

	projectName := sanitizeDartIdentifier(filepath.Base(req.GetTargetDirectory()))
	if rawProject := strings.TrimSpace(req.GetProject()); rawProject != "" {
		var projectSpec map[string]interface{}
		if err := json.Unmarshal([]byte(rawProject), &projectSpec); err == nil {
			if name, ok := projectSpec["name"].(string); ok && strings.TrimSpace(name) != "" {
				projectName = sanitizeDartIdentifier(name)
			}
			projectYAML, err := yaml.Marshal(projectSpec)
			if err != nil {
				return nil, fmt.Errorf("failed to marshal Pulumi project YAML: %w", err)
			}
			if err := os.WriteFile(filepath.Join(req.GetTargetDirectory(), "Pulumi.yaml"), projectYAML, 0o600); err != nil {
				return nil, fmt.Errorf("failed to write Pulumi.yaml: %w", err)
			}
		} else {
			// Fallback to raw content if it is already YAML-like.
			if err := os.WriteFile(filepath.Join(req.GetTargetDirectory(), "Pulumi.yaml"), []byte(rawProject), 0o600); err != nil {
				return nil, fmt.Errorf("failed to write Pulumi.yaml: %w", err)
			}
		}
	}

	pubspec := buildGeneratedPubspec(projectName, req.GetLocalDependencies())
	pubspecBytes, err := yaml.Marshal(pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal generated pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(filepath.Join(req.GetTargetDirectory(), "pubspec.yaml"), pubspecBytes, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated pubspec.yaml: %w", err)
	}

	binDir := filepath.Join(req.GetTargetDirectory(), "bin")
	if err := os.MkdirAll(binDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated bin directory: %w", err)
	}
	programFile := filepath.Join(binDir, projectName+".dart")
	if err := os.WriteFile(programFile, generatedProgramStub(nil), 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated program file: %w", err)
	}

	return &pulumirpc.GenerateProjectResponse{}, nil
}

func (host *dartLanguageHost) GeneratePackage(
	ctx context.Context, req *pulumirpc.GeneratePackageRequest,
) (*pulumirpc.GeneratePackageResponse, error) {
	var (
		spec           *packageSchema
		rpcDiagnostics []*codegenrpc.Diagnostic
	)

	var packageSpec schema.PackageSpec
	if err := json.Unmarshal([]byte(req.GetSchema()), &packageSpec); err == nil {
		var (
			loader       schema.Loader
			loaderCloser io.Closer
		)
		loaderTarget := strings.TrimSpace(req.GetLoaderTarget())
		if loaderTarget != "" {
			loaderClient, err := schema.NewLoaderClient(loaderTarget)
			if err != nil {
				return nil, err
			}
			loader = loaderClient
			loaderCloser = loaderClient
		}
		if loaderCloser != nil {
			defer loaderCloser.Close()
		}

		pkg, diags, err := schema.BindSpec(packageSpec, loader, schema.ValidationOptions{
			AllowDanglingReferences: true,
		})
		if err == nil {
			rpcDiagnostics = plugin.HclDiagnosticsToRPCDiagnostics(diags)
			if diags.HasErrors() {
				// Preserve previous parse-only behavior when no loader target is provided.
				if loader == nil {
					spec, err = parsePackageSchema(req.GetSchema())
					if err != nil {
						return nil, err
					}
					rpcDiagnostics = nil
				} else {
					return &pulumirpc.GeneratePackageResponse{
						Diagnostics: rpcDiagnostics,
					}, nil
				}
			} else {
				spec = packageSchemaFromPackage(pkg)
			}
		} else if loader == nil {
			// Parse-only fallback is intentionally permissive when we do not have
			// a schema loader and cannot resolve external references.
			spec, err = parsePackageSchema(req.GetSchema())
			if err != nil {
				return nil, err
			}
		} else {
			return nil, err
		}
	}
	if spec == nil {
		var err error
		spec, err = parsePackageSchema(req.GetSchema())
		if err != nil {
			return nil, err
		}
	}

	if spec.Config != nil {
		var rawSpec rawPackageSchema
		if err := json.Unmarshal([]byte(req.GetSchema()), &rawSpec); err == nil {
			requiredSet := rawRequiredSet(rawSpec.Config.Required)
			for i := range spec.Config.Properties {
				if _, ok := requiredSet[spec.Config.Properties[i].Name]; ok {
					spec.Config.Properties[i].Required = true
				}
			}
		}
	}

	packageName := toDartPackageName(spec.Namespace, spec.Name)
	pubspec := buildGeneratedPubspec(packageName, req.GetLocalDependencies())
	applyPackageMetadataToPubspec(&pubspec, spec)
	if strings.TrimSpace(pubspec.Description) == "" {
		pubspec.Description = fmt.Sprintf("A Pulumi SDK package for %s.", spec.Name)
	}
	pubspec.Version = generatedSDKPackageVersion(spec.Version)

	pubspecBytes, err := yaml.Marshal(pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal generated pubspec.yaml: %w", err)
	}

	if err := os.MkdirAll(req.GetDirectory(), 0o700); err != nil {
		return nil, fmt.Errorf("failed to create SDK directory: %w", err)
	}
	if err := os.WriteFile(filepath.Join(req.GetDirectory(), "pubspec.yaml"), pubspecBytes, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated pubspec.yaml: %w", err)
	}

	libDir := filepath.Join(req.GetDirectory(), "lib")
	if err := os.MkdirAll(libDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated lib directory: %w", err)
	}

	publicLibraryFile := filepath.Join(libDir, packageName+".dart")
	publicLibraryContent := generatedPackageRootLibrary(packageName)
	if err := os.WriteFile(publicLibraryFile, publicLibraryContent, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated public library file: %w", err)
	}

	sdkDir := filepath.Join(libDir, "src", packageName)
	if err := os.MkdirAll(sdkDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated SDK source directory: %w", err)
	}
	sdkLibraryName := packageName + "_sdk"

	sdkSources := generatedPackageSources(spec, packageName, sdkLibraryName)
	sdkPaths := make([]string, 0, len(sdkSources))
	for relativePath := range sdkSources {
		sdkPaths = append(sdkPaths, relativePath)
	}
	sort.Strings(sdkPaths)
	for _, relativePath := range sdkPaths {
		outputPath, err := safeOutputPath(sdkDir, filepath.FromSlash(relativePath))
		if err != nil {
			return nil, fmt.Errorf("invalid generated SDK source path %q: %w", relativePath, err)
		}
		if err := os.MkdirAll(filepath.Dir(outputPath), 0o700); err != nil {
			return nil, fmt.Errorf("failed to create generated SDK source directory for %s: %w", relativePath, err)
		}
		if err := os.WriteFile(outputPath, sdkSources[relativePath], 0o600); err != nil {
			return nil, fmt.Errorf("failed to write generated SDK source file %s: %w", relativePath, err)
		}
	}

	publicModuleSources := generatedPublicModuleEntryPoints(packageName, sdkSources)
	publicModulePaths := make([]string, 0, len(publicModuleSources))
	for relativePath := range publicModuleSources {
		publicModulePaths = append(publicModulePaths, relativePath)
	}
	sort.Strings(publicModulePaths)
	for _, relativePath := range publicModulePaths {
		outputPath, err := safeOutputPath(libDir, filepath.FromSlash(relativePath))
		if err != nil {
			return nil, fmt.Errorf("invalid generated module entrypoint path %q: %w", relativePath, err)
		}
		if err := os.MkdirAll(filepath.Dir(outputPath), 0o700); err != nil {
			return nil, fmt.Errorf("failed to create generated module directory for %s: %w", relativePath, err)
		}
		if err := os.WriteFile(outputPath, publicModuleSources[relativePath], 0o600); err != nil {
			return nil, fmt.Errorf("failed to write generated module entrypoint %s: %w", relativePath, err)
		}
	}

	exampleMainPath, err := safeOutputPath(req.GetDirectory(), filepath.Join("example", "main.dart"))
	if err != nil {
		return nil, fmt.Errorf("invalid generated example path: %w", err)
	}
	if err := os.MkdirAll(filepath.Dir(exampleMainPath), 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated example directory: %w", err)
	}
	if err := os.WriteFile(exampleMainPath, generatedPackageExampleMain(packageName), 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated example file: %w", err)
	}

	for filename, contents := range req.GetExtraFiles() {
		outputPath, err := safeOutputPath(req.GetDirectory(), filename)
		if err != nil {
			return nil, fmt.Errorf("invalid extra file path %q: %w", filename, err)
		}
		if err := os.MkdirAll(filepath.Dir(outputPath), 0o700); err != nil {
			return nil, fmt.Errorf("failed to create output directory for extra file %s: %w", filename, err)
		}
		if err := os.WriteFile(outputPath, contents, 0o600); err != nil {
			return nil, fmt.Errorf("failed to write extra file %s: %w", filename, err)
		}
	}

	return &pulumirpc.GeneratePackageResponse{
		Diagnostics: rpcDiagnostics,
	}, nil
}

func (host *dartLanguageHost) Pack(ctx context.Context, req *pulumirpc.PackRequest) (*pulumirpc.PackResponse, error) {
	packageDir := strings.TrimSpace(req.GetPackageDirectory())
	if packageDir == "" {
		return nil, errors.New("package directory is required")
	}
	destinationDir := strings.TrimSpace(req.GetDestinationDirectory())
	if destinationDir == "" {
		return nil, errors.New("destination directory is required")
	}

	if err := os.MkdirAll(destinationDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create destination directory: %w", err)
	}

	packageName := sanitizeDartIdentifier(filepath.Base(packageDir))
	if pubspec, err := ReadAndParsePubspec(filepath.Join(packageDir, "pubspec.yaml")); err == nil && pubspec != nil && pubspec.Name != "" {
		packageName = sanitizeDartIdentifier(pubspec.Name)
	}

	artifactPath := filepath.Join(destinationDir, packageName+".tar.gz")
	artifactFile, err := os.Create(artifactPath)
	if err != nil {
		return nil, fmt.Errorf("failed to create archive: %w", err)
	}
	defer artifactFile.Close()

	gzipWriter := gzip.NewWriter(artifactFile)
	defer gzipWriter.Close()
	tarWriter := tar.NewWriter(gzipWriter)
	defer tarWriter.Close()

	var filePaths []string
	if err := filepath.Walk(packageDir, func(path string, info os.FileInfo, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		if info.IsDir() {
			return nil
		}
		filePaths = append(filePaths, path)
		return nil
	}); err != nil {
		return nil, fmt.Errorf("failed to enumerate package files: %w", err)
	}
	sort.Strings(filePaths)

	for _, path := range filePaths {
		info, err := os.Lstat(path)
		if err != nil {
			return nil, fmt.Errorf("failed to stat %s: %w", path, err)
		}
		relPath, err := filepath.Rel(packageDir, path)
		if err != nil {
			return nil, fmt.Errorf("failed to compute relative path for %s: %w", path, err)
		}

		header, err := tar.FileInfoHeader(info, "")
		if err != nil {
			return nil, fmt.Errorf("failed to create tar header for %s: %w", path, err)
		}
		header.Name = filepath.ToSlash(relPath)

		if err := tarWriter.WriteHeader(header); err != nil {
			return nil, fmt.Errorf("failed to write tar header for %s: %w", path, err)
		}

		file, err := os.Open(path)
		if err != nil {
			return nil, fmt.Errorf("failed to open %s: %w", path, err)
		}
		if _, err := io.Copy(tarWriter, file); err != nil {
			file.Close()
			return nil, fmt.Errorf("failed to write %s to archive: %w", path, err)
		}
		file.Close()
	}

	return &pulumirpc.PackResponse{
		ArtifactPath: artifactPath,
	}, nil
}

func (host *dartLanguageHost) Link(
	ctx context.Context, req *pulumirpc.LinkRequest,
) (*pulumirpc.LinkResponse, error) {
	info := req.GetInfo()
	if info == nil {
		return nil, errors.New("missing program info in Link request")
	}

	pubspecPath := filepath.Join(info.GetProgramDirectory(), "pubspec.yaml")
	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil {
		return nil, fmt.Errorf("failed to read project pubspec.yaml: %w", err)
	}
	if pubspec.Dependencies == nil {
		pubspec.Dependencies = map[string]interface{}{}
	}

	var importLines []string
	for _, dep := range req.GetPackages() {
		dependencyName := dependencyPackageName(info.GetRootDirectory(), dep.GetPath(), dep.GetPackage().GetName())
		pubspec.Dependencies[dependencyName] = map[string]string{
			"path": filepath.ToSlash(dep.GetPath()),
		}

		alias := sanitizeDartIdentifier(dep.GetPackage().GetName())
		importLines = append(importLines, fmt.Sprintf(
			"  import 'package:%s/%s.dart' as %s;",
			dependencyName,
			dependencyName,
			alias,
		))
	}

	updatedPubspecBytes, err := yaml.Marshal(pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal updated project pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(pubspecPath, updatedPubspecBytes, 0o600); err != nil {
		return nil, fmt.Errorf("failed to update project pubspec.yaml: %w", err)
	}

	header := "You can import the SDK in your Dart code with:\n\n"
	if len(importLines) > 1 {
		header = "You can import the SDKs in your Dart code with:\n\n"
	}

	return &pulumirpc.LinkResponse{
		ImportInstructions: header + strings.Join(importLines, "\n"),
	}, nil
}

func (host *dartLanguageHost) Cancel(ctx context.Context, req *pbempty.Empty) (*pbempty.Empty, error) {
	host.cancelOperation()
	return &pbempty.Empty{}, nil
}
