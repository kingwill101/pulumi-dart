package main

import (
	"context"
	"os"
	"path/filepath"
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
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
	spec, err := codegen.ParsePackageSchema(`{"name":"camelNames","version":"19.0.0"}`, nil)
	require.NoError(t, err)
	files := defaultGeneratedExtraFiles("pulumi_camelnames", "camelNames", "19.0.0", spec)
	require.JSONEq(t, `{
		"resource": true,
		"name": "camelNames"
	}`, string(files["pulumi-plugin.json"]))
}

func TestGeneratedExtraFilesIncludeParameterizedProviderMetadata(t *testing.T) {
	t.Parallel()
	directory := t.TempDir()
	_, err := (&dartLanguageHost{}).GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: directory,
		Schema: `{
		"name":"subpackage","version":"2.0.0",
		"parameterization":{
			"baseProvider":{"name":"parameterized","version":"1.2.3"},
			"parameter":"SGVsbG9Xb3JsZA=="
		}
	}`,
	})
	require.NoError(t, err)
	contents, err := os.ReadFile(filepath.Join(directory, "pulumi-plugin.json"))
	require.NoError(t, err)
	require.JSONEq(t, `{
		"resource":true,
		"name":"parameterized",
		"version":"1.2.3",
		"parameterization":{
			"name":"subpackage",
			"version":"2.0.0",
			"value":"SGVsbG9Xb3JsZA=="
		}
	}`, string(contents))
}
