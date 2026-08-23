package main

import (
	"context"
	"os"
	"path/filepath"
	"testing"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestCoerceOutputCollectionTypeConvertsUnsupportedObjectArraysToRawMapType(t *testing.T) {
	t.Parallel()

	typeSpec := codegen.PackageTypeSpec{
		Kind:     "array",
		DartType: "List<MetadataType>",
		ElementType: &codegen.PackageTypeSpec{
			Kind:          "object",
			DartType:      "MetadataType",
			ReferenceType: "MetadataType",
		},
	}

	coerced := codegen.CoerceOutputCollectionType(typeSpec)
	assert.Equal(t, "List<Map<String, dynamic>>", coerced.DartType)
	require.NotNil(t, coerced.ElementType)
	assert.Equal(t, "map", coerced.ElementType.Kind)
	assert.Equal(t, "Map<String, dynamic>", coerced.ElementType.DartType)
	require.NotNil(t, coerced.ElementType.ElementType)
	assert.Equal(t, "dynamic", coerced.ElementType.ElementType.DartType)
	assert.Equal(t, "dynamic", coerced.ElementType.ElementType.Kind)
}

func TestCoerceOutputCollectionTypeConvertsUnsupportedDynamicArraysToRawMapType(t *testing.T) {
	t.Parallel()

	typeSpec := codegen.PackageTypeSpec{
		Kind:     "array",
		DartType: "List<dynamic>",
		ElementType: &codegen.PackageTypeSpec{
			Kind:     "dynamic",
			DartType: "dynamic",
		},
	}

	coerced := codegen.CoerceOutputCollectionType(typeSpec)
	assert.Equal(t, "List<Map<String, dynamic>>", coerced.DartType)
	require.NotNil(t, coerced.ElementType)
	assert.Equal(t, "map", coerced.ElementType.Kind)
	assert.Equal(t, "Map<String, dynamic>", coerced.ElementType.DartType)
	require.NotNil(t, coerced.ElementType.ElementType)
	assert.Equal(t, "dynamic", coerced.ElementType.ElementType.DartType)
	assert.Equal(t, "dynamic", coerced.ElementType.ElementType.Kind)
}

func TestCoerceOutputCollectionTypeLeavesScalarArraysUntouched(t *testing.T) {
	t.Parallel()

	typeSpec := codegen.PackageTypeSpec{
		Kind:     "array",
		DartType: "List<String>",
		ElementType: &codegen.PackageTypeSpec{
			Kind:     "scalar",
			DartType: "String",
		},
	}

	coerced := codegen.CoerceOutputCollectionType(typeSpec)
	assert.Equal(t, "List<String>", coerced.DartType)
	assert.Equal(t, "scalar", coerced.ElementType.Kind)
	assert.Equal(t, "String", coerced.ElementType.DartType)
}

func TestGeneratePackageUsesVersionOverrideEnv(t *testing.T) {
	t.Setenv("PULUMI_DART_SDK_VERSION", "v9.9.9-dev.1")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
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
	assert.Contains(t, pubspec, "version: 9.9.9-dev.1")
}

func TestGeneratePackageUsesVersionSuffixEnv(t *testing.T) {
	t.Setenv("PULUMI_DART_SDK_VERSION_SUFFIX", "dev.7")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
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
	assert.Contains(t, pubspec, "version: 1.2.3-dev.7")
}

func TestGeneratePackageUsesDefaultVersionWhenSchemaVersionMissing(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "version: 0.0.1")
}

func TestGeneratePackageNormalizesLeadingVInSchemaVersion(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "v1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "version: 1.2.3")
}

func TestGeneratePackageWritesExtraFiles(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
		ExtraFiles: map[string][]byte{
			"README.md":                 []byte("# sample\n"),
			"analysis_options.yaml":     []byte("include: package:lints/recommended.yaml\n"),
			"lib/src/sample/extra.dart": []byte("const marker = 'ok';\n"),
		},
	})
	require.NoError(t, err)

	readme, err := os.ReadFile(filepath.Join(targetDir, "README.md"))
	require.NoError(t, err)
	assert.Equal(t, "# sample\n", string(readme))

	extra, err := os.ReadFile(filepath.Join(targetDir, "lib", "src", "sample", "extra.dart"))
	require.NoError(t, err)
	assert.Equal(t, "const marker = 'ok';\n", string(extra))

	analysisOptions, err := os.ReadFile(filepath.Join(targetDir, "analysis_options.yaml"))
	require.NoError(t, err)
	assert.Equal(t, "include: package:lints/recommended.yaml\n", string(analysisOptions))
}

func TestGeneratePackageWritesDefaultScaffoldingFiles(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	readme, err := os.ReadFile(filepath.Join(targetDir, "README.md"))
	require.NoError(t, err)
	assert.Contains(t, string(readme), "Generated Pulumi provider SDK for Dart")

	changelog, err := os.ReadFile(filepath.Join(targetDir, "CHANGELOG.md"))
	require.NoError(t, err)
	assert.Contains(t, string(changelog), "## 1.2.3")

	analysisOptions, err := os.ReadFile(filepath.Join(targetDir, "analysis_options.yaml"))
	require.NoError(t, err)
	assert.Equal(t, "include: package:lints/recommended.yaml\n", string(analysisOptions))

	exampleMain, err := os.ReadFile(filepath.Join(targetDir, "example", "main.dart"))
	require.NoError(t, err)
	assert.Contains(t, string(exampleMain), "class ExampleStack extends pulumi.Stack")

	pubspec, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspecContent := string(pubspec)
	assert.NotContains(t, pubspecContent, "very_good_analysis")
}

func TestGeneratePackagePreservesExistingScaffoldingFiles(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	require.NoError(t, os.MkdirAll(filepath.Join(targetDir, "example"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "README.md"), []byte("existing readme\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "CHANGELOG.md"), []byte("existing changelog\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "analysis_options.yaml"), []byte("existing analysis\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "example", "main.dart"), []byte("existing example\n"), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	readme, err := os.ReadFile(filepath.Join(targetDir, "README.md"))
	require.NoError(t, err)
	assert.Equal(t, "existing readme\n", string(readme))

	changelog, err := os.ReadFile(filepath.Join(targetDir, "CHANGELOG.md"))
	require.NoError(t, err)
	assert.Equal(t, "existing changelog\n", string(changelog))

	analysisOptions, err := os.ReadFile(filepath.Join(targetDir, "analysis_options.yaml"))
	require.NoError(t, err)
	assert.Equal(t, "existing analysis\n", string(analysisOptions))

	exampleMain, err := os.ReadFile(filepath.Join(targetDir, "example", "main.dart"))
	require.NoError(t, err)
	assert.Equal(t, "existing example\n", string(exampleMain))
}

func TestGeneratedPackageAnalysisOptionsUsesRecommendedLints(t *testing.T) {
	assert.Equal(t, "include: package:lints/recommended.yaml\n", string(codegen.GeneratedPackageAnalysisOptions()))
}

func TestGeneratePackageRejectsExtraFileCollisions(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.0.0"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
		ExtraFiles: map[string][]byte{
			"pubspec.yaml": []byte("name: should_not_override"),
		},
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "conflicts with generated file output")
}

func TestGeneratePackageRejectsUnsafeExtraFilePaths(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	parentMarker := filepath.Join(filepath.Dir(targetDir), "escaped.txt")
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
		ExtraFiles: map[string][]byte{
			"../escaped.txt": []byte("nope"),
		},
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "invalid extra file path")
	assert.NoFileExists(t, parentMarker)
}
