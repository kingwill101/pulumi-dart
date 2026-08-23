package main

import (
	"context"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGeneratePackageReadsDependencyRegistryFromEnv(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	registryDir := t.TempDir()
	registryPath := filepath.Join(registryDir, "sdk_dependency_registry.yaml")
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_policy: ^0.3.0
`) + "\n"
	require.NoError(t, os.WriteFile(registryPath, []byte(registry), 0o600))
	t.Setenv("PULUMI_DART_DEPENDENCY_REGISTRY", registryPath)

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
	assert.Contains(t, pubspec, "pulumi_policy: ^0.3.0")
}

func TestGeneratePackageReadsPubspecStyleDependencySpecsFromRegistry(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_local_path:
        path: ../local/pulumi-local-path
      pulumi_local_git:
        git:
          url: https://github.com/example/pulumi-local-git.git
          ref: main
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
	expectedPath := filepath.ToSlash(filepath.Join(workspaceDir, "local", "pulumi-local-path"))
	assert.Contains(t, pubspec, "pulumi_local_path:")
	assert.Contains(t, pubspec, "path: "+expectedPath)
	assert.Contains(t, pubspec, "pulumi_local_git:")
	assert.Contains(t, pubspec, "git:")
	assert.Contains(t, pubspec, "url: https://github.com/example/pulumi-local-git.git")
	assert.Contains(t, pubspec, "ref: main")
}

func TestGeneratePackageRegistryMatchesProviderNameCanonicalization(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample-provider")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample_provider:
    dependencies:
      pulumi_policy: ^1.2.3
`) + "\n"
	require.NoError(
		t,
		os.WriteFile(filepath.Join(workspaceDir, "packages", "sdk_dependency_registry.yaml"), []byte(registry), 0o600),
	)

	schema := `{
		"name": "sample-provider",
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
	assert.Contains(t, pubspec, "pulumi_policy: ^1.2.3")
}

func TestGeneratePackageReadsDependencyRegistryFromURL(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()

	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		_, _ = w.Write([]byte(strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_policy: ^0.5.0
`) + "\n"))
	}))
	defer server.Close()

	t.Setenv("PULUMI_DART_DEPENDENCY_REGISTRY", filepath.Join(t.TempDir(), "missing-registry.yaml"))
	t.Setenv("PULUMI_DART_DEPENDENCY_REGISTRY_URL", server.URL)

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
	assert.Contains(t, pubspec, "pulumi_policy: ^0.5.0")
}

func TestGeneratePackageIgnoresSelfDependencyFromRegistry(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_sample: ^1.2.3
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
	assert.NotContains(t, pubspec, "pulumi_sample:")
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
}

func TestGeneratePackageUpdatesExistingPubspecWhenEnabled(t *testing.T) {
	t.Setenv("PULUMI_DART_UPDATE_EXISTING_PUBSPEC", "true")

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
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi: ^1.0.0")
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
}

func TestGeneratePackageRewritesExistingPulumiPathDependencyWhenLocallyConfigured(t *testing.T) {
	t.Setenv("PULUMI_DART_UPDATE_EXISTING_PUBSPEC", "true")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "/tmp/local-pulumi")

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
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "path: /tmp/local-pulumi")
	assert.Contains(t, pubspec, "publish_to: none")
}

func TestGeneratePackageInfersLocalPulumiDependencyFromAncestorPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	localPulumi := filepath.Clean(filepath.Join(workspaceDir, "..", "pulumi-local"))
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	projectPubspec := strings.TrimSpace(`
name: package_add_project
version: 0.0.1
dependencies:
  pulumi:
    path: ../pulumi-local
`)
	require.NoError(t, os.WriteFile(filepath.Join(workspaceDir, "pubspec.yaml"), []byte(projectPubspec), 0o600))

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
}

func TestGeneratePackageWritesSchemaMetadataToPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"description": "Sample provider package",
		"license": "Apache-2.0",
		"homepage": "https://example.com/home",
		"repository": "https://github.com/example/sample",
		"keywords": ["pulumi", "category/cloud", "kind/component", "sample_provider"]
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "description: Sample provider package")
	assert.Contains(t, pubspec, "license: Apache-2.0")
	assert.Contains(t, pubspec, "homepage: https://example.com/home")
	assert.Contains(t, pubspec, "repository: https://github.com/example/sample")
	assert.Contains(t, pubspec, "topics:")
	assert.Contains(t, pubspec, "- pulumi")
	assert.Contains(t, pubspec, "- category-cloud")
	assert.Contains(t, pubspec, "- kind-component")
	assert.Contains(t, pubspec, "- sample-provider")
}

func TestGeneratePackageNormalizesPulumiHomepageMetadata(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"homepage": "https://pulumi.io"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "homepage: https://www.pulumi.com")
	assert.NotContains(t, pubspec, "homepage: https://pulumi.io")
}

func TestGeneratePackageWritesDartLanguageDependenciesToPubspec(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
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
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
}
