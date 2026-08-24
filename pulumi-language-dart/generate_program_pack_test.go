package main

import (
	"context"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGenerateProgramProducesMainDart(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	resp, err := host.GenerateProgram(context.Background(), &pulumirpc.GenerateProgramRequest{
		Source: map[string]string{
			"main.pp": "resources = {}",
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	require.Contains(t, resp.Source, "main.dart")
	assert.Contains(t, string(resp.Source["main.dart"]), "Deployment.run")
	assert.Contains(t, string(resp.Source["main.dart"]), "main.pp")
}

func TestGenerateProgramRequiresRequest(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GenerateProgram(context.Background(), nil)
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "request is required")
}

func TestGenerateProjectWritesProjectScaffold(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	localPulumi := filepath.Join(targetDir, "pulumi-local")

	resp, err := host.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{
		TargetDirectory: targetDir,
		Project:         `{"name":"example_project","runtime":"dart"}`,
		LocalDependencies: map[string]string{
			"pulumi": localPulumi,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	assert.Contains(t, string(pubspecData), "name: example_project")
	assert.Contains(t, string(pubspecData), "pulumi:")
	assert.Contains(t, string(pubspecData), "path: "+filepath.ToSlash(localPulumi))

	programData, err := os.ReadFile(filepath.Join(targetDir, "bin", "example_project.dart"))
	require.NoError(t, err)
	assert.Contains(t, string(programData), "GeneratedStack")

	pulumiProjectData, err := os.ReadFile(filepath.Join(targetDir, "Pulumi.yaml"))
	require.NoError(t, err)
	assert.Contains(t, string(pulumiProjectData), "name: example_project")
	assert.Contains(t, string(pulumiProjectData), "runtime: dart")
}

func TestGenerateProjectForcesDartRuntimeForConvertedProjects(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()

	resp, err := host.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{
		TargetDirectory: targetDir,
		Project:         `{"name":"convert_project","runtime":"terraform"}`,
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	pulumiProjectData, err := os.ReadFile(filepath.Join(targetDir, "Pulumi.yaml"))
	require.NoError(t, err)
	pulumiProjectText := string(pulumiProjectData)
	assert.Contains(t, pulumiProjectText, "name: convert_project")
	assert.Contains(t, pulumiProjectText, "runtime: dart")
	assert.NotContains(t, pulumiProjectText, "runtime: terraform")
	assert.NotContains(t, pulumiProjectText, "AdditionalKeys")
}

func TestGenerateProjectRequiresTargetDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "target directory is required")
}

func TestPackProducesDirectoryArtifact(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	packageDir := t.TempDir()
	destinationDir := t.TempDir()

	require.NoError(t, os.WriteFile(filepath.Join(packageDir, "pubspec.yaml"), []byte("name: my_pkg\n"), 0o600))
	require.NoError(t, os.MkdirAll(filepath.Join(packageDir, "lib"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(packageDir, "lib", "my_pkg.dart"), []byte("library my_pkg;\n"), 0o600))

	resp, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory:     packageDir,
		DestinationDirectory: destinationDir,
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.True(t, strings.HasPrefix(resp.ArtifactPath, filepath.Join(destinationDir, "my_pkg-")))
	assert.FileExists(t, filepath.Join(resp.ArtifactPath, "pubspec.yaml"))
	assert.FileExists(t, filepath.Join(resp.ArtifactPath, "lib", "my_pkg.dart"))
}

func TestPackCanPackSamePackageMoreThanOnce(t *testing.T) {
	t.Parallel()

	packageDir := t.TempDir()
	require.NoError(t, os.WriteFile(
		filepath.Join(packageDir, "pubspec.yaml"),
		[]byte("name: pulumi_example\n"),
		0o600,
	))
	destinationDir := t.TempDir()
	host := &dartLanguageHost{}
	request := &pulumirpc.PackRequest{
		PackageDirectory:     packageDir,
		DestinationDirectory: destinationDir,
	}

	first, err := host.Pack(context.Background(), request)
	require.NoError(t, err)
	second, err := host.Pack(context.Background(), request)
	require.NoError(t, err)

	require.True(t, strings.HasPrefix(first.ArtifactPath, filepath.Join(destinationDir, "pulumi_example-")))
	require.Equal(t, first.ArtifactPath, second.ArtifactPath)
	require.DirExists(t, first.ArtifactPath)
}

func TestPackUsesStableContentAddressedPathForDifferentPackageContents(t *testing.T) {
	t.Parallel()

	destinationDir := t.TempDir()
	host := &dartLanguageHost{}
	pack := func(content string) string {
		packageDir := t.TempDir()
		require.NoError(t, os.WriteFile(
			filepath.Join(packageDir, "pubspec.yaml"),
			[]byte("name: pulumi_example\n"),
			0o600,
		))
		require.NoError(t, os.WriteFile(filepath.Join(packageDir, "content.txt"), []byte(content), 0o600))
		response, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
			PackageDirectory: packageDir, DestinationDirectory: destinationDir,
		})
		require.NoError(t, err)
		return response.ArtifactPath
	}

	first := pack("first")
	second := pack("second")
	secondAgain := pack("second")

	require.True(t, strings.HasPrefix(first, filepath.Join(destinationDir, "pulumi_example-")))
	require.True(t, strings.HasPrefix(second, filepath.Join(destinationDir, "pulumi_example-")))
	require.NotEqual(t, first, second)
	require.Equal(t, second, secondAgain)
}

func TestDirectoryContentDigestIgnoresDartBuildMetadata(t *testing.T) {
	t.Parallel()

	packageDir := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(packageDir, "pubspec.yaml"), []byte("name: example\n"), 0o600))
	before, err := directoryContentDigest(packageDir)
	require.NoError(t, err)

	require.NoError(t, os.MkdirAll(filepath.Join(packageDir, ".dart_tool"), 0o700))
	require.NoError(t, os.WriteFile(
		filepath.Join(packageDir, ".dart_tool", "package_config.json"),
		[]byte(`{"rootUri":"/tmp/random"}`),
		0o600,
	))
	require.NoError(t, os.MkdirAll(filepath.Join(packageDir, "build"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(packageDir, "build", "output"), []byte("generated"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(packageDir, ".DS_Store"), []byte("metadata"), 0o600))
	after, err := directoryContentDigest(packageDir)
	require.NoError(t, err)

	require.Equal(t, before, after)
}

func TestPackRequiresPackageDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		DestinationDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "package directory is required")
}

func TestPackRequiresDestinationDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "destination directory is required")
}

func TestPackMissingPackageDirectoryReturnsError(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	missingDir := filepath.Join(t.TempDir(), "missing-package-dir")
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory:     missingDir,
		DestinationDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "package directory does not exist")
}

func TestPackRejectsFilePackageDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	filePath := filepath.Join(t.TempDir(), "not-a-dir")
	require.NoError(t, os.WriteFile(filePath, []byte("x"), 0o600))
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory:     filePath,
		DestinationDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "package directory must be a directory")
}
