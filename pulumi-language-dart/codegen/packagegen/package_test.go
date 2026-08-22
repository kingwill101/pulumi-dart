package packagegen

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestGenerateValidatesInput(t *testing.T) {
	_, err := Generate(Input{})
	assert.EqualError(t, err, "package schema is required")

	_, err = Generate(Input{Schema: &codegen.PackageSchema{}})
	assert.EqualError(t, err, "Dart package name is required")
}

func TestGenerateReturnsDeterministicallyOrderedPackageFiles(t *testing.T) {
	schemaJSON := `{
  "name": "sample",
  "resources": {
    "sample:index:Bucket": {"inputProperties": {}, "properties": {}}
  }
}`
	spec, err := codegen.ParsePackageSchema(schemaJSON, t.TempDir())
	require.NoError(t, err)

	result, err := Generate(Input{
		Schema:         spec,
		PackageName:    "pulumi_sample",
		SDKLibraryName: "pulumi_sample_sdk",
	})
	require.NoError(t, err)
	require.NotEmpty(t, result.Files)

	paths := make([]string, len(result.Files))
	for index, file := range result.Files {
		paths[index] = file.Path
		if index > 0 {
			assert.Less(t, result.Files[index-1].Path, file.Path)
		}
	}
	assert.Contains(t, paths, "pulumi_sample.dart")
	assert.Contains(t, paths, "src/index/bucket.dart")
}
