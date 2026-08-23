package main

import (
	"context"
	"testing"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestGeneratePackageAllowsPartialInlineReturnTypeProperties(t *testing.T) {
	t.Parallel()

	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"functions": {
			"sample:index:getValues": {
				"outputs": {
					"type": "object",
					"properties": {
						"results": {
							"type": "array",
							"items": { "type": "string" }
						}
					},
					"required": ["results"]
				}
			}
		}
	}`

	_, err := (&dartLanguageHost{}).GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class GetValuesResult")
	assert.Contains(t, content, "final List<String>? results;")
	assert.Contains(t, content, "this.results")
}
