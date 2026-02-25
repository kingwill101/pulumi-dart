// Copyright 2026, Pulumi Corporation.
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
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"sync"
	"testing"
	"time"

	"github.com/pulumi/pulumi/sdk/v3/go/common/apitype"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/metadata"
)

func TestRunPluginAnalyzerPolicyProxyConfigEnv(t *testing.T) {
	execPath := newHelperDartExec(t)
	host := &dartLanguageHost{
		exec:          execPath,
		engineAddress: "engine-address-not-used",
	}

	programDir := t.TempDir()
	req := &pulumirpc.RunPluginRequest{
		Pwd:  t.TempDir(),
		Args: []string{"--policy-arg"},
		Env: []string{
			"EXPECTED_PLUGIN_ARG=--policy-arg",
			"EXPECTED_PROGRAM_DIR=" + programDir,
			"EXPECTED_PULUMI_ORGANIZATION=acme",
			"EXPECTED_PULUMI_PROJECT=proj",
			"EXPECTED_PULUMI_STACK=dev",
			"EXPECTED_PULUMI_DRY_RUN=true",
			"EXPECTED_CONFIG_KEY=proj:key",
			"EXPECTED_CONFIG_VALUE=value",
		},
		Kind: string(apitype.AnalyzerPlugin),
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	}

	server := newCaptureRunPluginServer(context.Background())
	errCh := make(chan error, 1)
	go func() {
		errCh <- host.RunPlugin(req, server)
	}()

	err := server.configurePolicyProxyWhenReady(t, 10*time.Second, &pulumirpc.AnalyzerStackConfigureRequest{
		Organization: "acme",
		Project:      "proj",
		Stack:        "dev",
		DryRun:       true,
		Config: map[string]string{
			"proj:key": "value",
		},
	})
	require.NoError(t, err)

	select {
	case err := <-errCh:
		require.NoError(t, err)
	case <-time.After(15 * time.Second):
		t.Fatal("timed out waiting for RunPlugin to return")
	}

	assert.Empty(t, server.exitCodes())
}

func TestRunPluginAnalyzerFailureStreamsExitCode(t *testing.T) {
	execPath := newHelperDartExec(t)
	host := &dartLanguageHost{
		exec:          execPath,
		engineAddress: "engine-address-not-used",
	}

	programDir := t.TempDir()
	req := &pulumirpc.RunPluginRequest{
		Pwd:  t.TempDir(),
		Args: []string{"--policy-arg"},
		Env: []string{
			"EXPECTED_PLUGIN_ARG=--policy-arg",
			"EXPECTED_PROGRAM_DIR=" + programDir,
			"EXPECTED_PULUMI_ORGANIZATION=expected-org",
			"EXPECTED_PULUMI_PROJECT=proj",
			"EXPECTED_PULUMI_STACK=dev",
			"EXPECTED_PULUMI_DRY_RUN=true",
			"EXPECTED_CONFIG_KEY=proj:key",
			"EXPECTED_CONFIG_VALUE=value",
		},
		Kind: string(apitype.AnalyzerPlugin),
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	}

	server := newCaptureRunPluginServer(context.Background())
	errCh := make(chan error, 1)
	go func() {
		errCh <- host.RunPlugin(req, server)
	}()

	err := server.configurePolicyProxyWhenReady(t, 10*time.Second, &pulumirpc.AnalyzerStackConfigureRequest{
		Organization: "wrong-org",
		Project:      "proj",
		Stack:        "dev",
		DryRun:       true,
		Config: map[string]string{
			"proj:key": "value",
		},
	})
	require.NoError(t, err)

	select {
	case err := <-errCh:
		require.NoError(t, err)
	case <-time.After(15 * time.Second):
		t.Fatal("timed out waiting for RunPlugin to return")
	}

	assert.Equal(t, []int32{17}, server.exitCodes())
}

func configurePolicyProxy(port int, req *pulumirpc.AnalyzerStackConfigureRequest) error {
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	conn, err := grpc.NewClient(
		fmt.Sprintf("127.0.0.1:%d", port),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return err
	}
	defer conn.Close()

	client := pulumirpc.NewAnalyzerClient(conn)
	_, err = client.ConfigureStack(ctx, req)
	return err
}

type captureRunPluginServer struct {
	ctx       context.Context
	mu        sync.Mutex
	responses []*pulumirpc.RunPluginResponse
}

func newCaptureRunPluginServer(ctx context.Context) *captureRunPluginServer {
	return &captureRunPluginServer{ctx: ctx}
}

func (s *captureRunPluginServer) Send(resp *pulumirpc.RunPluginResponse) error {
	s.mu.Lock()
	defer s.mu.Unlock()
	s.responses = append(s.responses, cloneRunPluginResponse(resp))
	return nil
}

func cloneRunPluginResponse(resp *pulumirpc.RunPluginResponse) *pulumirpc.RunPluginResponse {
	switch out := resp.Output.(type) {
	case *pulumirpc.RunPluginResponse_Stdout:
		b := append([]byte(nil), out.Stdout...)
		return &pulumirpc.RunPluginResponse{
			Output: &pulumirpc.RunPluginResponse_Stdout{Stdout: b},
		}
	case *pulumirpc.RunPluginResponse_Stderr:
		b := append([]byte(nil), out.Stderr...)
		return &pulumirpc.RunPluginResponse{
			Output: &pulumirpc.RunPluginResponse_Stderr{Stderr: b},
		}
	case *pulumirpc.RunPluginResponse_Exitcode:
		return &pulumirpc.RunPluginResponse{
			Output: &pulumirpc.RunPluginResponse_Exitcode{Exitcode: out.Exitcode},
		}
	default:
		return &pulumirpc.RunPluginResponse{}
	}
}

func (s *captureRunPluginServer) waitForProxyPort(t *testing.T, timeout time.Duration) int {
	t.Helper()
	deadline := time.Now().Add(timeout)
	portRE := regexp.MustCompile(`(?m)^(\d+)$`)

	for time.Now().Before(deadline) {
		stdout := s.stdout()
		matches := portRE.FindStringSubmatch(stdout)
		if len(matches) == 2 {
			port, err := strconv.Atoi(matches[1])
			require.NoError(t, err)
			return port
		}
		time.Sleep(10 * time.Millisecond)
	}

	t.Fatalf("timed out waiting for policy proxy port; stdout=%q", s.stdout())
	return 0
}

func (s *captureRunPluginServer) configurePolicyProxyWhenReady(
	t *testing.T,
	timeout time.Duration,
	req *pulumirpc.AnalyzerStackConfigureRequest,
) error {
	t.Helper()

	deadline := time.Now().Add(timeout)
	portRE := regexp.MustCompile(`\b([1-9][0-9]{1,4})\b`)
	seen := map[int]bool{}
	var lastErr error

	for time.Now().Before(deadline) {
		combined := s.stdout() + "\n" + s.stderr()
		matches := portRE.FindAllStringSubmatch(combined, -1)
		for _, m := range matches {
			port, err := strconv.Atoi(m[1])
			if err != nil || port <= 0 || port > 65535 {
				continue
			}
			if seen[port] {
				continue
			}
			seen[port] = true

			if err := configurePolicyProxy(port, req); err == nil {
				return nil
			} else {
				lastErr = err
			}
		}
		time.Sleep(10 * time.Millisecond)
	}

	return fmt.Errorf(
		"timed out configuring policy proxy; stdout=%q stderr=%q lastErr=%v",
		s.stdout(),
		s.stderr(),
		lastErr,
	)
}

func (s *captureRunPluginServer) stdout() string {
	s.mu.Lock()
	defer s.mu.Unlock()

	var b strings.Builder
	for _, resp := range s.responses {
		out, ok := resp.Output.(*pulumirpc.RunPluginResponse_Stdout)
		if ok {
			b.Write(out.Stdout)
		}
	}
	return b.String()
}

func (s *captureRunPluginServer) exitCodes() []int32 {
	s.mu.Lock()
	defer s.mu.Unlock()

	var codes []int32
	for _, resp := range s.responses {
		out, ok := resp.Output.(*pulumirpc.RunPluginResponse_Exitcode)
		if ok {
			codes = append(codes, out.Exitcode)
		}
	}
	return codes
}

func (s *captureRunPluginServer) stderr() string {
	s.mu.Lock()
	defer s.mu.Unlock()

	var b strings.Builder
	for _, resp := range s.responses {
		out, ok := resp.Output.(*pulumirpc.RunPluginResponse_Stderr)
		if ok {
			b.Write(out.Stderr)
		}
	}
	return b.String()
}

func (s *captureRunPluginServer) SetHeader(metadata.MD) error  { return nil }
func (s *captureRunPluginServer) SendHeader(metadata.MD) error { return nil }
func (s *captureRunPluginServer) SetTrailer(metadata.MD)       {}
func (s *captureRunPluginServer) Context() context.Context     { return s.ctx }
func (s *captureRunPluginServer) SendMsg(interface{}) error    { return nil }
func (s *captureRunPluginServer) RecvMsg(interface{}) error    { return io.EOF }

func newHelperDartExec(t *testing.T) string {
	t.Helper()

	testBin, err := os.Executable()
	require.NoError(t, err)

	scriptPath := filepath.Join(t.TempDir(), "fake-dart.sh")
	script := fmt.Sprintf(
		"#!/usr/bin/env bash\nGO_WANT_HELPER_PROCESS=1 %q -test.run '^TestRunPluginAnalyzerHelperProcess$' -- \"$@\"\n",
		testBin,
	)
	err = os.WriteFile(scriptPath, []byte(script), 0o700)
	require.NoError(t, err)

	return scriptPath
}

func TestRunPluginAnalyzerHelperProcess(t *testing.T) {
	if os.Getenv("GO_WANT_HELPER_PROCESS") != "1" {
		return
	}

	exitCode, err := runAnalyzerHelperProcess()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		if exitCode == 0 {
			exitCode = 18
		}
	}
	os.Exit(exitCode)
}

type analyzerHelperServer struct {
	pulumirpc.UnimplementedAnalyzerServer

	done chan struct{}
	once sync.Once
}

func (s *analyzerHelperServer) ConfigureStack(
	context.Context,
	*pulumirpc.AnalyzerStackConfigureRequest,
) (*pulumirpc.AnalyzerStackConfigureResponse, error) {
	s.once.Do(func() {
		close(s.done)
	})
	return &pulumirpc.AnalyzerStackConfigureResponse{}, nil
}

func runAnalyzerHelperProcess() (int, error) {
	args := helperProcessArgs()
	if len(args) == 0 || args[0] != "run" {
		return 17, fmt.Errorf("expected first arg to be 'run', got: %v", args)
	}

	if expectedArg := os.Getenv("EXPECTED_PLUGIN_ARG"); expectedArg != "" {
		if len(args) < 2 || args[1] != expectedArg {
			return 17, fmt.Errorf("expected arg %q, got: %v", expectedArg, args)
		}
	}
	if expectedProgramDir := os.Getenv("EXPECTED_PROGRAM_DIR"); expectedProgramDir != "" {
		if args[len(args)-1] != expectedProgramDir {
			return 17, fmt.Errorf("expected last arg %q, got: %v", expectedProgramDir, args)
		}
	}

	var mismatches []string
	maybeCheckEnv := func(expectedEnvVar string, actualEnvVar string) {
		if expected := os.Getenv(expectedEnvVar); expected != "" {
			if actual := os.Getenv(actualEnvVar); actual != expected {
				mismatches = append(mismatches, fmt.Sprintf("%s=%q (want %q)", actualEnvVar, actual, expected))
			}
		}
	}

	maybeCheckEnv("EXPECTED_PULUMI_ORGANIZATION", "PULUMI_ORGANIZATION")
	maybeCheckEnv("EXPECTED_PULUMI_PROJECT", "PULUMI_PROJECT")
	maybeCheckEnv("EXPECTED_PULUMI_STACK", "PULUMI_STACK")
	maybeCheckEnv("EXPECTED_PULUMI_DRY_RUN", "PULUMI_DRY_RUN")

	expectedConfigKey := os.Getenv("EXPECTED_CONFIG_KEY")
	expectedConfigValue := os.Getenv("EXPECTED_CONFIG_VALUE")
	if expectedConfigKey != "" {
		configRaw := os.Getenv("PULUMI_CONFIG")
		var cfg map[string]string
		if err := json.Unmarshal([]byte(configRaw), &cfg); err != nil {
			mismatches = append(mismatches, fmt.Sprintf("invalid PULUMI_CONFIG: %v", err))
		} else if actual := cfg[expectedConfigKey]; actual != expectedConfigValue {
			mismatches = append(
				mismatches,
				fmt.Sprintf("PULUMI_CONFIG[%q]=%q (want %q)", expectedConfigKey, actual, expectedConfigValue),
			)
		}
	}

	lis, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		return 18, err
	}
	defer lis.Close()

	grpcServer := grpc.NewServer()
	helper := &analyzerHelperServer{done: make(chan struct{})}
	pulumirpc.RegisterAnalyzerServer(grpcServer, helper)
	go func() {
		_ = grpcServer.Serve(lis)
	}()
	defer grpcServer.Stop()

	port := lis.Addr().(*net.TCPAddr).Port
	fmt.Printf("%d\n", port)

	select {
	case <-helper.done:
	case <-time.After(20 * time.Second):
		return 19, fmt.Errorf("timed out waiting for ConfigureStack")
	}

	grpcServer.GracefulStop()
	if len(mismatches) > 0 {
		fmt.Fprintln(os.Stderr, strings.Join(mismatches, "; "))
		return 17, nil
	}

	return 0, nil
}

func helperProcessArgs() []string {
	for i, arg := range os.Args {
		if arg == "--" {
			return os.Args[i+1:]
		}
	}
	return nil
}
