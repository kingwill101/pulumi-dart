package main

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/require"
)

func TestLocalPathDependencyPluginReadsProviderIdentity(t *testing.T) {
	t.Parallel()
	root := t.TempDir()
	dependency := filepath.Join(root, "provider")
	require.NoError(t, os.MkdirAll(dependency, 0o700))
	require.NoError(t, os.WriteFile(
		filepath.Join(dependency, "pulumi-plugin.json"),
		[]byte(`{"resource":true,"name":"camelNames","version":"19.0.0"}`),
		0o600,
	))

	name, version := localPathDependencyPlugin(
		filepath.Join(root, "pubspec.yaml"), "path:provider",
	)
	require.Equal(t, "camelNames", name)
	require.Equal(t, "19.0.0", version)
}

func TestGeneratedExtraFilesIncludeProviderMetadata(t *testing.T) {
	t.Parallel()
	files := defaultGeneratedExtraFiles("pulumi_camelnames", "camelNames", "19.0.0")
	require.JSONEq(t, `{
		"resource": true,
		"name": "camelNames",
		"version": "19.0.0"
	}`, string(files["pulumi-plugin.json"]))
}
