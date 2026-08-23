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
	"os"
	"os/exec"
	"path/filepath"
	"strings"
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

// passingConformanceTests records the tests that must currently pass. The test
// runner still registers every test returned by the shared conformance server,
// so unsupported and newly-added cases remain visible as explicit skips.
var passingConformanceTests = []string{
	"policy-config",
	"policy-config-schema",
	"policy-dryrun",
	"policy-enforcement-config",
	"policy-invalid",
	"policy-remediate",
	"policy-simple",
	"policy-stack-config",
	"policy-stack-tags",
	"provider-alias-component",
	"provider-builtin-info-component",
	"provider-ignore-changes-component",
	"provider-replacement-trigger-component",
	"provider-resource-component",
	"l1-empty",
	"l1-config-types-primitive",
	"l1-config-types-optional",
	"l1-config-types-object",
	"l1-config-secret",
	"l1-builtin-to-json",
	"l1-builtin-string",
	"l1-builtin-min-max",
	"l1-builtin-list",
	"l1-builtin-secret",
	"l1-builtin-cwd",
	"l1-builtin-project-root",
	"l1-builtin-project-root-main",
	"l1-builtin-info",
	"l1-builtin-base64",
	"l1-builtin-sha1",
	"l1-builtin-file",
	"l1-for-expression",
	"l1-expand-final",
	"l1-builtin-object",
	"l1-builtin-can",
	"l1-builtin-try",
	"l1-main",
	"l1-elide-index",
	"l1-builtin-stash",
	"l1-proxy-index",
	"l1-stack-reference",
	"l1-builtin-require-pulumi-version",
	"l2-resource-simple",
	"l2-logical-name",
	"l2-parallel-resources",
	"l2-resource-primitives",
	"l2-resource-const",
	"l2-component-call-plain",
	"l2-component-call-simple",
	"l2-component-property-deps",
	"l2-component-component-resource-ref",
	"l2-component-program-resource-ref",
	"l2-resource-config-primitives",
	"l2-resource-optional",
	"l2-resource-secret",
	"l2-resource-schema-secret",
	"l2-resource-alpha",
	"l2-resource-keyword-overlap",
	"l2-resource-names",
	"l2-resource-order",
	"l2-resource-primitive-defaults",
	"l2-resource-primitive-conversions",
	"l2-explicit-provider",
	"l2-explicit-parameterized-provider",
	"l2-explicit-providers",
	"l2-extension-and-base-resource",
	"l2-extension-parameterized-resource",
	"l2-parameterized-invoke",
	"l2-parameterized-resource",
	"l2-parameterized-resource-twice",
	"l2-resource-option-protect",
	"l2-resource-option-retain-on-delete",
	"l2-resource-option-version",
	"l2-resource-option-plugin-download-url",
	"l2-resource-option-depends-on",
	"l2-resource-option-deleted-with",
	"l2-resource-option-import",
	"l2-resource-option-version-sdk",
	"l2-resource-option-delete-before-replace",
	"l2-resource-option-additional-secret-outputs",
	"l2-resource-option-ignore-changes",
	"l2-resource-option-hide-diffs",
	"l2-resource-option-custom-timeouts",
	"l2-resource-option-env-var-mappings",
	"l2-resource-option-replacement-trigger",
	"l2-resource-option-replace-with",
	"l2-resource-option-alias",
	"l2-resource-option-hooks",
	"l2-resource-hook-ignore-errors",
	"l2-resource-hook-on-error",
	"l2-resource-hook-after-failure",
	"l2-resource-hook-panic",
	"l2-resource-option-replace-on-changes",
	"l2-resource-read",
	"l2-resource-parent-inheritance",
	"l2-resource-provider-inheritance",
	"l2-resource-config-objects",
	"l2-resource-any",
	"l2-provider-call",
	"l2-provider-call-explicit",
	"l2-provider-grpc-config",
	"l2-provider-grpc-config-schema-secret",
	"l2-provider-grpc-config-secret",
	"l2-resource-invoke-dynamic-function",
	"l2-module-format",
	"l2-index-mod",
	"l2-name-conflicts",
	"l2-namespaced-provider",
	"l2-reserved-names",
	"l2-camel-names",
	"l2-snake-names",
	"l2-resource-asset-archive",
	"l2-enum",
	"l2-external-enum",
	"l2-failed-create",
	"l2-failed-create-continue-on-error",
	"l2-failed-create-recover-continue-on-error",
	"l2-primitive-ref",
	"l2-primitive-ref-optional",
	"l2-nested-collections",
	"l2-plain",
	"l2-plain-component",
	"l2-map-keys",
	"l2-map-keys-adversarial",
	"l2-id-type",
	"l2-builtin-object",
	"l2-resource-config",
	"l2-keywords",
	"l2-destroy",
	"l3-for",
	"l3-for-resource",
	"l3-range",
	"l3-range-bool-ref",
	"l3-range-invoke-output-traversal",
	"l3-range-list-ref",
	"l3-range-map-ref",
	"l3-range-parent-scope",
	"l3-range-resource-output-traversal",
	"l3-resource-keyword-overlap",
	"l3-rewrite-conversions",
	"l3-splat",
	"l2-resource-name-type",
	"l2-engine-update-options",
	"l2-resource-elide-unknowns",
	"l2-target-up-skipped-create-output",
	"l2-target-up-with-new-dependency",
	"l2-provider-config-enum",
	"l2-docs",
	"l2-elide-index",
	"l2-proxy-index",
	"l2-large-string",
	"l2-union",
	"l2-discriminated-union",
	"l2-discriminated-union-many",
	"l2-ref-ref",
	"l3-component-simple",
	"l3-component-config-primitives",
	"l3-component-config-objects",
	"l3-component-primitive-conversions",
	"l3-component-nested",
	"l3-component-invoke",
	"l3-component-provider",
	"l3-component-provider-inheritance",
	"l3-deferred-outputs",
	"l2-invoke-simple",
	"l2-invoke-variants",
	"l2-invoke-output-only",
	"l2-invoke-multi-argument",
	"l2-invoke-secrets",
	"l2-invoke-options",
	"l2-invoke-options-depends-on",
	"l2-invoke-dependencies",
	"l2-invoke-depends-on-component",
	"l2-invoke-scalar",
	"l2-invoke-scalars",
	"l2-config-default-from-invoke",
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
	tests, err := client.GetLanguageTests(ctx, &testingrpc.GetLanguageTestsRequest{})
	require.NoError(t, err)
	available := make(map[string]struct{}, len(tests.Tests))
	for _, name := range tests.Tests {
		available[name] = struct{}{}
	}
	for _, name := range passingConformanceTests {
		_, registered := available[name]
		require.True(t, registered, "passing conformance test %q is not registered upstream", name)
	}

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
	policyPackDirectory := prepareConformancePolicyPacks(t)
	prepare, err := client.PrepareLanguageTests(ctx, &testingrpc.PrepareLanguageTestsRequest{
		LanguagePluginName:   "dart",
		LanguagePluginTarget: fmt.Sprintf("127.0.0.1:%d", host.Port),
		TemporaryDirectory:   rootDir,
		SnapshotDirectory:    "testdata/published",
		CoreSdkDirectory:     "../packages/pulumi-dart",
		CoreSdkVersion:       "3.0.0",
		PolicyPackDirectory:  policyPackDirectory,
		ProvidersDirectory:   "testdata/providers",
		SnapshotEdits: []*testingrpc.PrepareLanguageTestsRequest_Replacement{
			{
				Path:        "pubspec\\.yaml",
				Pattern:     rootDir,
				Replacement: "ROOT",
			},
		},
	})
	require.NoError(t, err)

	passing := make(map[string]struct{}, len(passingConformanceTests))
	for _, name := range passingConformanceTests {
		passing[name] = struct{}{}
	}
	experimental := requestedExperimentalConformanceTests()
	for _, name := range tests.Tests {
		t.Run(name, func(t *testing.T) {
			_, mustPass := passing[name]
			_, requested := experimental[name]
			if !mustPass && !requested {
				t.Skip("Dart conformance support is not implemented yet")
			}
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

func prepareConformancePolicyPacks(t *testing.T) string {
	t.Helper()
	source, err := filepath.Abs("testdata/policies")
	require.NoError(t, err)
	destination := t.TempDir()
	require.NoError(t, os.CopyFS(destination, os.DirFS(source)))

	policySDKSource, err := filepath.Abs("../packages/policy")
	require.NoError(t, err)
	coreSDKSource, err := filepath.Abs("../packages/pulumi-dart")
	require.NoError(t, err)
	policySDK := filepath.Join(t.TempDir(), "policy")
	require.NoError(t, os.CopyFS(policySDK, os.DirFS(policySDKSource)))
	policyPubspec := filepath.Join(policySDK, "pubspec.yaml")
	contents, err := os.ReadFile(policyPubspec)
	require.NoError(t, err)
	require.NoError(t, os.WriteFile(
		policyPubspec,
		[]byte(strings.ReplaceAll(string(contents), "resolution: workspace\n", "")),
		0o600,
	))

	require.NoError(t, filepath.WalkDir(destination, func(path string, entry os.DirEntry, err error) error {
		if err != nil || entry.IsDir() || entry.Name() != "pubspec.yaml" {
			return err
		}
		contents, err := os.ReadFile(path)
		if err != nil {
			return err
		}
		resolved := strings.ReplaceAll(string(contents), "../../../../packages/policy", filepath.ToSlash(policySDK))
		resolved = strings.ReplaceAll(resolved, "../../../../packages/pulumi-dart", filepath.ToSlash(coreSDKSource))
		resolved += "\ndependency_overrides:\n  pulumi:\n    path: " + filepath.ToSlash(coreSDKSource) + "\n"
		return os.WriteFile(path, []byte(resolved), 0o600)
	}))
	return destination
}

func requestedExperimentalConformanceTests() map[string]struct{} {
	result := map[string]struct{}{}
	for _, name := range strings.Split(os.Getenv("PULUMI_DART_CONFORMANCE_TESTS"), ",") {
		if name = strings.TrimSpace(name); name != "" {
			result[name] = struct{}{}
		}
	}
	return result
}
