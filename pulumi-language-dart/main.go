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
	"bufio"
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"net"
	"net/url"
	"os"
	"os/exec"
	"os/signal"
	"path/filepath"
	"regexp"
	"runtime"
	"sort"
	"strconv"
	"strings"
	"sync"
	"syscall"
	"time"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/version"
	pbempty "google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/pkg/errors"
	sdk "github.com/pulumi/pulumi/sdk/v3"
	"github.com/pulumi/pulumi/sdk/v3/go/common/apitype"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/logging"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/rpcutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gopkg.in/yaml.v3"
)

// dartProcessExitedAfterShowingUserActionableMessage is an exit code we recognize when the Dart process exits.
// If we see this error, there's no need for us to print any additional error messages since the user already got a good one they can handle.
const dartProcessExitedAfterShowingUserActionableMessage = 32

const sharedKernelCacheSchema = "pulumi-dart-kernel-cache-v1"

// main is the entry point for the Dart language host.
func main() {
	var tracing string
	var binary string
	var root string
	var prewarmProgram string
	var prewarmEntryPoint string
	var prewarmCache string
	flag.StringVar(&tracing, "tracing", "", "Emit tracing to a Zipkin-compatible tracing endpoint")
	flag.StringVar(&binary, "binary", "", "A relative or absolute path to a precompiled Dart executable to execute")
	flag.StringVar(&root, "root", "", "Project root path to use")
	flag.StringVar(&prewarmProgram, "prewarm-program", "", "Compile a program into the shared kernel cache and exit")
	flag.StringVar(&prewarmEntryPoint, "prewarm-entrypoint", "", "Entrypoint relative to --prewarm-program")
	flag.StringVar(&prewarmCache, "prewarm-cache", "", "Shared kernel cache directory")

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

	if prewarmProgram != "" || prewarmEntryPoint != "" || prewarmCache != "" {
		if prewarmProgram == "" || prewarmEntryPoint == "" || prewarmCache == "" {
			cmdutil.Exit(errors.New("--prewarm-program, --prewarm-entrypoint, and --prewarm-cache must be supplied together"))
		}
		kernel, fingerprint, err := compileSharedDartKernel(
			context.Background(), dartExec, prewarmProgram, prewarmEntryPoint, prewarmCache,
		)
		if err != nil {
			cmdutil.Exit(err)
		}
		encoded, _ := json.Marshal(map[string]string{"fingerprint": fingerprint, "kernel": kernel})
		fmt.Println(string(encoded))
		return
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

type dartRuntimeOptions struct {
	binary      string
	buildTarget string
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
		return nil, status.Error(codes.InvalidArgument, "engine address is required")
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

// normalizePackageDependencyVersion converts pubspec-style constraints into a
// plugin version hint accepted by Pulumi.
//
// Examples:
//   - "^7.20.0" -> "v7.20.0"
//   - "path:../aws" -> ""
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

// dependencyToPackageName maps Dart dependency names to Pulumi plugin package
// names.
//
// Examples:
//   - "pulumi_awsx" -> "awsx"
//   - "pulumi_azure_native" -> "azure-native"
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

// resolveProgramDirectory returns ProgramInfo.ProgramDirectory when present,
// otherwise the first non-empty fallback.
func resolveProgramDirectory(info *pulumirpc.ProgramInfo, fallbacks ...string) string {
	if info != nil && strings.TrimSpace(info.GetProgramDirectory()) != "" {
		return strings.TrimSpace(info.GetProgramDirectory())
	}
	for _, fallback := range fallbacks {
		if strings.TrimSpace(fallback) != "" {
			return strings.TrimSpace(fallback)
		}
	}
	return ""
}

// shouldResolveToBinDartEntryPoint reports whether an entrypoint token should
// be interpreted as a `bin/<name>.dart` candidate.
//
// Example:
//
//	"infra" => true, "./infra.dart" => false, "." => false.
func shouldResolveToBinDartEntryPoint(entryPoint string) bool {
	entryPoint = strings.TrimSpace(entryPoint)
	if entryPoint == "" || entryPoint == "." {
		return false
	}
	if filepath.Ext(entryPoint) != "" {
		return false
	}
	if strings.ContainsAny(entryPoint, `/\\`) {
		return false
	}
	return true
}

// resolveProgramEntryPoint computes the effective entrypoint using ProgramInfo
// precedence and compatibility fallbacks.
//
// Examples:
//   - entryPoint "infra" + existing bin/infra.dart => "bin/infra.dart"
//   - fallback "." + existing bin/main.dart => "bin/main.dart"
func resolveProgramEntryPoint(info *pulumirpc.ProgramInfo, fallback string, programDirectory string) string {
	lookupDirectory := strings.TrimSpace(programDirectory)
	if lookupDirectory != "" {
		if normalizedDirectory, _ := normalizeProgramDirectoryAndEntryPoint(lookupDirectory, "", lookupDirectory); strings.TrimSpace(normalizedDirectory) != "" {
			lookupDirectory = normalizedDirectory
		}
	}

	if info != nil && strings.TrimSpace(info.GetEntryPoint()) != "" && strings.TrimSpace(info.GetEntryPoint()) != "." {
		entryPoint := strings.TrimSpace(info.GetEntryPoint())
		if shouldResolveToBinDartEntryPoint(entryPoint) {
			if lookupDirectory != "" {
				candidate := filepath.Join("bin", entryPoint+".dart")
				if _, err := os.Stat(filepath.Join(lookupDirectory, candidate)); err == nil {
					return filepath.ToSlash(candidate)
				}
			}
		}
		if filepath.Ext(entryPoint) == ".dart" && !strings.ContainsAny(entryPoint, `/\\`) {
			if lookupDirectory != "" {
				absoluteEntry := filepath.Join(lookupDirectory, entryPoint)
				if _, err := os.Stat(absoluteEntry); err != nil {
					candidate := filepath.Join("bin", entryPoint)
					if _, err := os.Stat(filepath.Join(lookupDirectory, candidate)); err == nil {
						return filepath.ToSlash(candidate)
					}
				}
			}
		}
		return entryPoint
	}
	fallback = strings.TrimSpace(fallback)
	// Pulumi may provide an empty legacy program value while setting ProgramInfo
	// fields. Treat empty as "." so standard bin/main.dart or bin/<pubspec>.dart
	// resolution still applies and compile-cache flow can be used.
	if fallback == "" {
		fallback = "."
	}
	if fallback == "." {
		if lookupDirectory != "" {
			if _, err := os.Stat(filepath.Join(lookupDirectory, "bin", "main.dart")); err == nil {
				return filepath.ToSlash(filepath.Join("bin", "main.dart"))
			}

			if pubspecPath, err := findPubspecYaml(lookupDirectory); err == nil {
				pubspec, err := readAndParsePubspec(pubspecPath)
				if err == nil && strings.TrimSpace(pubspec.Name) != "" {
					candidate := filepath.Join("bin", strings.TrimSpace(pubspec.Name)+".dart")
					if _, err := os.Stat(filepath.Join(lookupDirectory, candidate)); err == nil {
						return filepath.ToSlash(candidate)
					}
				}
			}
		}
		return "."
	}
	return fallback
}

func hasPubspecInDirectory(dir string) bool {
	if strings.TrimSpace(dir) == "" {
		return false
	}
	_, err := os.Stat(filepath.Join(dir, "pubspec.yaml"))
	return err == nil
}

func normalizeProgramDirectoryAndEntryPoint(programDirectory, entryPoint, fallbackRoot string) (string, string) {
	programDirectory = strings.TrimSpace(programDirectory)
	entryPoint = strings.TrimSpace(entryPoint)
	fallbackRoot = strings.TrimSpace(fallbackRoot)
	if programDirectory == "" {
		return programDirectory, entryPoint
	}

	if !filepath.IsAbs(programDirectory) && fallbackRoot != "" {
		programDirectory = filepath.Clean(filepath.Join(fallbackRoot, programDirectory))
	}

	originalDirectory := programDirectory
	if !hasPubspecInDirectory(programDirectory) {
		parent := filepath.Dir(programDirectory)
		if parent != programDirectory && hasPubspecInDirectory(parent) {
			programDirectory = parent
			if entryPoint != "" && entryPoint != "." && !filepath.IsAbs(entryPoint) {
				if rel, err := filepath.Rel(programDirectory, originalDirectory); err == nil && rel != "." {
					relSlash := filepath.ToSlash(rel)
					entryPointSlash := filepath.ToSlash(filepath.Clean(entryPoint))
					if entryPointSlash != relSlash && !strings.HasPrefix(entryPointSlash, relSlash+"/") {
						entryPoint = filepath.ToSlash(filepath.Join(rel, entryPoint))
					}
				}
			}
		}
	}

	return programDirectory, entryPoint
}

// normalizeCompilationContext harmonizes program directory and entrypoint for
// compile/cache operations.
//
// Example:
//
//	programDirectory "examples/app/bin", entryPoint "main.dart" may normalize
//	to programDirectory "examples/app", entryPoint "bin/main.dart".
func normalizeCompilationContext(programDirectory, entryPoint, fallbackRoot string) (string, string) {
	programDirectory, entryPoint = normalizeProgramDirectoryAndEntryPoint(programDirectory, entryPoint, fallbackRoot)
	if strings.TrimSpace(programDirectory) == "" || strings.TrimSpace(entryPoint) == "" || strings.TrimSpace(entryPoint) == "." {
		return programDirectory, entryPoint
	}
	if filepath.IsAbs(entryPoint) {
		return programDirectory, entryPoint
	}

	entryPointPath := filepath.FromSlash(entryPoint)
	candidate := filepath.Join(programDirectory, entryPointPath)
	if _, err := os.Stat(candidate); err == nil {
		return programDirectory, entryPoint
	}

	if !strings.ContainsAny(entryPoint, `/\\`) {
		binCandidate := filepath.Join("bin", entryPointPath)
		if _, err := os.Stat(filepath.Join(programDirectory, binCandidate)); err == nil {
			return programDirectory, filepath.ToSlash(binCandidate)
		}
	}

	return programDirectory, entryPoint
}

// parseDartRuntimeOptions reads `runtime.options` from ProgramInfo and validates
// supported Dart runtime keys.
func parseDartRuntimeOptions(info *pulumirpc.ProgramInfo) (dartRuntimeOptions, error) {
	var options dartRuntimeOptions
	if info == nil || info.GetOptions() == nil {
		return options, nil
	}

	rawOptions := info.GetOptions().AsMap()
	if binary, ok := rawOptions["binary"]; ok {
		value, ok := binary.(string)
		if !ok {
			return options, errors.New("binary option must be a string")
		}
		options.binary = strings.TrimSpace(value)
	}

	if buildTarget, ok := rawOptions["buildTarget"]; ok {
		value, ok := buildTarget.(string)
		if !ok {
			return options, errors.New("buildTarget option must be a string")
		}
		options.buildTarget = strings.TrimSpace(value)
	}

	if options.binary != "" && options.buildTarget != "" {
		return options, errors.New("binary and buildTarget cannot both be specified")
	}

	return options, nil
}

// normalizeDartBuildTargetPath resolves relative build targets against the
// program directory.
//
// Example:
//
//	("/repo/app", ".dart_tool/pulumi/app") => "/repo/app/.dart_tool/pulumi/app"
func normalizeDartBuildTargetPath(programDirectory, buildTarget string) string {
	buildTarget = strings.TrimSpace(buildTarget)
	if buildTarget == "" {
		return ""
	}
	if filepath.IsAbs(buildTarget) || programDirectory == "" {
		return buildTarget
	}
	return filepath.Join(programDirectory, buildTarget)
}

func shouldEmitCompileCacheLogs() bool {
	if logging.V(5).Enabled() {
		return true
	}
	switch strings.TrimSpace(strings.ToLower(os.Getenv("PULUMI_DART_COMPILE_CACHE_LOGS"))) {
	case "1", "true", "yes", "on":
		return true
	default:
		return false
	}
}

func appendDartFileFingerprint(entries *[]string, programDirectory, path string) error {
	return appendLabeledDartFileFingerprint(entries, programDirectory, path, "")
}

func appendLabeledDartFileFingerprint(entries *[]string, rootDirectory, path, labelPrefix string) error {
	stat, err := os.Stat(path)
	if err != nil {
		if os.IsNotExist(err) {
			return nil
		}
		return err
	}
	if stat.IsDir() {
		return nil
	}

	contents, err := os.ReadFile(path)
	if err != nil {
		return err
	}
	contentHash := sha256.Sum256(contents)

	relative := path
	if rootDirectory != "" {
		if rel, err := filepath.Rel(rootDirectory, path); err == nil {
			relative = rel
		}
	}
	relative = filepath.ToSlash(relative)
	if labelPrefix != "" {
		relative = strings.TrimSuffix(labelPrefix, "/") + "/" + strings.TrimPrefix(relative, "./")
	}
	*entries = append(*entries, fmt.Sprintf("%s|%x", relative, contentHash))
	return nil
}

func appendDartDirectoryFingerprints(entries *[]string, programDirectory, dir string) error {
	return appendLabeledDartDirectoryFingerprints(entries, programDirectory, dir, "")
}

func appendLabeledDartDirectoryFingerprints(entries *[]string, rootDirectory, dir, labelPrefix string) error {
	stat, err := os.Stat(dir)
	if err != nil {
		if os.IsNotExist(err) {
			return nil
		}
		return err
	}
	if !stat.IsDir() {
		return nil
	}

	return filepath.WalkDir(dir, func(path string, d os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if d.IsDir() {
			if path != dir && strings.HasPrefix(d.Name(), ".") {
				return filepath.SkipDir
			}
			return nil
		}
		if filepath.Ext(path) != ".dart" {
			return nil
		}
		return appendLabeledDartFileFingerprint(entries, rootDirectory, path, labelPrefix)
	})
}

func appendLocalDependencyFingerprints(entries *[]string, programDirectory string) error {
	if strings.TrimSpace(programDirectory) == "" {
		return nil
	}

	pubspecPath := filepath.Join(programDirectory, "pubspec.yaml")
	pubspec, err := readAndParsePubspec(pubspecPath)
	if err != nil || pubspec == nil {
		return nil
	}

	dependencyDirs := map[string]string{}
	appendDepPaths := func(deps map[string]interface{}) {
		for name, depSpec := range deps {
			rawPath, ok := codegen.DependencySpecPath(depSpec)
			if !ok {
				continue
			}
			depPath := strings.TrimSpace(rawPath)
			if depPath == "" {
				continue
			}
			if !filepath.IsAbs(depPath) {
				depPath = filepath.Join(programDirectory, filepath.FromSlash(depPath))
			}
			dependencyDirs[filepath.Clean(depPath)] = name
		}
	}
	appendDepPaths(pubspec.Dependencies)
	appendDepPaths(pubspec.DependencyOverrides)

	packageConfigPath := filepath.Join(programDirectory, ".dart_tool", "package_config.json")
	if data, err := os.ReadFile(packageConfigPath); err == nil {
		type packageConfigPackage struct {
			Name    string `json:"name"`
			RootURI string `json:"rootUri"`
		}
		type packageConfig struct {
			Packages []packageConfigPackage `json:"packages"`
		}
		var cfg packageConfig
		if jsonErr := json.Unmarshal(data, &cfg); jsonErr == nil {
			configDir := filepath.Dir(packageConfigPath)
			for _, pkg := range cfg.Packages {
				name := strings.TrimSpace(pkg.Name)
				if name != "pulumi" && !strings.HasPrefix(name, "pulumi_") {
					continue
				}
				rootURI := strings.TrimSpace(pkg.RootURI)
				if rootURI == "" {
					continue
				}
				var rootPath string
				if strings.HasPrefix(rootURI, "file://") {
					u, parseErr := url.Parse(rootURI)
					if parseErr != nil {
						continue
					}
					rootPath = u.Path
				} else {
					rootPath = filepath.Join(configDir, filepath.FromSlash(rootURI))
				}
				rootPath = filepath.Clean(rootPath)
				if filepath.Base(rootPath) == "lib" {
					rootPath = filepath.Dir(rootPath)
				}
				dependencyDirs[rootPath] = name
			}
		}
	}

	if len(dependencyDirs) == 0 {
		return nil
	}

	dirs := make([]string, 0, len(dependencyDirs))
	for dir := range dependencyDirs {
		dirs = append(dirs, dir)
	}
	sort.Strings(dirs)

	for _, depDir := range dirs {
		packageLabel := "package:" + dependencyDirs[depDir]
		stat, err := os.Stat(depDir)
		if err != nil {
			if os.IsNotExist(err) {
				continue
			}
			return err
		}
		if !stat.IsDir() {
			continue
		}
		if err := appendLabeledDartFileFingerprint(entries, depDir, filepath.Join(depDir, "pubspec.yaml"), packageLabel); err != nil {
			return err
		}
		for _, relativeDir := range []string{"lib", "bin", "tool"} {
			if err := appendLabeledDartDirectoryFingerprints(entries, depDir, filepath.Join(depDir, relativeDir), packageLabel); err != nil {
				return err
			}
		}
	}

	return nil
}

func computeDartProgramFingerprint(programDirectory, entryPoint string) (string, error) {
	entryPoint = strings.TrimSpace(entryPoint)
	entries := []string{
		fmt.Sprintf("entryPoint=%s", filepath.ToSlash(entryPoint)),
	}

	if entryPoint != "" && entryPoint != "." && programDirectory != "" {
		entryPath := entryPoint
		if !filepath.IsAbs(entryPath) {
			entryPath = filepath.Join(programDirectory, filepath.FromSlash(entryPoint))
		}
		if err := appendDartFileFingerprint(&entries, programDirectory, entryPath); err != nil {
			return "", err
		}
	}

	if programDirectory != "" {
		for _, relative := range []string{"pubspec.yaml", "pubspec.lock"} {
			if err := appendDartFileFingerprint(&entries, programDirectory, filepath.Join(programDirectory, relative)); err != nil {
				return "", err
			}
		}
		for _, relativeDir := range []string{"bin", "lib", "tool"} {
			if err := appendDartDirectoryFingerprints(&entries, programDirectory, filepath.Join(programDirectory, relativeDir)); err != nil {
				return "", err
			}
		}
		if err := appendLocalDependencyFingerprints(&entries, programDirectory); err != nil {
			return "", err
		}
	}

	sort.Strings(entries)
	hasher := sha256.New()
	for _, entry := range entries {
		_, _ = io.WriteString(hasher, entry)
		_, _ = io.WriteString(hasher, "\n")
	}
	return hex.EncodeToString(hasher.Sum(nil))[:24], nil
}

func dartSDKIdentity(ctx context.Context, dartExec string) (string, error) {
	command := exec.CommandContext(ctx, dartExec, "--version")
	output, err := command.CombinedOutput()
	if err != nil {
		return "", fmt.Errorf("determine Dart SDK version: %w", err)
	}
	identity := strings.TrimSpace(string(output))
	if identity == "" {
		return "", errors.New("Dart SDK returned an empty version")
	}
	return identity, nil
}

func sharedDartKernelFingerprint(
	ctx context.Context,
	dartExec string,
	programDirectory string,
	entryPoint string,
) (string, error) {
	programFingerprint, err := computeDartProgramFingerprint(programDirectory, entryPoint)
	if err != nil {
		return "", err
	}
	sdkIdentity, err := dartSDKIdentity(ctx, dartExec)
	if err != nil {
		return "", err
	}
	hash := sha256.Sum256([]byte(strings.Join([]string{
		sharedKernelCacheSchema,
		"compiler=dart-compile-kernel",
		"sdk=" + sdkIdentity,
		"program=" + programFingerprint,
	}, "\n") + "\n"))
	return hex.EncodeToString(hash[:]), nil
}

func sharedDartKernelPath(cacheDirectory, fingerprint string) string {
	return filepath.Join(cacheDirectory, "kernels", fingerprint+".dill")
}

func findSharedDartKernel(
	ctx context.Context,
	dartExec string,
	programDirectory string,
	entryPoint string,
) (string, bool) {
	cacheDirectory := strings.TrimSpace(os.Getenv("PULUMI_DART_PREWARM_CACHE"))
	if cacheDirectory == "" {
		return "", false
	}
	fingerprint, err := sharedDartKernelFingerprint(ctx, dartExec, programDirectory, entryPoint)
	if err != nil {
		logging.V(5).Infof("Shared Dart kernel fingerprint failed; using source cache: %v", err)
		return "", false
	}
	kernel := sharedDartKernelPath(cacheDirectory, fingerprint)
	stat, err := os.Stat(kernel)
	if err != nil || stat.IsDir() {
		if err != nil && !os.IsNotExist(err) {
			logging.V(5).Infof("Shared Dart kernel lookup failed; using source cache: %v", err)
		}
		return "", false
	}
	if shouldEmitCompileCacheLogs() {
		logging.Infof("pulumi-language-dart: shared kernel hit=%s", kernel)
	}
	return kernel, true
}

func compileSharedDartKernel(
	ctx context.Context,
	dartExec string,
	programDirectory string,
	entryPoint string,
	cacheDirectory string,
) (string, string, error) {
	programDirectory, err := filepath.Abs(programDirectory)
	if err != nil {
		return "", "", fmt.Errorf("resolve program directory: %w", err)
	}
	cacheDirectory, err = filepath.Abs(cacheDirectory)
	if err != nil {
		return "", "", fmt.Errorf("resolve shared kernel cache: %w", err)
	}
	fingerprint, err := sharedDartKernelFingerprint(ctx, dartExec, programDirectory, entryPoint)
	if err != nil {
		return "", "", fmt.Errorf("fingerprint Dart program: %w", err)
	}
	kernel := sharedDartKernelPath(cacheDirectory, fingerprint)
	if stat, statErr := os.Stat(kernel); statErr == nil && !stat.IsDir() {
		return kernel, fingerprint, nil
	}
	if err := os.MkdirAll(filepath.Dir(kernel), 0o755); err != nil {
		return "", "", fmt.Errorf("create shared kernel cache: %w", err)
	}
	temporary, err := os.CreateTemp(filepath.Dir(kernel), fingerprint+"-*.tmp")
	if err != nil {
		return "", "", fmt.Errorf("create temporary kernel: %w", err)
	}
	temporaryPath := temporary.Name()
	if err := temporary.Close(); err != nil {
		return "", "", err
	}
	_ = os.Remove(temporaryPath)
	defer os.Remove(temporaryPath)

	command := exec.CommandContext(ctx, dartExec, "compile", "kernel", entryPoint, "-o", temporaryPath)
	command.Dir = programDirectory
	command.Stdout = os.Stdout
	command.Stderr = os.Stderr
	if err := command.Run(); err != nil {
		return "", "", fmt.Errorf("compile shared Dart kernel: %w", err)
	}
	if err := os.Rename(temporaryPath, kernel); err != nil {
		if stat, statErr := os.Stat(kernel); statErr == nil && !stat.IsDir() {
			return kernel, fingerprint, nil
		}
		return "", "", fmt.Errorf("publish shared Dart kernel: %w", err)
	}
	return kernel, fingerprint, nil
}

// defaultDartBuildTarget returns the standard cache executable path for a
// program fingerprint.
//
// Example output:
//
//	.dart_tool/pulumi/cache/exe/program-<fingerprint>[.exe]
func defaultDartBuildTarget(programDirectory, entryPoint string) (string, error) {
	if strings.TrimSpace(programDirectory) == "" {
		return "", errors.New("program directory is required")
	}
	fingerprint, err := computeDartProgramFingerprint(programDirectory, entryPoint)
	if err != nil {
		return "", err
	}

	name := "program-" + fingerprint
	if runtime.GOOS == "windows" {
		name += ".exe"
	}
	return filepath.Join(programDirectory, ".dart_tool", "pulumi", "cache", "exe", name), nil
}

func (host *dartLanguageHost) ensureCompiledDartProgram(
	ctx context.Context,
	programDirectory string,
	entryPoint string,
	buildTarget string,
	reuseExisting bool,
) (string, error) {
	if strings.TrimSpace(programDirectory) == "" {
		return "", errors.New("program directory is required for compilation")
	}
	if strings.TrimSpace(entryPoint) == "" || strings.TrimSpace(entryPoint) == "." {
		return "", errors.New("program entry point is required for compilation")
	}
	if strings.TrimSpace(buildTarget) == "" {
		return "", errors.New("build target is required for compilation")
	}

	if reuseExisting {
		if stat, err := os.Stat(buildTarget); err == nil && !stat.IsDir() {
			logging.V(5).Infof("Reusing cached Dart executable: %s", buildTarget)
			if shouldEmitCompileCacheLogs() {
				logging.Infof("pulumi-language-dart: cache hit executable=%s", buildTarget)
			}
			return buildTarget, nil
		} else if err != nil && !os.IsNotExist(err) {
			return "", fmt.Errorf("failed to inspect cached executable %s: %w", buildTarget, err)
		}
	}

	if err := os.MkdirAll(filepath.Dir(buildTarget), 0o700); err != nil {
		return "", fmt.Errorf("failed to create build target directory: %w", err)
	}

	compileArgs := []string{"compile", "exe", entryPoint, "-o", buildTarget}
	if logging.V(5).Enabled() {
		logging.V(5).Infof("Compiling Dart Pulumi program: %s %s", host.exec, strings.Join(compileArgs, " "))
	}
	if shouldEmitCompileCacheLogs() {
		logging.Infof("pulumi-language-dart: cache miss compiling entrypoint=%s output=%s", entryPoint, buildTarget)
	}
	start := time.Now()

	cmd := exec.CommandContext(ctx, host.exec, compileArgs...)
	cmd.Dir = programDirectory
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		return "", err
	}
	if shouldEmitCompileCacheLogs() {
		logging.Infof("pulumi-language-dart: compile complete duration=%s output=%s", time.Since(start).Round(time.Millisecond), buildTarget)
	}

	return buildTarget, nil
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

func (host *dartLanguageHost) warmUpCompileCacheFromProgramInfo(
	ctx context.Context,
	info *pulumirpc.ProgramInfo,
	programDirectory string,
) error {
	runtimeOptions, err := parseDartRuntimeOptions(info)
	if err != nil {
		return err
	}

	// Binary executions do not use source compile caching.
	if host.binary != "" || runtimeOptions.binary != "" {
		return nil
	}
	if info != nil {
		if explicitEntry := strings.TrimSpace(info.GetEntryPoint()); explicitEntry != "" && explicitEntry != "." && filepath.Ext(explicitEntry) != "" {
			logging.V(5).Infof("GetRequiredPackages: skipping compile-cache warm-up for explicit file entrypoint %q", explicitEntry)
			return nil
		}
	}

	// Keep explicit buildTarget behavior owned by Run() to avoid surprising
	// semantics for fixed output paths.
	if runtimeOptions.buildTarget != "" {
		return nil
	}

	entryPoint := resolveProgramEntryPoint(info, ".", programDirectory)
	programDirectory, entryPoint = normalizeCompilationContext(programDirectory, entryPoint, info.GetRootDirectory())
	if entryPoint == "" || entryPoint == "." {
		logging.V(5).Infof("GetRequiredPackages: skipping compile-cache warm-up for non-concrete entrypoint %q", entryPoint)
		return nil
	}
	if filepath.Ext(entryPoint) == ".dart" && !strings.ContainsAny(entryPoint, `/\\`) && programDirectory != "" {
		if _, err := os.Stat(filepath.Join(programDirectory, entryPoint)); err != nil {
			logging.V(5).Infof("GetRequiredPackages: skipping compile-cache warm-up for unresolved relative entrypoint %q in %q", entryPoint, programDirectory)
			return nil
		}
	}

	buildTarget, err := defaultDartBuildTarget(programDirectory, entryPoint)
	if err != nil {
		return fmt.Errorf("failed to determine Dart build target: %w", err)
	}
	if _, ok := findSharedDartKernel(ctx, host.exec, programDirectory, entryPoint); ok {
		return nil
	}

	_, err = host.ensureCompiledDartProgram(ctx, programDirectory, entryPoint, buildTarget, true /*reuseExisting*/)
	if err != nil {
		return fmt.Errorf("failed to warm Dart compile cache: %w", err)
	}
	return nil
}

func (host *dartLanguageHost) GetRequiredPackages(
	ctx context.Context,
	req *pulumirpc.GetRequiredPackagesRequest,
) (*pulumirpc.GetRequiredPackagesResponse, error) {
	if req == nil || req.GetInfo() == nil {
		return nil, status.Error(codes.InvalidArgument, "missing program info in GetRequiredPackages request")
	}

	searchDir := req.GetInfo().GetProgramDirectory()
	if searchDir == "" {
		searchDir = req.GetInfo().GetRootDirectory()
	}
	if searchDir == "" {
		return nil, status.Error(codes.InvalidArgument, "program directory or root directory must be set in program info")
	}

	pubspecPath, err := findPubspecYaml(searchDir)
	if err != nil {
		logging.V(5).Infof("GetRequiredPackages: no pubspec found from %s: %v", searchDir, err)
		return &pulumirpc.GetRequiredPackagesResponse{}, nil
	}

	pubspec, err := readAndParsePubspec(pubspecPath)
	if err != nil {
		return nil, err
	}

	projectDirectory := strings.TrimSpace(req.GetInfo().GetRootDirectory())
	if projectDirectory == "" {
		projectDirectory = filepath.Dir(pubspecPath)
	}
	if projectDirectory == "" {
		projectDirectory = searchDir
	}
	if err := host.warmUpCompileCacheFromProgramInfo(ctx, req.GetInfo(), projectDirectory); err != nil {
		logging.V(3).Infof("GetRequiredPackages: warm-up compile cache skipped due to error: %v", err)
	}

	projectPackages, err := readProjectPackages(searchDir)
	if err != nil {
		logging.V(5).Infof("GetRequiredPackages: no Pulumi project packages found from %s: %v", searchDir, err)
		projectPackages = nil
	}

	pulumiPackages := codegen.DeterminePulumiPackages(pubspec.Dependencies)
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
			if version == "" {
				version = localPathDependencyVersion(pubspecPath, pkg[1])
			}
		}

		providerName := aliasName
		dependencySpec := ""
		if len(pkg) > 1 {
			dependencySpec = pkg[1]
		}
		if pluginName, pluginVersion := localPathDependencyPlugin(pubspecPath, dependencySpec); pluginName != "" {
			providerName = pluginName
			if pluginVersion != "" {
				version = pluginVersion
			}
		}
		server := ""
		var parameterization *pulumirpc.PackageParameterization
		if metadata, ok := readDartPluginMetadata(pubspecPath, pkg[0], pubspec.Dependencies[pkg[0]]); ok {
			providerName = metadata.Name
			server = metadata.Server
			if metadataVersion := normalizePackageDependencyVersion(metadata.Version); metadataVersion != "" {
				version = metadataVersion
			}
			parameterization = metadata.packageParameterization()
		}
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

	logging.V(5).Infof("GetRequiredPackages: resolved %d package dependencies for directory %q", len(packages), searchDir)
	for _, pkg := range packages {
		if pkg == nil {
			continue
		}
		logging.V(7).Infof("GetRequiredPackages: package name=%q kind=%q version=%q server=%q", pkg.Name, pkg.Kind, pkg.Version, pkg.Server)
		if pkg.Parameterization != nil {
			logging.V(7).Infof(
				"GetRequiredPackages: parameterization name=%q version=%q value=%s",
				pkg.Parameterization.Name, pkg.Parameterization.Version, pkg.Parameterization.Value)
		}
	}

	return &pulumirpc.GetRequiredPackagesResponse{Packages: packages}, nil
}

// GetRequiredPlugins computes the complete set of anticipated plugins required by a Dart program.
func (host *dartLanguageHost) GetRequiredPlugins(
	ctx context.Context,
	req *pulumirpc.GetRequiredPluginsRequest,
) (*pulumirpc.GetRequiredPluginsResponse, error) {
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}
	logging.V(5).Infof("GetRequiredPlugins: %v", req.GetProgram())

	info := req.GetInfo()
	if info == nil {
		info = &pulumirpc.ProgramInfo{
			ProgramDirectory: req.GetPwd(),
			EntryPoint:       req.GetProgram(),
		}
	}

	packagesResp, err := host.GetRequiredPackages(ctx, &pulumirpc.GetRequiredPackagesRequest{
		Info: info,
	})
	if err != nil {
		return nil, err
	}

	plugins := make([]*pulumirpc.PluginDependency, 0, len(packagesResp.GetPackages()))
	seen := map[string]struct{}{}
	for _, pkg := range packagesResp.GetPackages() {
		if pkg == nil {
			continue
		}
		name := strings.TrimSpace(pkg.GetName())
		if name == "" {
			continue
		}
		kind := strings.TrimSpace(pkg.GetKind())
		if kind == "" {
			kind = "resource"
		}
		key := name + "|" + kind + "|" + strings.TrimSpace(pkg.GetVersion()) + "|" + strings.TrimSpace(pkg.GetServer())
		if _, ok := seen[key]; ok {
			continue
		}
		seen[key] = struct{}{}

		plugins = append(plugins, &pulumirpc.PluginDependency{
			Name:      name,
			Kind:      kind,
			Version:   strings.TrimSpace(pkg.GetVersion()),
			Server:    strings.TrimSpace(pkg.GetServer()),
			Checksums: pkg.GetChecksums(),
		})
	}
	logging.V(5).Infof("GetRequiredPlugins: resolved %d plugins for program %q", len(plugins), req.GetProgram())
	for _, plugin := range plugins {
		if plugin == nil {
			continue
		}
		logging.V(7).Infof(
			"GetRequiredPlugins: plugin name=%q kind=%q version=%q server=%q",
			plugin.Name, plugin.Kind, plugin.Version, plugin.Server)
	}

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
	_ = ctx
	_ = engineClient
	logging.V(5).Infof("GetRequiredPlugins: Determining Pulumi packages")

	searchDir := "."
	if req != nil && strings.TrimSpace(req.GetPwd()) != "" {
		searchDir = req.GetPwd()
	}

	// Use pubspec dependency declarations as the deterministic plugin discovery source.
	pubspecPath, err := findPubspecYaml(searchDir)
	if err != nil {
		return nil, fmt.Errorf("failed to find pubspec.yaml: %v", err)
	}

	logging.V(5).Infof("Found pubspec.yaml at: %s", pubspecPath)

	// Read and parse the pubspec.yaml file
	pubspec, err := readAndParsePubspec(pubspecPath)
	if err != nil {
		logging.V(7).Infof("failed to find pubspec.yaml: %v", err)
		return nil, err
	}

	logging.V(7).Infof("Parsed pubspec: %+v", pubspec)

	if len(pubspec.Dependencies) == 0 {
		return nil, fmt.Errorf("no dependencies found in pubspec.yaml at %s", pubspecPath)
	}

	// Determine Pulumi packages
	packages := codegen.DeterminePulumiPackages(pubspec.Dependencies)

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
	if logging.V(5).Enabled() {
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
	return host.emitStartDebuggingWithConfig(ctx, engineClient, map[string]interface{}{
		"name":    name,
		"type":    "dart",
		"request": "attach",
		"port":    port,
		"connect": map[string]interface{}{
			"host": "127.0.0.1",
			"port": port,
		},
	}, fmt.Sprintf("on port %d", port))
}

func (host *dartLanguageHost) emitStartDebuggingWithConfig(
	ctx context.Context,
	engineClient pulumirpc.EngineClient,
	configMap map[string]interface{},
	message string,
) error {
	config, err := structpb.NewStruct(configMap)
	if err != nil {
		return fmt.Errorf("failed to serialize debugger config: %w", err)
	}

	_, err = engineClient.StartDebugging(ctx, &pulumirpc.StartDebuggingRequest{
		Config:  config,
		Message: message,
	})
	if err != nil {
		return fmt.Errorf("unable to start debugging: %w", err)
	}

	return nil
}

// Run executes

var vmServiceURIRegex = regexp.MustCompile(`(?:https?|ws)://[^\s]+`)

// parseVMServiceURIFromLine extracts the first VM service/devtools URI from a
// runtime output line when present.
func parseVMServiceURIFromLine(line string) string {
	line = strings.TrimSpace(line)
	if line == "" {
		return ""
	}

	lower := strings.ToLower(line)
	if !strings.Contains(lower, "vm service") && !strings.Contains(lower, "dart devtools") {
		return ""
	}

	uri := vmServiceURIRegex.FindString(line)
	uri = strings.TrimRight(uri, ".,);")
	return strings.TrimSpace(uri)
}

// debugAttachMessageFromVMServiceURI formats the Pulumi wait message suffix for
// debugger attach UX.
func debugAttachMessageFromVMServiceURI(vmServiceURI string) string {
	u, err := url.Parse(strings.TrimSpace(vmServiceURI))
	if err != nil || u == nil || u.Host == "" {
		return fmt.Sprintf("on vm service %s", vmServiceURI)
	}
	return fmt.Sprintf("on vm service %s", u.Host)
}

// vmServicePortFromURI extracts the VM service port from a parsed URI string.
func vmServicePortFromURI(vmServiceURI string) string {
	u, err := url.Parse(strings.TrimSpace(vmServiceURI))
	if err != nil || u == nil {
		return ""
	}
	return strings.TrimSpace(u.Port())
}

// vmServiceEndpointFromURI extracts host:port from a VM service URI.
//
// Example:
//
//	ws://127.0.0.1:44651/abc= -> 127.0.0.1:44651
func vmServiceEndpointFromURI(vmServiceURI string) string {
	u, err := url.Parse(strings.TrimSpace(vmServiceURI))
	if err != nil || u == nil {
		return ""
	}
	return strings.TrimSpace(u.Host)
}

type vmServiceURIWatcher struct {
	target io.Writer
	notify func(string)

	mu      sync.Mutex
	pending string
}

// rewriteDebuggerOutputLine rewrites verbose Dart runtime debugger lines into
// concise CLI-friendly forms.
//
// Examples:
//   - "The Dart VM service is listening on ..." -> "vm service: <host:port>"
//   - "The Dart DevTools debugger and profiler is available at: ..."
//     -> "devtools profiler: <host:port>"
func rewriteDebuggerOutputLine(line string) string {
	trimmed := strings.TrimSpace(line)
	switch {
	case strings.HasPrefix(trimmed, "The Dart DevTools debugger and profiler is available at:"):
		if uri := parseVMServiceURIFromLine(trimmed); uri != "" {
			if endpoint := vmServiceEndpointFromURI(uri); endpoint != "" {
				return "devtools profiler: " + endpoint
			}
			return "devtools profiler: " + uri
		}
		return "devtools profiler"
	case strings.HasPrefix(trimmed, "The Dart VM service is listening on"):
		if uri := parseVMServiceURIFromLine(trimmed); uri != "" {
			if endpoint := vmServiceEndpointFromURI(uri); endpoint != "" {
				return "vm service: " + endpoint
			}
			return "vm service: " + uri
		}
		return "vm service"
	default:
		return line
	}
}

func (w *vmServiceURIWatcher) Write(p []byte) (int, error) {
	n := len(p)
	if n == 0 {
		return 0, nil
	}

	w.mu.Lock()
	defer w.mu.Unlock()

	w.pending += string(p)
	for {
		idx := strings.IndexByte(w.pending, '\n')
		if idx < 0 {
			break
		}
		line := strings.TrimSuffix(w.pending[:idx], "\r")
		w.pending = w.pending[idx+1:]
		if uri := parseVMServiceURIFromLine(line); uri != "" {
			w.notify(uri)
		}
		rewritten := rewriteDebuggerOutputLine(line)
		if _, err := io.WriteString(w.target, rewritten+"\n"); err != nil {
			return n, err
		}
	}
	return n, nil
}

// runResponseForProcessError converts process failures into a Pulumi RunResponse
// with user-facing diagnostics.
func runResponseForProcessError(err error) *pulumirpc.RunResponse {
	if exiterr, ok := err.(*exec.ExitError); ok {
		if status, stok := exiterr.Sys().(syscall.WaitStatus); stok {
			if status.ExitStatus() == dartProcessExitedAfterShowingUserActionableMessage {
				return &pulumirpc.RunResponse{Error: "", Bail: true}
			}

			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("Program exited with non-zero exit code: %d\n %v", status.ExitStatus(), err),
			}
		}
		return &pulumirpc.RunResponse{
			Error: fmt.Sprintf("Program exited unexpectedly: %v", exiterr),
		}
	}

	return &pulumirpc.RunResponse{
		Error: fmt.Sprintf("Problem executing program (could not run language executor): %v", err),
	}
}

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

	programDirectory := resolveProgramDirectory(req.GetInfo(), req.GetPwd())
	entryPoint := resolveProgramEntryPoint(req.GetInfo(), req.GetProgram(), programDirectory)
	fallbackRoot := req.GetPwd()
	if fallbackRoot == "" && req.GetInfo() != nil {
		fallbackRoot = req.GetInfo().GetRootDirectory()
	}
	programDirectory, entryPoint = normalizeCompilationContext(programDirectory, entryPoint, fallbackRoot)
	runtimeOptions, err := parseDartRuntimeOptions(req.GetInfo())
	if err != nil {
		return nil, err
	}

	executable := host.exec
	args := []string{}

	if host.binary != "" && (runtimeOptions.binary != "" || runtimeOptions.buildTarget != "") {
		return nil, errors.New("host --binary cannot be combined with runtime options binary/buildTarget")
	}

	if req.GetAttachDebugger() {
		if host.binary != "" || runtimeOptions.binary != "" {
			return &pulumirpc.RunResponse{
				Error: "attach debugger is not supported with precompiled binaries; run from source instead",
			}, nil
		}

		executable = host.exec
		args = append(args, "--enable-vm-service=0", "--pause-isolates-on-start", "--disable-service-auth-codes", "run")
		if entryPoint != "" && entryPoint != "." {
			args = append(args, entryPoint)
		}
	} else {
		if host.binary != "" {
			executable = host.binary
		} else if runtimeOptions.binary != "" {
			executable = runtimeOptions.binary
		} else {
			if runtimeOptions.buildTarget != "" && (entryPoint == "" || entryPoint == ".") {
				return nil, errors.New("runtime option buildTarget requires a concrete Dart entry point")
			}

			if entryPoint != "" && entryPoint != "." {
				if kernel, ok := findSharedDartKernel(runCtx, host.exec, programDirectory, entryPoint); ok {
					executable = host.exec
					args = append(args, "run", kernel)
				} else {
					buildTarget := normalizeDartBuildTargetPath(programDirectory, runtimeOptions.buildTarget)
					reuseExisting := runtimeOptions.buildTarget == ""
					if buildTarget == "" {
						buildTarget, err = defaultDartBuildTarget(programDirectory, entryPoint)
						if err != nil {
							return nil, err
						}
					}

					executable, err = host.ensureCompiledDartProgram(runCtx, programDirectory, entryPoint, buildTarget, reuseExisting)
					if err != nil {
						return &pulumirpc.RunResponse{
							Error: fmt.Sprintf("Problem compiling program: %v", err),
						}, nil
					}
				}
			}

			if executable == host.exec && len(args) == 0 {
				args = append(args, "run")
				if entryPoint != "" && entryPoint != "." {
					args = append(args, entryPoint)
				}
			}
		}
	}

	if len(req.GetArgs()) > 0 {
		args = append(args, req.GetArgs()...)
	}

	if logging.V(5).Enabled() {
		commandStr := strings.Join(args, " ")
		logging.V(5).Infoln("Language host launching process: ", executable, commandStr)
	}

	// Now simply spawn a process to execute the requested program, wiring up stdout/stderr directly.
	cmd := exec.CommandContext(runCtx, executable, args...)
	if programDirectory != "" {
		cmd.Dir = programDirectory
	}
	cmd.Env = host.constructEnv(req, config, configSecretKeys)

	if req.GetAttachDebugger() {
		engineClient, closer, err := host.connectToEngine()
		if err != nil {
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("problem connecting engine for debugging: %v", err),
			}, nil
		}
		defer closer.Close()

		vmServiceURIChan := make(chan string, 1)
		var notifyVMServiceURIOnce sync.Once
		notifyVMServiceURI := func(uri string) {
			if strings.TrimSpace(uri) == "" {
				return
			}
			notifyVMServiceURIOnce.Do(func() {
				vmServiceURIChan <- strings.TrimSpace(uri)
			})
		}
		cmd.Stdout = &vmServiceURIWatcher{target: os.Stdout, notify: notifyVMServiceURI}
		cmd.Stderr = &vmServiceURIWatcher{target: os.Stderr, notify: notifyVMServiceURI}

		if err := cmd.Start(); err != nil {
			return runResponseForProcessError(err), nil
		}

		runDone := make(chan error, 1)
		go func() {
			runDone <- cmd.Wait()
		}()

		var vmServiceURI string
		select {
		case vmServiceURI = <-vmServiceURIChan:
		case err := <-runDone:
			if err != nil {
				return runResponseForProcessError(err), nil
			}
			return &pulumirpc.RunResponse{}, nil
		case <-runCtx.Done():
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("problem waiting for debugger attach: %v", runCtx.Err()),
			}, nil
		case <-time.After(2 * time.Minute):
			if cmd.Process != nil {
				_ = cmd.Process.Kill()
			}
			return &pulumirpc.RunResponse{
				Error: "problem waiting for debugger attach: timed out waiting for Dart VM service URI",
			}, nil
		}

		if err := host.emitStartDebuggingWithConfig(
			ctx,
			engineClient,
			map[string]interface{}{
				"name":         "Pulumi: Program (Dart)",
				"type":         "dart",
				"request":      "attach",
				"vmServiceUri": vmServiceURI,
			},
			debugAttachMessageFromVMServiceURI(vmServiceURI),
		); err != nil {
			if cmd.Process != nil {
				_ = cmd.Process.Kill()
			}
			return &pulumirpc.RunResponse{
				Error: fmt.Sprintf("problem starting debugger: %v", err),
			}, nil
		}
		if endpoint := vmServiceEndpointFromURI(vmServiceURI); endpoint != "" {
			logging.Infof("pulumi-language-dart: debugger endpoint=%s", endpoint)
		} else if port := vmServicePortFromURI(vmServiceURI); port != "" {
			logging.Infof("pulumi-language-dart: debugger endpoint=127.0.0.1:%s", port)
		}

		if err := <-runDone; err != nil {
			return runResponseForProcessError(err), nil
		}
		return &pulumirpc.RunResponse{}, nil
	}

	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		return runResponseForProcessError(err), nil
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
	if req == nil {
		return status.Error(codes.InvalidArgument, "request is required")
	}

	programDirectory := req.GetDirectory()
	if info := req.GetInfo(); info != nil && info.GetProgramDirectory() != "" {
		programDirectory = info.GetProgramDirectory()
	}
	if programDirectory == "" {
		return status.Error(codes.InvalidArgument, "program directory is required")
	}

	closer, stdout, stderr, err := rpcutil.MakeInstallDependenciesStreams(server, req.IsTerminal)
	if err != nil {
		return err
	}
	defer closer.Close()

	stdout.Write([]byte("Installing dependencies...\n\n"))

	cmd := exec.Command(host.exec, "pub", "get")
	cmd.Dir = programDirectory
	cmd.Env = os.Environ()
	var diagnostics bytes.Buffer
	cmd.Stdout = io.MultiWriter(stdout, &diagnostics)
	cmd.Stderr = io.MultiWriter(stderr, &diagnostics)

	if err := cmd.Run(); err != nil {
		return fmt.Errorf(
			"`dart pub get` failed to install dependencies: %w: %s",
			err,
			strings.TrimSpace(diagnostics.String()),
		)
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

// Template allows the language runtime to perform additional templating for a new project.
func (host *dartLanguageHost) Template(
	ctx context.Context, req *pulumirpc.TemplateRequest,
) (*pulumirpc.TemplateResponse, error) {
	_ = ctx
	if req == nil {
		return &pulumirpc.TemplateResponse{}, nil
	}

	programDir := resolveProgramDirectory(req.GetInfo())
	if programDir == "" {
		return &pulumirpc.TemplateResponse{}, nil
	}

	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec, err := readAndParsePubspec(pubspecPath)
	if err != nil || pubspec == nil {
		return &pulumirpc.TemplateResponse{}, nil
	}
	if pubspec.Dependencies == nil {
		pubspec.Dependencies = map[string]interface{}{}
	}

	currentPulumiDep, hasPulumiDependency := pubspec.Dependencies["pulumi"]
	rewritePulumi := environmentFlag("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", true)
	forcePulumiOverride := environmentFlag("PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE", false)
	if hasPulumiDependency && !codegen.ShouldRewriteTemplatePulumiDependency(currentPulumiDep, rewritePulumi) {
		if codegen.IsSourceDependencySpec(currentPulumiDep) {
			if codegen.ShouldApplyPulumiDependencyOverride(pubspec, forcePulumiOverride) {
				if pubspec.DependencyOverrides == nil {
					pubspec.DependencyOverrides = map[string]interface{}{}
				}
				pubspec.DependencyOverrides["pulumi"] = currentPulumiDep
			}
			pubspecBytes, err := yaml.Marshal(pubspec)
			if err != nil {
				return nil, fmt.Errorf("failed to marshal pubspec.yaml in template hook: %w", err)
			}
			if err := os.WriteFile(pubspecPath, pubspecBytes, 0o600); err != nil {
				return nil, fmt.Errorf("failed to write pubspec.yaml in template hook: %w", err)
			}
		}
		return &pulumirpc.TemplateResponse{}, nil
	}

	pulumiSpec := configuredPulumiDependency()
	pubspec.Dependencies["pulumi"] = pulumiSpec
	if codegen.IsSourceDependencySpec(pulumiSpec) {
		if codegen.ShouldApplyPulumiDependencyOverride(pubspec, forcePulumiOverride) {
			if pubspec.DependencyOverrides == nil {
				pubspec.DependencyOverrides = map[string]interface{}{}
			}
			pubspec.DependencyOverrides["pulumi"] = pulumiSpec
		}
	}

	// When a local pulumi path is used, prefer local source dependencies for any
	// pulumi_* packages referenced by the template if those package directories are
	// present in the same repository. This prevents transitive version constraint
	// conflicts before packages are published to pub.dev.
	if pulumiPath, ok := codegen.DependencySpecPath(pulumiSpec); ok {
		if filepath.IsAbs(pulumiPath) {
			repoRoot := filepath.Dir(pulumiPath)
			for depName, depSpec := range pubspec.Dependencies {
				moduleDir := codegen.DependencyPackageDirFromDartPackageName(depName)
				if moduleDir == "" {
					continue
				}
				if existingPath, hasPath := codegen.DependencySpecPath(depSpec); hasPath {
					if filepath.IsAbs(existingPath) || strings.HasPrefix(existingPath, ".") {
						continue
					}
				}
				candidate := filepath.Join(repoRoot, "packages", moduleDir)
				if stat, err := os.Stat(candidate); err == nil && stat.IsDir() {
					pubspec.Dependencies[depName] = map[string]string{
						"path": filepath.ToSlash(candidate),
					}
				}
			}
		}
	}

	pubspecBytes, err := yaml.Marshal(pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal pubspec.yaml in template hook: %w", err)
	}
	if err := os.WriteFile(pubspecPath, pubspecBytes, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write pubspec.yaml in template hook: %w", err)
	}

	return &pulumirpc.TemplateResponse{}, nil
}

// About returns information about the runtime for the language.
func (host *dartLanguageHost) About(ctx context.Context, req *pulumirpc.AboutRequest) (*pulumirpc.AboutResponse, error) {
	executable := strings.TrimSpace(host.exec)
	if executable == "" {
		var err error
		executable, err = exec.LookPath("dart")
		if err != nil {
			return nil, fmt.Errorf("could not find Dart executable: %w", err)
		}
	}

	cmd := exec.CommandContext(ctx, executable, "--version")
	out, err := cmd.CombinedOutput()
	if err != nil {
		return nil, fmt.Errorf("failed to execute '%s --version': %w", executable, err)
	}

	return &pulumirpc.AboutResponse{
		Executable: executable,
		Version:    strings.TrimSpace(string(out)),
	}, nil
}

// GetProgramDependencies returns the dependencies of the Dart program.
func (host *dartLanguageHost) GetProgramDependencies(
	ctx context.Context, req *pulumirpc.GetProgramDependenciesRequest,
) (*pulumirpc.GetProgramDependenciesResponse, error) {
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}

	programDirectory := resolveProgramDirectory(req.GetInfo(), req.GetPwd())
	if programDirectory == "" {
		if program := strings.TrimSpace(req.GetProgram()); program != "" {
			programDirectory = filepath.Dir(program)
		}
	}
	if programDirectory == "" {
		return nil, status.Error(codes.InvalidArgument, "program directory is required")
	}

	cmd := exec.CommandContext(ctx, host.exec, "pub", "deps", "--json")
	cmd.Dir = programDirectory
	out, err := cmd.Output()
	if err != nil {
		return nil, fmt.Errorf("failed to get dependencies: %w", err)
	}

	type packageInfo struct {
		Name               string   `json:"name"`
		Version            string   `json:"version"`
		Kind               string   `json:"kind"`
		DirectDependencies []string `json:"directDependencies"`
	}
	type dependenciesPayload struct {
		Root     string        `json:"root"`
		Packages []packageInfo `json:"packages"`
	}

	var payload dependenciesPayload
	if err := json.Unmarshal(out, &payload); err != nil {
		return nil, fmt.Errorf("failed to parse dependency output: %w", err)
	}

	packagesByName := map[string]packageInfo{}
	var root packageInfo
	for _, pkg := range payload.Packages {
		packagesByName[pkg.Name] = pkg
		if pkg.Kind == "root" || (payload.Root != "" && pkg.Name == payload.Root) {
			root = pkg
		}
	}

	dependencyByName := map[string]*pulumirpc.DependencyInfo{}
	if req.GetTransitiveDependencies() {
		for _, pkg := range payload.Packages {
			if pkg.Kind == "root" || pkg.Name == payload.Root {
				continue
			}
			if strings.TrimSpace(pkg.Name) == "" {
				continue
			}
			dependencyByName[pkg.Name] = &pulumirpc.DependencyInfo{
				Name:    pkg.Name,
				Version: pkg.Version,
			}
		}
	} else {
		for _, depName := range root.DirectDependencies {
			if strings.TrimSpace(depName) == "" {
				continue
			}
			pkg, ok := packagesByName[depName]
			if !ok {
				dependencyByName[depName] = &pulumirpc.DependencyInfo{Name: depName}
				continue
			}
			dependencyByName[depName] = &pulumirpc.DependencyInfo{
				Name:    depName,
				Version: pkg.Version,
			}
		}
	}

	names := make([]string, 0, len(dependencyByName))
	for name := range dependencyByName {
		names = append(names, name)
	}
	sort.Strings(names)

	dependencies := make([]*pulumirpc.DependencyInfo, 0, len(names))
	for _, name := range names {
		dependencies = append(dependencies, dependencyByName[name])
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

	entryPoint := resolveProgramEntryPoint(req.GetInfo(), ".", cmdDir)
	fallbackRoot := req.GetPwd()
	if req.GetInfo() != nil && fallbackRoot == "" {
		fallbackRoot = req.GetInfo().GetRootDirectory()
	}
	cmdDir, entryPoint = normalizeCompilationContext(cmdDir, entryPoint, fallbackRoot)

	dartArgs := []string{"run"}
	if entryPoint != "" && entryPoint != "." {
		dartArgs = append(dartArgs, entryPoint)
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

func (host *dartLanguageHost) Pack(ctx context.Context, req *pulumirpc.PackRequest) (*pulumirpc.PackResponse, error) {
	_ = ctx
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}

	packageDir := strings.TrimSpace(req.GetPackageDirectory())
	if packageDir == "" {
		return nil, status.Error(codes.InvalidArgument, "package directory is required")
	}
	destinationDir := strings.TrimSpace(req.GetDestinationDirectory())
	if destinationDir == "" {
		return nil, status.Error(codes.InvalidArgument, "destination directory is required")
	}

	packageDirInfo, err := os.Stat(packageDir)
	if err != nil {
		if os.IsNotExist(err) {
			return nil, status.Error(codes.InvalidArgument, "package directory does not exist")
		}
		return nil, fmt.Errorf("failed to stat package directory: %w", err)
	}
	if !packageDirInfo.IsDir() {
		return nil, status.Error(codes.InvalidArgument, "package directory must be a directory")
	}

	if err := os.MkdirAll(destinationDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create destination directory: %w", err)
	}

	packageName := codegen.SanitizeDartIdentifier(filepath.Base(packageDir))
	if pubspec, err := readAndParsePubspec(filepath.Join(packageDir, "pubspec.yaml")); err == nil && pubspec != nil && pubspec.Name != "" {
		packageName = codegen.SanitizeDartIdentifier(pubspec.Name)
	}

	// Pub path dependencies must point at directories. A compressed archive is
	// not a usable Dart package artifact, even though it satisfies this
	// language-neutral RPC's filesystem-path contract.
	packageDigest, err := directoryContentDigest(packageDir)
	if err != nil {
		return nil, fmt.Errorf("failed to fingerprint package artifact: %w", err)
	}
	artifactPath := filepath.Join(destinationDir, packageName+"-"+packageDigest[:12])
	if err := os.Mkdir(artifactPath, 0o700); err != nil {
		if !os.IsExist(err) {
			return nil, fmt.Errorf("failed to create package artifact: %w", err)
		}
		existingDigest, err := directoryContentDigest(artifactPath)
		if err != nil || existingDigest != packageDigest {
			return nil, fmt.Errorf("package artifact path collision at %q", artifactPath)
		}
		return &pulumirpc.PackResponse{ArtifactPath: artifactPath}, nil
	}
	if err := copyDirContents(packageDir, artifactPath); err != nil {
		return nil, fmt.Errorf("failed to copy package artifact: %w", err)
	}

	return &pulumirpc.PackResponse{
		ArtifactPath: artifactPath,
	}, nil
}

func directoryContentDigest(root string) (string, error) {
	hash := sha256.New()
	err := filepath.WalkDir(root, func(path string, entry os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if path != root && entry.IsDir() && (entry.Name() == ".dart_tool" || entry.Name() == "build") {
			return filepath.SkipDir
		}
		if entry.IsDir() {
			return nil
		}
		if entry.Name() == ".DS_Store" {
			return nil
		}
		relativePath, err := filepath.Rel(root, path)
		if err != nil {
			return err
		}
		if _, err := io.WriteString(hash, filepath.ToSlash(relativePath)+"\x00"); err != nil {
			return err
		}
		file, err := os.Open(path)
		if err != nil {
			return err
		}
		_, copyErr := io.Copy(hash, file)
		closeErr := file.Close()
		if copyErr != nil {
			return copyErr
		}
		if closeErr != nil {
			return closeErr
		}
		_, err = hash.Write([]byte{0})
		return err
	})
	if err != nil {
		return "", err
	}
	return hex.EncodeToString(hash.Sum(nil)), nil
}

func (host *dartLanguageHost) Link(
	ctx context.Context, req *pulumirpc.LinkRequest,
) (*pulumirpc.LinkResponse, error) {
	info := req.GetInfo()
	if info == nil {
		return nil, errors.New("missing program info in Link request")
	}

	pubspecPath := filepath.Join(info.GetProgramDirectory(), "pubspec.yaml")
	pubspec, err := readAndParsePubspec(pubspecPath)
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

		alias := codegen.SanitizeDartIdentifier(dep.GetPackage().GetName())
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
