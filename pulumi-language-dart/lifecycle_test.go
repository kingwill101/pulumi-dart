package main

import (
	"context"
	"net"
	"os"
	"path/filepath"
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
