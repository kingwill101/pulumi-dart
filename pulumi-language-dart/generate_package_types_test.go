package main

import (
	"context"
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGeneratePackageEmitsNamedTypesAndRefs(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:WidgetMode": {
				"type": "string",
				"enum": [
					{ "name": "ReadOnly", "value": "read-only" },
					{ "name": "ReadWrite", "value": "read-write" }
				]
			},
			"sample:index:WidgetMetadata": {
				"type": "object",
				"properties": {
					"owner": { "type": "string" },
					"mode": { "$ref": "#/types/sample:index:WidgetMode" }
				},
				"required": ["owner", "mode"]
			}
		},
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"mode": { "$ref": "#/types/sample:index:WidgetMode" },
					"metadata": { "$ref": "#/types/sample:index:WidgetMetadata" }
				},
				"requiredInputs": ["mode"]
			}
		},
		"functions": {
			"sample:index:getWidgetDetails": {
				"outputs": {
					"properties": {
						"metadata": { "$ref": "#/types/sample:index:WidgetMetadata" },
						"mode": { "$ref": "#/types/sample:index:WidgetMode" }
					},
					"required": ["metadata", "mode"]
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	rootContent, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.NotContains(t, rootContent, "sdk.dart")

	assert.Contains(t, content, "enum WidgetMode")
	assert.Contains(t, content, `readOnly("read-only"),`)
	assert.Contains(t, content, `readWrite("read-write");`)
	assert.Contains(t, content, "const WidgetMode(this.wireValue);")
	assert.Contains(t, content, "final String wireValue;")
	assert.Contains(t, content, "static WidgetMode fromValue(String value)")

	assert.Contains(t, content, "class WidgetMetadata")
	assert.Contains(t, content, "final pulumi.Input<String> owner;")
	assert.Contains(t, content, "final pulumi.Input<WidgetMode> mode;")
	assert.Contains(t, content, "'mode': pulumi.Input.mapInputValue<WidgetMode, String>(mode, (value) => value.wireValue),")
	assert.Contains(t, content, "mode: WidgetMode.fromValue(map['mode']! as String)")

	assert.Contains(t, content, "class WidgetArgs")
	assert.Contains(t, content, "final pulumi.Input<WidgetMode> mode;")
	assert.Contains(t, content, "final pulumi.Input<WidgetMetadata?>? metadata;")
	assert.Contains(t, content, "metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),")
	assert.Contains(t, content, "mode: pulumi.Input.fromValue(WidgetMode.fromValue(map['mode']! as String))")
	assert.Contains(
		t,
		content,
		"'metadata': ?pulumi.Input.mapOptionalInputValue<WidgetMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),",
	)

	assert.Contains(t, content, "class GetWidgetDetailsResult")
	assert.Contains(t, content, "final WidgetMetadata metadata;")
	assert.Contains(t, content, "metadata: WidgetMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())")
	assert.Contains(t, content, "final WidgetMode mode;")
	assert.Contains(t, content, "mode: WidgetMode.fromValue(map['mode']! as String)")
}

func TestGeneratePackageFromMapUsesNonNullDecodeForOptionalObjectProperties(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:WidgetMetadata": {
				"type": "object",
				"properties": {
					"owner": { "type": "string" }
				},
				"required": ["owner"]
			}
		},
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"metadata": { "$ref": "#/types/sample:index:WidgetMetadata" }
				}
			}
		},
		"functions": {
			"sample:index:getWidget": {
				"outputs": {
					"properties": {
						"metadata": { "$ref": "#/types/sample:index:WidgetMetadata" }
					}
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(
		t,
		content,
		"metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WidgetMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),",
	)
	assert.Contains(
		t,
		content,
		"metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return WidgetMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),",
	)
}

func TestGeneratePackageTreatsEmptyObjectTypesAsMaps(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Opaque": {
				"type": "object"
			}
		},
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"opaque": { "$ref": "#/types/sample:index:Opaque" }
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "final pulumi.Input<Map<String, dynamic>?>? opaque;")
	assert.Contains(t, content, "'opaque': ?opaque,")
	assert.NotContains(t, content, "Input<Opaque>")
	assert.NotContains(t, content, "index/opaque.dart")
}

func TestGeneratePackageAvoidsPulumiConfigImportCollision(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Config": {
				"type": "object",
				"properties": {
					"value": { "type": "string" }
				}
			}
		},
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"config": { "$ref": "#/types/sample:index:Config" }
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	matches, err := filepath.Glob(filepath.Join(targetDir, "lib", "src", "index", "widget_args*.dart"))
	require.NoError(t, err)
	require.NotEmpty(t, matches)

	argsData, err := os.ReadFile(matches[0])
	require.NoError(t, err)
	argsContent := string(argsData)
	assert.Contains(t, argsContent, "import 'package:pulumi/pulumi.dart' as pulumi;")
	assert.Contains(t, argsContent, "pulumi.Input.mapOptionalInputValue<Config, Map<String, dynamic>>")
}

func TestGeneratePackageAvoidsResourceTypeNameCollisions(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Widget": {
				"type": "object",
				"properties": {
					"owner": { "type": "string" }
				}
			}
		},
		"resources": {
			"sample:index:Widget": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class Widget {")
	assert.Contains(t, content, "class WidgetResource extends pulumi.CustomResource")
	assert.Contains(t, content, "export 'index/widget_resource.dart';")
}

func TestGeneratePackageSanitizesBuiltInResourceClassName(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Function": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class FunctionType extends pulumi.CustomResource")
	assert.Contains(t, content, "export 'index/function_type.dart';")
}

func TestGeneratePackageSanitizesCoreTypeResourceClassNames(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Map": {},
			"sample:index:Input": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class MapType extends pulumi.CustomResource")
	assert.Contains(t, content, "class InputType extends pulumi.CustomResource")
	assert.Contains(t, content, "export 'index/map_type.dart';")
	assert.Contains(t, content, "export 'index/input_type.dart';")
}

func TestGeneratePackageAvoidsNumericSuffixClassNameCollisions(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Foo": {
				"type": "object",
				"properties": {
					"owner": { "type": "string" }
				}
			}
		},
		"resources": {
			"sample:index:Foo": {},
			"sample:index:Foo2": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class Foo2 extends pulumi.CustomResource")
	assert.Contains(t, content, "class FooResource extends pulumi.CustomResource")
	assert.Contains(t, content, "export 'index/foo2.dart';")
	assert.Contains(t, content, "export 'index/foo_resource.dart';")
}

func TestGeneratePackageModuleQualifiesResourceNameCollisions(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:alpha:Thing": {},
			"sample:beta:Thing": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class Thing extends pulumi.CustomResource")
	assert.Contains(t, content, "export 'alpha/thing.dart';")
	assert.Contains(t, content, "export 'beta/thing.dart';")
	assert.Contains(t, content, "// FILE: beta.dart")
	assert.Contains(t, content, "export 'beta/thing.dart';")
}

func TestGeneratePackageKeepsCanonicalResourceNamesPerModule(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:lightsail/bucket:Bucket": {
				"inputProperties": {
					"name": { "type": "string" }
				}
			},
			"sample:s3/bucket:Bucket": {
				"inputProperties": {
					"name": { "type": "string" }
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class Bucket extends pulumi.CustomResource")
	assert.Contains(t, content, "// FILE: lightsail/bucket.dart")
	assert.Contains(t, content, "// FILE: s3/bucket.dart")
	assert.NotContains(t, content, "class BucketS3 extends pulumi.CustomResource")
	assert.NotContains(t, content, "typedef Bucket = BucketS3;")
}
