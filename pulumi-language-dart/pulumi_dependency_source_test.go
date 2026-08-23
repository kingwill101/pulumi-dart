package main

import (
	"fmt"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"testing"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestDefaultPulumiPubspecDependencyPathOverride(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "/tmp/local-pulumi")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "")

	dep, ok := configuredPulumiDependency().(map[string]string)
	require.True(t, ok)
	assert.Equal(t, "/tmp/local-pulumi", dep["path"])
}

func TestDefaultPulumiPubspecDependencyVersionOverride(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "^0.1.0")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "")

	dep, ok := configuredPulumiDependency().(string)
	require.True(t, ok)
	assert.Equal(t, "^0.1.0", dep)
}

func TestDefaultPulumiPubspecDependencyConstraintOverride(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_CONSTRAINT", ">=3.1.0 <3.2.0")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "3.0.0")

	dep, ok := configuredPulumiDependency().(string)
	require.True(t, ok)
	assert.Equal(t, ">=3.1.0 <3.2.0", dep)
}

func TestCompatiblePulumiConstraint(t *testing.T) {
	assert.Equal(t, "^3.0.0", compatiblePulumiConstraint("3.0.0"))
	assert.Equal(t, "^3.1.0-dev.1", compatiblePulumiConstraint("v3.1.0-dev.1"))
	assert.Empty(t, compatiblePulumiConstraint("  "))
}

func TestDefaultPulumiPubspecDependencyGitDefault(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "")

	dep, ok := configuredPulumiDependency().(map[string]interface{})
	require.True(t, ok)
	gitSpec, ok := dep["git"].(map[string]interface{})
	require.True(t, ok)
	assert.Equal(t, defaultPulumiGitURL, gitSpec["url"])
	assert.Equal(t, defaultPulumiGitPath, gitSpec["path"])
	_, hasRef := gitSpec["ref"]
	assert.False(t, hasRef)
}

func TestDefaultPulumiPubspecDependencyGitOverride(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "https://example.com/repo.git")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "sdk/pulumi")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "release/v1")

	dep, ok := configuredPulumiDependency().(map[string]interface{})
	require.True(t, ok)
	gitSpec, ok := dep["git"].(map[string]interface{})
	require.True(t, ok)
	assert.Equal(t, "https://example.com/repo.git", gitSpec["url"])
	assert.Equal(t, "sdk/pulumi", gitSpec["path"])
	assert.Equal(t, "release/v1", gitSpec["ref"])
}

func TestDefaultPulumiPubspecDependencyPubDevDefault(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		_, _ = fmt.Fprintln(w, `{"latest":{"version":"1.2.3"}}`)
	}))
	t.Cleanup(server.Close)

	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "true")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PUBDEV_URL", server.URL)
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "")

	dep, ok := configuredPulumiDependency().(string)
	require.True(t, ok)
	assert.Equal(t, "1.2.3", dep)
}

func TestDefaultPulumiPubspecDependencyPubDevFailureFallsBackToGit(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		http.Error(w, "boom", http.StatusInternalServerError)
	}))
	t.Cleanup(server.Close)

	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "true")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PUBDEV_URL", server.URL)
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "https://example.com/pulumi-dart.git")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "pulumi-dart")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "main")

	dep, ok := configuredPulumiDependency().(map[string]interface{})
	require.True(t, ok)
	gitSpec, ok := dep["git"].(map[string]interface{})
	require.True(t, ok)
	assert.Equal(t, "https://example.com/pulumi-dart.git", gitSpec["url"])
	assert.Equal(t, "pulumi-dart", gitSpec["path"])
	assert.Equal(t, "main", gitSpec["ref"])
}

func TestShouldRewriteTemplatePulumiDependency(t *testing.T) {
	t.Setenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", "")

	assert.True(t, codegen.ShouldRewriteTemplatePulumiDependency(nil, true))
	assert.True(t, codegen.ShouldRewriteTemplatePulumiDependency("^1.0.0", true))
	assert.False(t, codegen.ShouldRewriteTemplatePulumiDependency("path:/tmp/pulumi", true))
	assert.False(t, codegen.ShouldRewriteTemplatePulumiDependency(map[string]interface{}{
		"path": "/tmp/pulumi",
	}, true))
	assert.False(t, codegen.ShouldRewriteTemplatePulumiDependency(map[string]interface{}{
		"git": map[string]interface{}{"url": "https://example.com/p.git"},
	}, true))
	assert.True(t, codegen.ShouldRewriteTemplatePulumiDependency(map[string]interface{}{
		"version": "^1.0.0",
	}, true))
}

func TestShouldRewriteTemplatePulumiDependencyDisabled(t *testing.T) {
	t.Setenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", "false")
	assert.False(t, codegen.ShouldRewriteTemplatePulumiDependency("^1.0.0", false))
}

func TestShouldRewriteTemplatePulumiDependencyRespectsTruthyVariants(t *testing.T) {
	_ = os.Unsetenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI")
	t.Setenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", "0")
	assert.False(t, codegen.ShouldRewriteTemplatePulumiDependency("^1.0.0", false))
}

func TestIsSourceDependencySpec(t *testing.T) {
	assert.True(t, codegen.IsSourceDependencySpec("path:../pulumi-dart"))
	assert.True(t, codegen.IsSourceDependencySpec(map[string]interface{}{
		"path": "../pulumi-dart",
	}))
	assert.True(t, codegen.IsSourceDependencySpec(map[string]interface{}{
		"git": map[string]interface{}{"url": "https://example.com/repo.git"},
	}))
	assert.False(t, codegen.IsSourceDependencySpec("^1.0.0"))
	assert.False(t, codegen.IsSourceDependencySpec(map[string]interface{}{
		"version": "^1.0.0",
	}))
}

func TestDependencyPackageDirFromDartPackageName(t *testing.T) {
	assert.Equal(t, "random", codegen.DependencyPackageDirFromDartPackageName("pulumi_random"))
	assert.Equal(t, "google-native", codegen.DependencyPackageDirFromDartPackageName("pulumi_google_native"))
	assert.Equal(t, "", codegen.DependencyPackageDirFromDartPackageName("pulumi"))
	assert.Equal(t, "", codegen.DependencyPackageDirFromDartPackageName("http"))
}

func TestInferLocalPulumiDependencyFromProjectReadsDependencyOverrides(t *testing.T) {
	projectDir := t.TempDir()
	pubspecPath := filepath.Join(projectDir, "pubspec.yaml")
	pulumiPath := filepath.Join(projectDir, "vendor", "pulumi")
	dependencyOverrides := filepath.Join("vendor", "pulumi")

	pubspec := `name: dart_sdk_gen
description: Pulumi Dart SDK generation workspace
version: 0.0.1
environment:
  sdk: ">=3.11.0 <4.0.0"
dependencies:
  pulumi: any
dependency_overrides:
  pulumi:
    path: ` + dependencyOverrides + `
`
	err := os.WriteFile(pubspecPath, []byte(pubspec), 0o600)
	require.NoError(t, err)

	inferred := inferLocalPulumiDependencyFromProject(projectDir)
	assert.Equal(t, filepath.Clean(pulumiPath), inferred)
}
