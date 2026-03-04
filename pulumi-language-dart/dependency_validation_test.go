package main

import (
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"testing"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestValidateGeneratedPubspecDependenciesRejectsSelfDependency(t *testing.T) {
	err := validateGeneratedPubspecDependencies(codegen.PubSpec{
		Name: "pulumi_sample",
		Dependencies: map[string]interface{}{
			"pulumi_sample": "^1.0.0",
		},
	}, t.TempDir())
	require.Error(t, err)
	assert.Contains(t, err.Error(), "self dependency")
}

func TestValidateGeneratedPubspecDependenciesPathValidationDisabled(t *testing.T) {
	t.Setenv("PULUMI_DART_VALIDATE_DEPENDENCY_PATHS", "")

	err := validateGeneratedPubspecDependencies(codegen.PubSpec{
		Name: "pulumi_sample",
		Dependencies: map[string]interface{}{
			"pulumi_local": map[string]string{"path": "./missing"},
		},
	}, t.TempDir())
	require.NoError(t, err)
}

func TestValidateGeneratedPubspecDependenciesPathValidationEnabled(t *testing.T) {
	t.Setenv("PULUMI_DART_VALIDATE_DEPENDENCY_PATHS", "true")

	err := validateGeneratedPubspecDependencies(codegen.PubSpec{
		Name: "pulumi_sample",
		Dependencies: map[string]interface{}{
			"pulumi_local": map[string]string{"path": "./missing"},
		},
	}, t.TempDir())
	require.Error(t, err)
	assert.Contains(t, err.Error(), "path does not exist")
}

func TestValidateGeneratedPubspecDependenciesPathValidationEnabledPassesForExistingPath(t *testing.T) {
	t.Setenv("PULUMI_DART_VALIDATE_DEPENDENCY_PATHS", "true")
	baseDir := t.TempDir()
	existingPath := filepath.Join(baseDir, "local-sdk")
	require.NoError(t, os.MkdirAll(existingPath, 0o700))

	err := validateGeneratedPubspecDependencies(codegen.PubSpec{
		Name: "pulumi_sample",
		Dependencies: map[string]interface{}{
			"pulumi_local": map[string]string{"path": "./local-sdk"},
		},
	}, baseDir)
	require.NoError(t, err)
}

func TestValidateGeneratedPubspecDependenciesPubDevValidationEnabled(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch r.URL.Path {
		case "/packages/pulumi_ok":
			w.WriteHeader(http.StatusOK)
		default:
			w.WriteHeader(http.StatusNotFound)
		}
	}))
	defer server.Close()

	t.Setenv("PULUMI_DART_VALIDATE_PUBDEV", "true")
	t.Setenv("PULUMI_DART_PUBDEV_API_BASE_URL", server.URL+"/packages")

	err := validateGeneratedPubspecDependencies(codegen.PubSpec{
		Name: "pulumi_sample",
		Dependencies: map[string]interface{}{
			"pulumi_ok":  "^1.0.0",
			"pulumi_bad": "^1.0.0",
		},
	}, t.TempDir())
	require.Error(t, err)
	assert.Contains(t, err.Error(), "pulumi_bad")
	assert.Contains(t, err.Error(), "not found on pub.dev")
}

func TestShouldValidateDependencyOnPubDev(t *testing.T) {
	assert.True(t, shouldValidateDependencyOnPubDev("^1.0.0"))
	assert.False(t, shouldValidateDependencyOnPubDev("path:../pulumi-dart"))
	assert.False(t, shouldValidateDependencyOnPubDev(map[string]interface{}{
		"path": "../pulumi-dart",
	}))
	assert.False(t, shouldValidateDependencyOnPubDev(map[string]interface{}{
		"git": map[string]interface{}{"url": "https://example.com/repo.git"},
	}))
	assert.True(t, shouldValidateDependencyOnPubDev(map[string]interface{}{
		"version": "^1.0.0",
	}))
}
