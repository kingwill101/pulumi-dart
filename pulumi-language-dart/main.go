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
	"bytes"
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"os/exec"
	"os/signal"
	"path/filepath"
	"strings"
	"syscall"
	"time"

	pbempty "github.com/golang/protobuf/ptypes/empty"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/version"

	"github.com/pkg/errors"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/logging"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/rpcutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"google.golang.org/grpc"
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

// Run executes

// Run is the RPC endpoint for LanguageRuntimeServer::Run
func (host *dartLanguageHost) Run(ctx context.Context, req *pulumirpc.RunRequest) (*pulumirpc.RunResponse, error) {
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

	// Now simply spawn a process to execute the requested program, wiring up stdout/stderr directly.
	cmd := exec.Command(executable, args...)
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
	maybeAppendEnv("project", req.GetProject())
	maybeAppendEnv("stack", req.GetStack())
	maybeAppendEnv("pwd", req.GetPwd())
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
	closer, stdout, stderr, err := rpcutil.MakeRunPluginStreams(server, false)
	if err != nil {
		return err
	}
	defer closer.Close()

	cmd := exec.Command(host.exec, append([]string{"run"}, req.Args...)...)
	cmd.Dir = req.Pwd
	cmd.Env = req.Env
	cmd.Stdout, cmd.Stderr = stdout, stderr

	if err := cmd.Run(); err != nil {
		if exiterr, ok := err.(*exec.ExitError); ok {
			if status, stok := exiterr.Sys().(syscall.WaitStatus); stok {
				return fmt.Errorf("plugin exited with non-zero exit code: %d", status.ExitStatus())
			}
			return fmt.Errorf("plugin exited unexpectedly: %v", exiterr)
		}
		return fmt.Errorf("problem executing plugin: %v", err)
	}

	return nil
}
