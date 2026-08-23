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
	"bufio"
	"fmt"
	"io"
	"os/exec"
	"path/filepath"
	"sync"
	"testing"

	ptesting "github.com/pulumi/pulumi/sdk/v3/go/common/testing"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/contract"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/rpcutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	testingrpc "github.com/pulumi/pulumi/sdk/v3/proto/go/testing"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

// initialConformanceTests is intentionally small while Dart's project generator
// is brought up to full PCL support. Every entry here runs through the shared
// Pulumi language-conformance engine, not a Dart-specific test double.
var initialConformanceTests = []string{
	"l1-empty",
	"l1-config-types-primitive",
	"l1-config-types-optional",
	"l1-config-types-object",
	"l1-config-secret",
	"l1-builtin-to-json",
	"l1-builtin-string",
	"l1-builtin-min-max",
	"l1-keyword-overlap",
	"l1-output-array",
	"l1-output-bool",
	"l1-output-map",
	"l1-output-null",
	"l1-output-number",
	"l1-output-string",
}

func runConformanceServer(t *testing.T) (string, testingrpc.LanguageTestClient) {
	t.Helper()

	binary := filepath.Join(t.TempDir(), "pulumi-test-language")
	build := exec.Command(
		"go", "build", "-C", "../thirdparty/pulumi/pkg", "-o", binary,
		"./testing/pulumi-test-language",
	)
	output, err := build.CombinedOutput()
	require.NoError(t, err, "build pulumi-test-language: %s", output)

	command := exec.Command(binary)
	stdout, err := command.StdoutPipe()
	require.NoError(t, err)
	stderr, err := command.StderrPipe()
	require.NoError(t, err)

	var stderrWait sync.WaitGroup
	stderrWait.Add(1)
	go func() {
		defer stderrWait.Done()
		scanner := bufio.NewScanner(stderr)
		for scanner.Scan() {
			t.Log(scanner.Text())
		}
	}()

	require.NoError(t, command.Start())
	address, err := io.ReadAll(stdout)
	require.NoError(t, err)

	conn, err := grpc.NewClient(
		string(address),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		rpcutil.GrpcChannelOptions(),
	)
	require.NoError(t, err)
	t.Cleanup(func() {
		require.NoError(t, conn.Close())
		require.NoError(t, command.Process.Kill())
		stderrWait.Wait()
		contract.IgnoreError(command.Wait())
	})

	return string(address), testingrpc.NewLanguageTestClient(conn)
}

func TestLanguageConformance(t *testing.T) {
	if testing.Short() {
		t.Skip("skipping language conformance tests in short mode")
	}

	ctx := t.Context()
	testServerAddress, client := runConformanceServer(t)

	dart, err := exec.LookPath("dart")
	require.NoError(t, err, "Dart must be available on PATH")
	cancel := make(chan bool)
	host, err := rpcutil.ServeWithOptions(rpcutil.ServeOptions{
		Init: func(server *grpc.Server) error {
			pulumirpc.RegisterLanguageRuntimeServer(
				server,
				newLanguageHost(dart, testServerAddress, "", ""),
			)
			return nil
		},
		Cancel: cancel,
	})
	require.NoError(t, err)
	t.Cleanup(func() {
		close(cancel)
		require.NoError(t, <-host.Done)
	})

	rootDir, err := filepath.Abs(t.TempDir())
	require.NoError(t, err)
	prepare, err := client.PrepareLanguageTests(ctx, &testingrpc.PrepareLanguageTestsRequest{
		LanguagePluginName:   "dart",
		LanguagePluginTarget: fmt.Sprintf("127.0.0.1:%d", host.Port),
		TemporaryDirectory:   rootDir,
		SnapshotDirectory:    "testdata/conformance",
		CoreSdkDirectory:     "../packages/pulumi-dart",
		CoreSdkVersion:       "3.0.0",
		SnapshotEdits: []*testingrpc.PrepareLanguageTestsRequest_Replacement{
			{
				Path:        "pubspec\\.yaml",
				Pattern:     rootDir,
				Replacement: "ROOT",
			},
		},
	})
	require.NoError(t, err)

	for _, name := range initialConformanceTests {
		t.Run(name, func(t *testing.T) {
			result, err := client.RunLanguageTest(ctx, &testingrpc.RunLanguageTestRequest{
				Token: prepare.Token,
				Test:  name,
			})
			require.NoError(t, err)
			for _, message := range result.Messages {
				t.Log(message)
			}
			ptesting.LogIfVerbose(t, "stdout", result.Stdout)
			ptesting.LogIfVerbose(t, "stderr", result.Stderr)
			assert.True(t, result.Success)
		})
	}
}
