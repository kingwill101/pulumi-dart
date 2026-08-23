package main

import (
	"context"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGeneratePackageWritesPulumiDependency(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "version: 1.2.3")
	assert.NotContains(t, pubspec, "resolution: workspace")
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "git:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
	assert.Contains(t, pubspec, "path: pulumi-dart")
}

func TestGeneratePackageWritesLocalPulumiDependency(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	localPulumi := filepath.Join(targetDir, "local-pulumi")
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
		LocalDependencies: map[string]string{
			"pulumi": localPulumi,
		},
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "version: 1.2.3")
	assert.NotContains(t, pubspec, "resolution: workspace")
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "path: "+filepath.ToSlash(localPulumi))
	assert.Contains(t, pubspec, "publish_to: none")
}

func TestGeneratePackageWritesPulumiDependencyFromEnv(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	localPulumi := filepath.Join(targetDir, "local-pulumi")
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	oldValue, hadOldValue := os.LookupEnv("PULUMI_DART_PULUMI_DEPENDENCY_PATH")
	require.NoError(t, os.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", localPulumi))
	t.Cleanup(func() {
		if !hadOldValue {
			require.NoError(t, os.Unsetenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH"))
			return
		}
		require.NoError(t, os.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", oldValue))
	})

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "path: "+filepath.ToSlash(localPulumi))
	assert.NotContains(t, pubspec, "git:")
	assert.Contains(t, pubspec, "publish_to: none")
}

func TestGeneratePackageWritesWorkspaceResolutionWhenEnabled(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	oldValue, hadOldValue := os.LookupEnv("PULUMI_DART_WORKSPACE_RESOLUTION")
	require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", "true"))
	t.Cleanup(func() {
		if !hadOldValue {
			require.NoError(t, os.Unsetenv("PULUMI_DART_WORKSPACE_RESOLUTION"))
			return
		}
		require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", oldValue))
	})

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	assert.Contains(t, string(pubspecData), "resolution: workspace")
}

func TestGeneratePackageUsesWorkspacePulumiVersion(t *testing.T) {
	host := &dartLanguageHost{}
	rootDir := t.TempDir()

	rootPubspec := strings.TrimSpace(`
name: root_workspace
environment:
  sdk: ">=3.11.0 <4.0.0"
workspace:
  - pulumi-dart
  - packages/command
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(rootDir, "pubspec.yaml"), []byte(rootPubspec), 0o600))

	pulumiDir := filepath.Join(rootDir, "pulumi-dart")
	require.NoError(t, os.MkdirAll(pulumiDir, 0o700))
	pulumiPubspec := strings.TrimSpace(`
name: pulumi
version: 9.8.7
resolution: workspace
environment:
  sdk: ">=3.11.0 <4.0.0"
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(pulumiDir, "pubspec.yaml"), []byte(pulumiPubspec), 0o600))

	generatedDir := filepath.Join(rootDir, "packages", "sdks", "sample")
	require.NoError(t, os.MkdirAll(generatedDir, 0o700))

	oldValue, hadOldValue := os.LookupEnv("PULUMI_DART_WORKSPACE_RESOLUTION")
	require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", "true"))
	t.Cleanup(func() {
		if !hadOldValue {
			require.NoError(t, os.Unsetenv("PULUMI_DART_WORKSPACE_RESOLUTION"))
			return
		}
		require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", oldValue))
	})

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: generatedDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(generatedDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi: ^9.8.7")
	assert.NotContains(t, pubspec, "git:")
	assert.NotContains(t, pubspec, "path:")
}

func TestGeneratePackagePreservesExistingPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Widget": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	assert.Equal(t, existingPubspec, string(pubspecData))
	assert.FileExists(t, filepath.Join(targetDir, "lib", "pulumi_sample.dart"))
}

func TestGeneratePackageSyncsToWorkspaceMember(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	rootDir := t.TempDir()

	workspaceMemberDir := filepath.Join(rootDir, "command")
	require.NoError(t, os.MkdirAll(workspaceMemberDir, 0o700))
	existingPubspec := strings.TrimSpace(`
name: pulumi_command
description: A Pulumi package for executing commands locally or remotely.
version: 1.0.0
environment:
  sdk: ">=3.11.0 <4.0.0"
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(workspaceMemberDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	sdksDir := filepath.Join(rootDir, "sdks")
	generatedDir := filepath.Join(sdksDir, "command")
	require.NoError(t, os.MkdirAll(generatedDir, 0o700))

	schema := `{
		"name": "command",
		"version": "1.2.3",
		"resources": {
			"command:index:Command": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: generatedDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	assert.FileExists(t, filepath.Join(generatedDir, "lib", "pulumi_command.dart"))
	assert.FileExists(t, filepath.Join(workspaceMemberDir, "lib", "pulumi_command.dart"))
}

func TestGeneratePackageFailsWhenExistingPubspecMissingRequiredDependencies(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  http: ^1.2.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "missing required dependencies")
	assert.Contains(t, err.Error(), "pulumi")
}

func TestGeneratePackageChecksAdditionalLocalDependenciesInExistingPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
		LocalDependencies: map[string]string{
			"pulumi_terraform": filepath.Join(targetDir, "..", "pulumi_terraform"),
		},
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "missing required dependencies")
	assert.Contains(t, err.Error(), "pulumi_terraform")
}

func TestGeneratePackageChecksDartLanguageDependenciesInExistingPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"language": {
			"dart": {
				"dependencies": {
					"pulumi_policy": "^0.2.0"
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "missing required dependencies")
	assert.Contains(t, err.Error(), "pulumi_policy")
}

func TestGeneratePackageReadsLocalDependencyRegistry(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_policy: ^0.2.0
`) + "\n"
	require.NoError(
		t,
		os.WriteFile(filepath.Join(workspaceDir, "packages", "sdk_dependency_registry.yaml"), []byte(registry), 0o600),
	)

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
}
