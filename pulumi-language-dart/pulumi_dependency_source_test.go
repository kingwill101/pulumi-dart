package main

import (
	"os"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestDefaultPulumiPubspecDependencyPathOverride(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "/tmp/local-pulumi")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "")

	dep, ok := defaultPulumiPubspecDependency().(map[string]string)
	require.True(t, ok)
	assert.Equal(t, "/tmp/local-pulumi", dep["path"])
}

func TestDefaultPulumiPubspecDependencyVersionOverride(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "^0.1.0")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "")

	dep, ok := defaultPulumiPubspecDependency().(string)
	require.True(t, ok)
	assert.Equal(t, "^0.1.0", dep)
}

func TestDefaultPulumiPubspecDependencyGitDefault(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "")

	dep, ok := defaultPulumiPubspecDependency().(map[string]interface{})
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
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", "https://example.com/repo.git")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", "sdk/pulumi")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF", "release/v1")

	dep, ok := defaultPulumiPubspecDependency().(map[string]interface{})
	require.True(t, ok)
	gitSpec, ok := dep["git"].(map[string]interface{})
	require.True(t, ok)
	assert.Equal(t, "https://example.com/repo.git", gitSpec["url"])
	assert.Equal(t, "sdk/pulumi", gitSpec["path"])
	assert.Equal(t, "release/v1", gitSpec["ref"])
}

func TestShouldRewriteTemplatePulumiDependency(t *testing.T) {
	t.Setenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", "")

	assert.True(t, shouldRewriteTemplatePulumiDependency(nil))
	assert.True(t, shouldRewriteTemplatePulumiDependency("^1.0.0"))
	assert.False(t, shouldRewriteTemplatePulumiDependency("path:/tmp/pulumi"))
	assert.False(t, shouldRewriteTemplatePulumiDependency(map[string]interface{}{
		"path": "/tmp/pulumi",
	}))
	assert.False(t, shouldRewriteTemplatePulumiDependency(map[string]interface{}{
		"git": map[string]interface{}{"url": "https://example.com/p.git"},
	}))
	assert.True(t, shouldRewriteTemplatePulumiDependency(map[string]interface{}{
		"version": "^1.0.0",
	}))
}

func TestShouldRewriteTemplatePulumiDependencyDisabled(t *testing.T) {
	t.Setenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", "false")
	assert.False(t, shouldRewriteTemplatePulumiDependency("^1.0.0"))
}

func TestShouldRewriteTemplatePulumiDependencyRespectsTruthyVariants(t *testing.T) {
	_ = os.Unsetenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI")
	t.Setenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI", "0")
	assert.False(t, shouldRewriteTemplatePulumiDependency("^1.0.0"))
}

func TestIsSourceDependencySpec(t *testing.T) {
	assert.True(t, isSourceDependencySpec("path:../pulumi-dart"))
	assert.True(t, isSourceDependencySpec(map[string]interface{}{
		"path": "../pulumi-dart",
	}))
	assert.True(t, isSourceDependencySpec(map[string]interface{}{
		"git": map[string]interface{}{"url": "https://example.com/repo.git"},
	}))
	assert.False(t, isSourceDependencySpec("^1.0.0"))
	assert.False(t, isSourceDependencySpec(map[string]interface{}{
		"version": "^1.0.0",
	}))
}

func TestDependencyPackageDirFromDartPackageName(t *testing.T) {
	assert.Equal(t, "random", dependencyPackageDirFromDartPackageName("pulumi_random"))
	assert.Equal(t, "gcp-global-cloudrun", dependencyPackageDirFromDartPackageName("pulumi_gcp_global_cloudrun"))
	assert.Equal(t, "", dependencyPackageDirFromDartPackageName("pulumi"))
	assert.Equal(t, "", dependencyPackageDirFromDartPackageName("http"))
}
