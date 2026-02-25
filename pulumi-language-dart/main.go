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

	pulumiPackages := DeterminePulumiPackages(pubspec.Dependencies)
	packages := make([]*pulumirpc.PackageDependency, 0, len(pulumiPackages))
	for _, pkg := range pulumiPackages {
		if len(pkg) == 0 {
			continue
		}

		packageName := dependencyToPackageName(pkg[0])
		if packageName == "" {
			continue
		}

		version := ""
		if len(pkg) > 1 {
			version = normalizePackageDependencyVersion(pkg[1])
		}

		packages = append(packages, &pulumirpc.PackageDependency{
			Name:    packageName,
			Kind:    "resource",
			Version: version,
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
	Name      string                         `json:"name"`
	Namespace string                         `json:"namespace"`
	Version   string                         `json:"version"`
	Resources map[string]packageResourceSpec `json:"resources"`
	Functions map[string]packageFunctionSpec `json:"functions"`
}

type packageResourceSpec struct {
	IsComponent bool `json:"isComponent"`
}

type packageFunctionSpec struct{}

func parsePackageSchema(schemaJSON string) (*packageSchema, error) {
	var spec packageSchema
	if err := json.Unmarshal([]byte(schemaJSON), &spec); err != nil {
		return nil, fmt.Errorf("failed to parse package schema: %w", err)
	}
	if spec.Name == "" {
		return nil, errors.New("package schema is missing name")
	}
	return &spec, nil
}

func packageSchemaFromPackage(pkg *schema.Package) *packageSchema {
	version := ""
	if pkg.Version != nil {
		version = pkg.Version.String()
	}

	spec := &packageSchema{
		Name:      pkg.Name,
		Namespace: pkg.Namespace,
		Version:   version,
		Resources: map[string]packageResourceSpec{},
		Functions: map[string]packageFunctionSpec{},
	}

	for _, resource := range pkg.Resources {
		spec.Resources[resource.Token] = packageResourceSpec{
			IsComponent: resource.IsComponent,
		}
	}
	for _, function := range pkg.Functions {
		spec.Functions[function.Token] = packageFunctionSpec{}
	}

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
	if namespace == "" {
		return sanitizeDartIdentifier(name)
	}
	return sanitizeDartIdentifier(namespace + "_" + name)
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

func resourceClassNameFromToken(token string, used map[string]int) string {
	base := toDartClassName(tokenElementName(token))
	count := used[base]
	used[base] = count + 1
	if count == 0 {
		return base
	}
	return fmt.Sprintf("%s%d", base, count+1)
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

	count := used[candidate]
	used[candidate] = count + 1
	if count == 0 {
		return candidate
	}
	return fmt.Sprintf("%s%d", candidate, count+1)
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
	if len(functionTokens) > 0 {
		b.WriteString("import 'package:pulumi/src/deployment/models.dart' as deployment_models;\n\n")
	}

	hasCustomResource := false
	for _, token := range resourceTokens {
		if !spec.Resources[token].IsComponent {
			hasCustomResource = true
			break
		}
	}

	if hasCustomResource {
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

	if len(resourceTokens) == 0 && len(functionTokens) == 0 {
		b.WriteString("// This package schema did not define resources or functions.\n")
		return []byte(b.String())
	}

	usedClassNames := map[string]int{}
	for _, token := range resourceTokens {
		resource := spec.Resources[token]
		className := resourceClassNameFromToken(token, usedClassNames)

		if resource.IsComponent {
			fmt.Fprintf(&b, "class %s extends ComponentResource {\n", className)
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          null,\n          options ?? ComponentResourceOptions(),\n        );\n}\n\n",
				className,
				token,
			)
			continue
		}

		fmt.Fprintf(&b, "class %s extends CustomResource {\n", className)
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          _mapToInputs(args ?? const {}),\n          options ?? CustomResourceOptions(),\n        );\n}\n\n",
			className,
			token,
		)
	}

	usedFunctionNames := map[string]int{}
	for _, token := range functionTokens {
		funcName := functionNameFromToken(token, usedFunctionNames)
		fmt.Fprintf(
			&b,
			"Future<Map<String, dynamic>> %s(\n  Map<String, dynamic> args, {\n  InvokeOptions? options,\n}) async {\n  final deployment = DeploymentImpl.instance as DeploymentImpl;\n  return await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    args,\n    options: _toDeploymentInvokeOptions(options),\n  );\n}\n\n",
			funcName,
			token,
		)
	}

	return []byte(b.String())
}

func normalizeVersion(version string) string {
	if version == "" {
		return "0.0.1"
	}
	return strings.TrimPrefix(version, "v")
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
  await DeploymentImpl.run(() => GeneratedStack());
}
`, sourceList))
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

	if strings.TrimSpace(req.GetLoaderTarget()) != "" {
		loader, err := schema.NewLoaderClient(req.GetLoaderTarget())
		if err != nil {
			return nil, err
		}
		defer loader.Close()

		var packageSpec schema.PackageSpec
		if err := json.Unmarshal([]byte(req.GetSchema()), &packageSpec); err != nil {
			return nil, fmt.Errorf("failed to parse package schema: %w", err)
		}

		pkg, diags, err := schema.BindSpec(packageSpec, loader, schema.ValidationOptions{
			AllowDanglingReferences: true,
		})
		if err != nil {
			return nil, err
		}
		rpcDiagnostics = plugin.HclDiagnosticsToRPCDiagnostics(diags)
		if diags.HasErrors() {
			return &pulumirpc.GeneratePackageResponse{
				Diagnostics: rpcDiagnostics,
			}, nil
		}
		spec = packageSchemaFromPackage(pkg)
	} else {
		var err error
		spec, err = parsePackageSchema(req.GetSchema())
		if err != nil {
			return nil, err
		}
	}

	packageName := toDartPackageName(spec.Namespace, spec.Name)
	pubspec := PubSpec{
		Name:        packageName,
		Description: fmt.Sprintf("A Pulumi SDK package for %s.", spec.Name),
		Version:     normalizeVersion(spec.Version),
		Environment: map[string]string{
			"sdk": "^3.10.0",
		},
	}

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

	libraryFile := filepath.Join(libDir, packageName+".dart")
	libraryContent := generatedPackageLibrary(spec, packageName)
	if err := os.WriteFile(libraryFile, libraryContent, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated library file: %w", err)
	}

	for filename, contents := range req.GetExtraFiles() {
		outputPath := filepath.Join(req.GetDirectory(), filename)
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
