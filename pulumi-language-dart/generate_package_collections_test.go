package main

import (
	"context"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGeneratePackageEmitsConfigClass(t *testing.T) {
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
					"owner": { "type": "string" }
				},
				"required": ["owner"]
			}
		},
		"config": {
			"variables": {
				"region": { "type": "string" },
				"replicas": { "type": "integer" },
				"enabled": { "type": "boolean" },
				"mode": { "$ref": "#/types/sample:index:WidgetMode" },
				"metadata": { "$ref": "#/types/sample:index:WidgetMetadata" }
			},
			"required": ["region", "mode"]
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	rootContent, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.NotContains(t, rootContent, "sdk.dart")

	assert.Contains(t, content, "class SampleConfig")
	assert.Contains(t, content, "const config = SampleConfig();")
	assert.Contains(t, content, "String? get region")
	assert.Contains(t, content, "String requireRegion()")
	assert.Contains(t, content, "int? get replicas")
	assert.Contains(t, content, "return (raw).toInt();")
	assert.Contains(t, content, "bool? get enabled")
	assert.Contains(t, content, "return (raw).toBool();")
	assert.Contains(t, content, "WidgetMode? get mode")
	assert.Contains(t, content, "return (() { final guardedValue = raw; if (guardedValue == null) return null; return WidgetMode.fromValue(guardedValue as String); })();")
	assert.Contains(t, content, "WidgetMetadata? get metadata")
	assert.Contains(
		t,
		content,
		"return (() { final guardedValue = raw; if (guardedValue == null) return null; return WidgetMetadata.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();",
	)
	assert.Contains(t, content, "bool get regionIsSecret => _isSecret('region');")
	assert.NotContains(t, content, "_parseIntConfig(")
	assert.NotContains(t, content, "_parseBoolConfig(")
}

func TestGeneratePackageEmitsCollectionRefMappings(t *testing.T) {
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
					"owner": { "type": "string" }
				},
				"required": ["owner"]
			}
		},
		"config": {
			"variables": {
				"modeHistory": {
					"type": "array",
					"items": { "$ref": "#/types/sample:index:WidgetMode" }
				},
				"metadataById": {
					"type": "object",
					"additionalProperties": { "$ref": "#/types/sample:index:WidgetMetadata" }
				}
			}
		},
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"modes": {
						"type": "array",
						"items": { "$ref": "#/types/sample:index:WidgetMode" }
					},
					"metadataById": {
						"type": "object",
						"additionalProperties": { "$ref": "#/types/sample:index:WidgetMetadata" }
					}
				},
				"requiredInputs": ["modes"]
			}
		},
		"functions": {
			"sample:index:getWidgetDetails": {
				"outputs": {
					"properties": {
						"modes": {
							"type": "array",
							"items": { "$ref": "#/types/sample:index:WidgetMode" }
						},
						"metadataById": {
							"type": "object",
							"additionalProperties": { "$ref": "#/types/sample:index:WidgetMetadata" }
						}
					},
					"required": ["modes", "metadataById"]
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
	assert.Contains(t, content, "// FILE: index/widget_mode.dart")
	assert.Contains(t, content, "// FILE: index/widget_metadata.dart")
	assert.Contains(t, content, "// FILE: index/get_widget_details_result.dart")
	assert.Contains(t, content, "// FILE: index/widget.dart")
	assert.Contains(t, content, "// FILE: index/functions.dart")
	assert.Contains(t, content, "final pulumi.Input<List<WidgetMode>> modes;")
	assert.Contains(t, content, "final pulumi.Input<Map<String, WidgetMetadata>?>? metadataById;")
	assert.Contains(
		t,
		content,
		"pulumi.Input.mapInputValue<List<WidgetMode>, List<String>>(modes, (value) => pulumi.Input.encodeList<WidgetMode, String>(value, (value) => value.wireValue))",
	)
	assert.Contains(
		t,
		content,
		"'metadataById': ?pulumi.Input.mapOptionalInputValue<Map<String, WidgetMetadata>, Map<String, Map<String, dynamic>>>(metadataById, (value) => pulumi.Input.encodeMapValues<WidgetMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),",
	)

	assert.Contains(t, content, "final List<WidgetMode>? modes;")
	assert.Contains(t, content, "final Map<String, WidgetMetadata>? metadataById;")
	assert.Contains(
		t,
		content,
		"return pulumi.Input.decodeList<WidgetMode>(guardedValue, (value) => WidgetMode.fromValue(value as String))",
	)
	assert.Contains(
		t,
		content,
		"return pulumi.Input.decodeMapValues<WidgetMetadata>(guardedValue, (value) => WidgetMetadata.fromMap((value as Map).cast<String, dynamic>()))",
	)

	assert.Contains(t, content, "List<WidgetMode>? get modeHistory")
	assert.Contains(
		t,
		content,
		"return (() { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WidgetMode>(jsonDecode(guardedValue), (value) => WidgetMode.fromValue(value as String)); })();",
	)
	assert.Contains(t, content, "Map<String, WidgetMetadata>? get metadataById")
	assert.Contains(
		t,
		content,
		"return (() { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WidgetMetadata>(jsonDecode(guardedValue), (value) => WidgetMetadata.fromMap((value as Map).cast<String, dynamic>())); })();",
	)
}

func TestGeneratePackageHandlesResourceOutputNameCollision(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Widget": {
				"properties": {
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
	assert.Contains(t, content, "late final pulumi.Output<String?> name;")
	assert.Contains(t, content, "name = registerOutput<String?>('name');")
}

func TestGeneratePackageGoldenSnapshot(t *testing.T) {
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
		"config": {
			"variables": {
				"region": { "type": "string" },
				"replicas": { "type": "integer" },
				"enabled": { "type": "boolean" },
				"mode": { "$ref": "#/types/sample:index:WidgetMode" },
				"metadata": { "$ref": "#/types/sample:index:WidgetMetadata" }
			},
			"required": ["region", "mode"]
		},
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"mode": { "$ref": "#/types/sample:index:WidgetMode" },
					"metadata": { "$ref": "#/types/sample:index:WidgetMetadata" }
				},
				"requiredInputs": ["mode"],
				"properties": {
					"arn": { "type": "string" },
					"mode": { "$ref": "#/types/sample:index:WidgetMode" }
				},
				"required": ["arn", "mode"]
			}
		},
		"functions": {
			"sample:index:getWidgetDetails": {
				"inputs": {
					"properties": {
						"id": { "type": "string" }
					},
					"required": ["id"]
				},
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

	rootContent, sdkContent := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assertGoldenFile(t, filepath.Join("testdata", "generate_package", "sample_public.golden.dart"), rootContent)
	assertGoldenFile(t, filepath.Join("testdata", "generate_package", "sample_sdk.golden.dart"), sdkContent)
}

func TestGeneratePackageEscapesDollarPrefixedPropertyNames(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:JsonSchemaProps": {
				"type": "object",
				"properties": {
					"$ref": { "type": "string" },
					"$schema": { "type": "string" }
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, sdkContent := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, sdkContent, `'\$ref': ?ref`)
	assert.Contains(t, sdkContent, `'\$schema': ?schema`)
	assert.Contains(t, sdkContent, `map['\$ref']`)
	assert.Contains(t, sdkContent, `map['\$schema']`)
	assert.NotContains(t, sdkContent, `map['$ref']`)
	assert.NotContains(t, sdkContent, `map['$schema']`)
}
