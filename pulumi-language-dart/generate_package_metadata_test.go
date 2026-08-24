package main

import (
	"context"
	"os"
	"path/filepath"
	"testing"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestGeneratePackageEmitsExactPluginIdentity(t *testing.T) {
	t.Parallel()

	targetDir := t.TempDir()
	_, err := (&dartLanguageHost{}).GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema: `{
			"name": "fail_on_create",
			"version": "1.0.0",
			"pluginDownloadURL": "https://plugins.example.test"
		}`,
	})
	require.NoError(t, err)
	contents, err := os.ReadFile(filepath.Join(targetDir, "pulumi-plugin.json"))
	require.NoError(t, err)
	assert.JSONEq(t, `{
		"resource": true,
		"name": "fail_on_create",
		"server": "https://plugins.example.test"
	}`, string(contents))
}
