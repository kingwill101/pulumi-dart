package codegen

import (
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestGeneratePackageValidatesInput(t *testing.T) {
	_, err := GeneratePackage(PackageInput{})
	assert.EqualError(t, err, "package schema is required")

	_, err = GeneratePackage(PackageInput{Schema: &PackageSchema{}})
	assert.EqualError(t, err, "Dart package name is required")
}

func TestGeneratePackageReturnsDeterministicallyOrderedFiles(t *testing.T) {
	schemaJSON := `{
  "name": "sample",
  "resources": {
    "sample:index:Bucket": {"inputProperties": {}, "properties": {}}
  }
}`
	spec, err := ParsePackageSchema(schemaJSON, t.TempDir())
	require.NoError(t, err)

	result, err := GeneratePackage(PackageInput{
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
