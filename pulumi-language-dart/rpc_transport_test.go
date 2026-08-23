package main

import (
	"context"
	"net"
	"os"
	"path/filepath"
	"testing"
	"time"

	pbempty "google.golang.org/protobuf/types/known/emptypb"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/status"
)

func startLanguageRuntimeHarness(t *testing.T) (*dartLanguageHost, pulumirpc.LanguageRuntimeClient, func()) {
	t.Helper()

	srvImpl, ok := newLanguageHost("", "", "", "").(*dartLanguageHost)
	require.True(t, ok)

	listener, err := net.Listen("tcp", "127.0.0.1:0")
	require.NoError(t, err)

	server := grpc.NewServer()
	pulumirpc.RegisterLanguageRuntimeServer(server, srvImpl)
	go func() {
		_ = server.Serve(listener)
	}()

	dialCtx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	conn, err := grpc.DialContext(
		dialCtx,
		listener.Addr().String(),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		grpc.WithBlock(),
	)
	require.NoError(t, err)

	client := pulumirpc.NewLanguageRuntimeClient(conn)
	cleanup := func() {
		_ = conn.Close()
		server.Stop()
		_ = listener.Close()
	}

	return srvImpl, client, cleanup
}

func TestLanguageRuntimeGrpcHandshakeAndCancel(t *testing.T) {
	t.Parallel()

	host, client, cleanup := startLanguageRuntimeHarness(t)
	defer cleanup()

	engineAddress, engineCleanup := startHealthServer(t)
	defer engineCleanup()

	_, err := client.Handshake(context.Background(), &pulumirpc.LanguageHandshakeRequest{
		EngineAddress: engineAddress,
	})
	require.NoError(t, err)
	assert.Equal(t, engineAddress, host.engineAddress)

	_, err = client.Cancel(context.Background(), &pbempty.Empty{})
	require.NoError(t, err)

	_, err = client.Handshake(context.Background(), &pulumirpc.LanguageHandshakeRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
}

func TestLanguageRuntimeGrpcGetRequiredPackages(t *testing.T) {
	t.Parallel()

	_, client, cleanup := startLanguageRuntimeHarness(t)
	defer cleanup()

	tmp := t.TempDir()
	err := os.WriteFile(filepath.Join(tmp, "pubspec.yaml"), []byte(`
name: rpc_test

dependencies:
  pulumi_random: ^4.1.2
  collection: ^1.19.1
`), 0o600)
	require.NoError(t, err)

	resp, err := client.GetRequiredPackages(context.Background(), &pulumirpc.GetRequiredPackagesRequest{
		Info: &pulumirpc.ProgramInfo{ProgramDirectory: tmp},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	packagesByName := map[string]*pulumirpc.PackageDependency{}
	for _, pkg := range resp.Packages {
		packagesByName[pkg.Name] = pkg
	}

	require.Contains(t, packagesByName, "random")
	assert.Equal(t, "resource", packagesByName["random"].Kind)
	assert.Equal(t, "v4.1.2", packagesByName["random"].Version)
}

func TestLanguageRuntimeGrpcGenerateProjectProgramPackageAndPack(t *testing.T) {
	t.Parallel()

	_, client, cleanup := startLanguageRuntimeHarness(t)
	defer cleanup()

	programResp, err := client.GenerateProgram(context.Background(), &pulumirpc.GenerateProgramRequest{
		Source: map[string]string{"main.pp": "resources = {}"},
	})
	require.NoError(t, err)
	require.NotNil(t, programResp)
	require.Contains(t, programResp.Source, "main.dart")
	assert.Contains(t, string(programResp.Source["main.dart"]), "Deployment.run")

	projectDir := t.TempDir()
	_, err = client.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{
		TargetDirectory: projectDir,
		Project:         `{"name":"rpc_project","runtime":"dart"}`,
	})
	require.NoError(t, err)

	_, err = os.Stat(filepath.Join(projectDir, "Pulumi.yaml"))
	require.NoError(t, err)
	_, err = os.Stat(filepath.Join(projectDir, "pubspec.yaml"))
	require.NoError(t, err)
	_, err = os.Stat(filepath.Join(projectDir, "bin", "rpc_project.dart"))
	require.NoError(t, err)

	packageDir := t.TempDir()
	schema := `{
  "name": "rpc-provider",
  "version": "1.0.0",
  "resources": {
    "rpc-provider:index:Thing": {
      "isComponent": true,
      "inputProperties": {},
      "properties": {},
      "requiredInputs": []
    }
  }
}`
	_, err = client.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: packageDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	rootLibraries, err := filepath.Glob(filepath.Join(packageDir, "lib", "*.dart"))
	require.NoError(t, err)
	require.NotEmpty(t, rootLibraries)
	_, err = os.Stat(rootLibraries[0])
	require.NoError(t, err)

	packDestination := t.TempDir()
	packResp, err := client.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory:     packageDir,
		DestinationDirectory: packDestination,
	})
	require.NoError(t, err)
	require.NotNil(t, packResp)
	assert.DirExists(t, packResp.ArtifactPath)

	_, err = client.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))

	_, err = client.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))

	_, err = client.Pack(context.Background(), &pulumirpc.PackRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
}
