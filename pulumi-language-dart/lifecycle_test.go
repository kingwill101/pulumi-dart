package main

import (
	"context"
	"net"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/health"
	healthpb "google.golang.org/grpc/health/grpc_health_v1"
	"google.golang.org/grpc/status"
	pbempty "google.golang.org/protobuf/types/known/emptypb"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func startHealthServer(t *testing.T) (string, func()) {
	t.Helper()

	listener, err := net.Listen("tcp", "127.0.0.1:0")
	require.NoError(t, err)

	server := grpc.NewServer()
	healthServer := health.NewServer()
	healthServer.SetServingStatus("", healthpb.HealthCheckResponse_SERVING)
	healthpb.RegisterHealthServer(server, healthServer)

	go func() {
		_ = server.Serve(listener)
	}()

	return listener.Addr().String(), func() {
		server.Stop()
		_ = listener.Close()
	}
}

func TestHandshakeRequiresEngineAddress(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.Handshake(context.Background(), &pulumirpc.LanguageHandshakeRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "engine address is required")
	assert.Empty(t, host.engineAddress)
}

func TestHandshakeSetsEngineAddress(t *testing.T) {
	t.Parallel()

	engineAddress, cleanup := startHealthServer(t)
	defer cleanup()

	host := &dartLanguageHost{}
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	resp, err := host.Handshake(ctx, &pulumirpc.LanguageHandshakeRequest{
		EngineAddress: engineAddress,
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Equal(t, engineAddress, host.engineAddress)
}

func TestGetRequiredPackagesRequiresProgramInfo(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "missing program info")
}

func TestGetRequiredPackagesRequiresProgramOrRootDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{
		Info: &pulumirpc.ProgramInfo{},
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "program directory or root directory must be set")
}

func TestGetRequiredPackagesMissingPubspecReturnsEmpty(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	tmp := t.TempDir()
	resp, err := host.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: tmp,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.Packages)
}

func TestGetRequiredPackagesParsesPulumiDependencies(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	tmp := t.TempDir()
	pubspec := `
name: test_project
dependencies:
  pulumi: ^1.0.0
  pulumi_random: ^4.1.2
  pulumi_azure_native: 2.41.0
  collection: ^1.19.1
`
	err := os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(pubspec), 0o600)
	require.NoError(t, err)

	resp, err := host.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: tmp,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	packagesByName := map[string]*pulumirpc.PackageDependency{}
	for _, p := range resp.Packages {
		packagesByName[p.Name] = p
	}

	require.Len(t, packagesByName, 2)
	require.Contains(t, packagesByName, "random")
	require.Contains(t, packagesByName, "azure-native")
	assert.Equal(t, "resource", packagesByName["random"].Kind)
	assert.Equal(t, "resource", packagesByName["azure-native"].Kind)
	assert.Equal(t, "v4.1.2", packagesByName["random"].Version)
	assert.Equal(t, "v2.41.0", packagesByName["azure-native"].Version)
}

func TestGetRequiredPackagesUsesExactPluginMetadataNames(t *testing.T) {
	t.Parallel()

	tmp := t.TempDir()
	for packageName, pluginName := range map[string]string{
		"pulumi_fail_on_create": "fail_on_create",
		"pulumi_azure_native":   "azure-native",
	} {
		root := filepath.Join(tmp, packageName)
		require.NoError(t, os.MkdirAll(root, 0o700))
		require.NoError(t, os.WriteFile(filepath.Join(root, "pulumi-plugin.json"), []byte(
			`{"resource":true,"name":"`+pluginName+`"}`), 0o600))
	}
	require.NoError(t, os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(`
name: test_project
dependencies:
  pulumi_fail_on_create:
    path: pulumi_fail_on_create
  pulumi_azure_native:
    path: pulumi_azure_native
`), 0o600))

	response, err := (&dartLanguageHost{}).GetRequiredPackages(context.Background(),
		&pulumirpc.GetRequiredPackagesRequest{Info: &pulumirpc.ProgramInfo{ProgramDirectory: tmp}})
	require.NoError(t, err)
	names := []string{response.Packages[0].Name, response.Packages[1].Name}
	assert.ElementsMatch(t, []string{"fail_on_create", "azure-native"}, names)
}

func TestGetRequiredPackagesResolvesLocalPathDependencyVersion(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	tmp := t.TempDir()
	sdk := filepath.Join(tmp, "simple")
	require.NoError(t, os.MkdirAll(sdk, 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(sdk, "pubspec.yaml"), []byte(
		"name: pulumi_simple\nversion: 2.0.0\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(
		"name: test_project\ndependencies:\n  pulumi_simple:\n    path: simple\n"), 0o600))

	response, err := host.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{
		Info: &pulumirpc.ProgramInfo{ProgramDirectory: tmp},
	})
	require.NoError(t, err)
	require.Len(t, response.Packages, 1)
	assert.Equal(t, "simple", response.Packages[0].Name)
	assert.Equal(t, "v2.0.0", response.Packages[0].Version)
}

func TestGetRequiredPackagesIncludesParameterizedProjectPackages(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	tmp := t.TempDir()
	pubspec := `
name: test_project
dependencies:
  pulumi:
    path: ../pulumi-dart
  pkg:
    path: sdks/pkg
`
	err := os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(pubspec), 0o600)
	require.NoError(t, err)

	project := `
name: test_project
runtime: dart
packages:
  pkg:
    source: testprovider
    version: 0.0.1
    parameters:
      - pkg
`
	err = os.WriteFile(filepath.Join(tmp, "Pulumi.yaml"), []byte(project), 0o600)
	require.NoError(t, err)

	resp, err := host.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: tmp,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	var pkgDep *pulumirpc.PackageDependency
	for _, p := range resp.Packages {
		if p.Name == "testprovider" {
			pkgDep = p
			break
		}
	}
	require.NotNil(t, pkgDep, "expected parameterized package provider dependency")
	assert.Equal(t, "resource", pkgDep.Kind)
	assert.Equal(t, "v0.0.1", pkgDep.Version)
	require.NotNil(t, pkgDep.Parameterization)
	assert.Equal(t, "pkg", pkgDep.Parameterization.Name)
	assert.Equal(t, "0.0.1", pkgDep.Parameterization.Version)
	assert.Equal(t, []byte("pkg"), pkgDep.Parameterization.Value)
}

func TestGetRequiredPackagesIncludesPluginMetadataParameterization(t *testing.T) {
	t.Parallel()
	root := t.TempDir()
	sdk := filepath.Join(root, "sdk")
	require.NoError(t, os.MkdirAll(sdk, 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(sdk, "pulumi-plugin.json"), []byte(`{
		"resource":true,"name":"parameterized","version":"1.2.3",
		"parameterization":{"name":"subpackage","version":"2.0.0","value":"SGVsbG9Xb3JsZA=="}
	}`), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(root, "pubspec.yaml"), []byte(`
name: test_project
dependencies:
  pulumi_subpackage:
    path: sdk
`), 0o600))

	response, err := (&dartLanguageHost{}).GetRequiredPackages(context.Background(),
		&pulumirpc.GetRequiredPackagesRequest{Info: &pulumirpc.ProgramInfo{ProgramDirectory: root}})
	require.NoError(t, err)
	require.Len(t, response.Packages, 1)
	pkg := response.Packages[0]
	assert.Equal(t, "parameterized", pkg.Name)
	assert.Equal(t, "v1.2.3", pkg.Version)
	require.NotNil(t, pkg.Parameterization)
	assert.Equal(t, "subpackage", pkg.Parameterization.Name)
	assert.Equal(t, "2.0.0", pkg.Parameterization.Version)
	assert.Equal(t, []byte("HelloWorld"), pkg.Parameterization.Value)
}

func TestGetRequiredPackagesEncodesMultiParameterValues(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	tmp := t.TempDir()
	pubspec := `
name: test_project
dependencies:
  pulumi:
    path: ../pulumi-dart
`
	err := os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(pubspec), 0o600)
	require.NoError(t, err)

	project := `
name: test_project
runtime: dart
packages:
  pkg:
    source: testprovider
    version: 0.0.1
    parameters:
      - one
      - two
`
	err = os.WriteFile(filepath.Join(tmp, "Pulumi.yaml"), []byte(project), 0o600)
	require.NoError(t, err)

	resp, err := host.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: tmp,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	var pkgDep *pulumirpc.PackageDependency
	for _, p := range resp.Packages {
		if p.Name == "testprovider" {
			pkgDep = p
			break
		}
	}
	require.NotNil(t, pkgDep, "expected parameterized package provider dependency")
	require.NotNil(t, pkgDep.Parameterization)
	assert.Equal(t, []byte(`["one","two"]`), pkgDep.Parameterization.Value)
}

func TestGetRequiredPluginsRequiresRequest(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GetRequiredPlugins(context.Background(), nil)
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
}

func TestGetRequiredPluginsUsesLegacyFieldsWhenInfoMissing(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	tmp := t.TempDir()
	pubspec := `
name: test_project
dependencies:
  pulumi:
    path: ../pulumi-dart
  pulumi_random: ^4.1.2
`
	err := os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(pubspec), 0o600)
	require.NoError(t, err)

	resp, err := host.GetRequiredPlugins(context.Background(), &pulumirpc.GetRequiredPluginsRequest{
		Pwd: tmp,
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	require.Len(t, resp.Plugins, 1)
	assert.Equal(t, "random", resp.Plugins[0].Name)
	assert.Equal(t, "resource", resp.Plugins[0].Kind)
	assert.Equal(t, "v4.1.2", resp.Plugins[0].Version)
}

func TestGetRequiredPluginsIncludesProjectPackageServerAndVersion(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	tmp := t.TempDir()
	pubspec := `
name: test_project
dependencies:
  pulumi:
    path: ../pulumi-dart
  pkg:
    path: sdks/pkg
`
	err := os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(pubspec), 0o600)
	require.NoError(t, err)

	project := `
name: test_project
runtime: dart
packages:
  pkg:
    source: testprovider
    version: 2.3.4
    server: https://plugins.example.test
`
	err = os.WriteFile(filepath.Join(tmp, "Pulumi.yaml"), []byte(project), 0o600)
	require.NoError(t, err)

	resp, err := host.GetRequiredPlugins(context.Background(), &pulumirpc.GetRequiredPluginsRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: tmp,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	require.Len(t, resp.Plugins, 1)
	assert.Equal(t, "testprovider", resp.Plugins[0].Name)
	assert.Equal(t, "resource", resp.Plugins[0].Kind)
	assert.Equal(t, "v2.3.4", resp.Plugins[0].Version)
	assert.Equal(t, "https://plugins.example.test", resp.Plugins[0].Server)
}

func TestTemplateRewritesPulumiVersionDependencyByDefault(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi: ^1.0.0
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.Contains(t, updated, "pulumi-dart.git")
	assert.Contains(t, updated, "path: pulumi-dart")
	assert.NotContains(t, updated, "pulumi: ^1.0.0")
	assert.NotContains(t, updated, "dependency_overrides:")
}

func TestTemplateHonorsExplicitPathDependency(t *testing.T) {
	t.Parallel()

	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi:
    path: /tmp/local-pulumi
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.Contains(t, updated, "path: /tmp/local-pulumi")
	assert.NotContains(t, updated, "dependency_overrides:")
	assert.False(t, strings.Contains(updated, "pulumi-dart.git"))
}

func TestTemplateUsesPathOverrideEnv(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "/tmp/override-pulumi")
	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi: ^1.0.0
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.Contains(t, updated, "path: /tmp/override-pulumi")
	assert.NotContains(t, updated, "dependency_overrides:")
	assert.NotContains(t, updated, "pulumi-dart.git")
}

func TestTemplateRewriteCanBeDisabled(t *testing.T) {
	t.Setenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", "false")
	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi: ^1.0.0
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.Contains(t, updated, "pulumi: ^1.0.0")
	assert.NotContains(t, updated, "dependency_overrides:")
	assert.NotContains(t, updated, "pulumi-dart.git")
}

func TestTemplateDoesNotAddOverrideForExplicitGitDependencyByDefault(t *testing.T) {
	t.Parallel()

	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: pulumi-dart
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.NotContains(t, updated, "dependency_overrides:")
	assert.Contains(t, updated, "url: https://github.com/kingwill101/pulumi-dart.git")
}

func TestTemplatePreservesExistingPulumiOverride(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi: ^1.0.0
dependency_overrides:
  pulumi:
    git:
      url: https://example.com/old.git
      path: pulumi-dart
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.Contains(t, updated, "dependency_overrides:")
	assert.Contains(t, updated, "url: https://github.com/kingwill101/pulumi-dart.git")
}

func TestTemplateCanForcePulumiOverrideViaEnv(t *testing.T) {
	t.Setenv("PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE", "true")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi: ^1.0.0
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.Contains(t, updated, "dependency_overrides:")
	assert.Contains(t, updated, "url: https://github.com/kingwill101/pulumi-dart.git")
}

func TestTemplateRewritesPulumiProviderDepsToLocalPaths(t *testing.T) {
	pulumiPath := filepath.Join(t.TempDir(), "repo", "pulumi-dart")
	randomPath := filepath.Join(filepath.Dir(pulumiPath), "packages", "random")
	require.NoError(t, os.MkdirAll(pulumiPath, 0o700))
	require.NoError(t, os.MkdirAll(randomPath, 0o700))

	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", pulumiPath)
	programDir := t.TempDir()
	pubspecPath := filepath.Join(programDir, "pubspec.yaml")
	pubspec := `
name: template_project
dependencies:
  pulumi: ^1.0.0
  pulumi_random:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/random
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: programDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	updatedBytes, err := os.ReadFile(pubspecPath)
	require.NoError(t, err)
	updated := string(updatedBytes)
	assert.Contains(t, updated, "pulumi_random:")
	assert.Contains(t, updated, "path: "+filepath.ToSlash(randomPath))
}

func TestCancelCancelsActiveOperation(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	opCtx, endOperation := host.beginOperation(context.Background())
	defer endOperation()

	_, err := host.Cancel(context.Background(), &pbempty.Empty{})
	require.NoError(t, err)

	select {
	case <-opCtx.Done():
	case <-time.After(2 * time.Second):
		t.Fatal("expected active operation context to be canceled")
	}
}

func TestCancelWithoutActiveOperationIsNoOp(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	resp, err := host.Cancel(context.Background(), &pbempty.Empty{})
	require.NoError(t, err)
	require.NotNil(t, resp)
}

func TestRunRequiresHandshake(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.Run(context.Background(), &pulumirpc.RunRequest{})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "must call Handshake before Run")
}

func TestRunPluginRequiresHandshake(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	server := newCaptureRunPluginServer(context.Background())
	err := host.RunPlugin(&pulumirpc.RunPluginRequest{}, server)
	require.Error(t, err)
	assert.Contains(t, err.Error(), "must call Handshake before RunPlugin")
}
