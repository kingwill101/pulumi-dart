package main

import (
	"context"
	"encoding/json"
	"testing"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGeneratePackageGroupsS3AndRoute53SubmodulesUnderParents(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:s3control/bucket:Bucket": {},
			"sample:s3outposts/endpoint:Endpoint": {},
			"sample:s3tables/table:Table": {},
			"sample:route53domains/domain:Domain": {},
			"sample:route53recoverycontrol/cluster:Cluster": {},
			"sample:route53recoveryreadiness/resourceSet:ResourceSet": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "// FILE: s3.dart")
	assert.Contains(t, content, "export 's3/bucket.dart';")
	assert.Contains(t, content, "export 's3/endpoint.dart';")
	assert.Contains(t, content, "export 's3/table.dart';")
	assert.NotContains(t, content, "// FILE: s3control.dart")
	assert.NotContains(t, content, "// FILE: s3outposts.dart")
	assert.NotContains(t, content, "// FILE: s3tables.dart")

	assert.Contains(t, content, "// FILE: route53.dart")
	assert.Contains(t, content, "export 'route53/domain.dart';")
	assert.Contains(t, content, "export 'route53/cluster.dart';")
	assert.Contains(t, content, "export 'route53/resource_set.dart';")
	assert.NotContains(t, content, "// FILE: route53domains.dart")
	assert.NotContains(t, content, "// FILE: route53recoverycontrol.dart")
	assert.NotContains(t, content, "// FILE: route53recoveryreadiness.dart")
}

func TestGeneratePackageStripsRedundantModulePrefixFromNestedResourceNames(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema: `{
			"name": "sample",
			"version": "1.2.3",
			"resources": {
				"sample:s3/accesspoint:AccessPointPublicAccessBlockConfiguration": {
					"inputProperties": {
						"name": { "type": "string" }
					}
				},
				"sample:s3/accesspoint:AccessPointRule": {
					"inputProperties": {
						"name": { "type": "string" }
					}
				}
			}
		}`,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "class PublicAccessBlockConfiguration")
	assert.Contains(t, content, "class PublicAccessBlockConfigurationArgs")
	assert.Contains(t, content, "class Rule extends pulumi.CustomResource")
	assert.Contains(t, content, "class RuleArgs")
	assert.NotContains(t, content, "class AccessPointRule")
	assert.NotContains(t, content, "class AccessPointPublicAccessBlockConfiguration")
}

func TestGeneratePackageEmitsCanonicalModuleSymbolsForTokens(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:alpha:Shape": {
				"type": "object",
				"properties": {
					"size": { "type": "integer" }
				}
			},
			"sample:beta:Mode": {
				"type": "string",
				"enum": [
					{ "name": "on", "value": "on" },
					{ "name": "off", "value": "off" }
				]
			}
		},
		"resources": {
			"sample:alpha:Widget": {
				"inputProperties": {
					"shape": { "$ref": "#/types/sample:alpha:Shape" }
				}
			},
			"sample:beta:Widget": {}
		},
		"functions": {
			"sample:alpha:getWidget": {
				"inputs": {
					"properties": {
						"id": { "type": "string" }
					},
					"required": ["id"]
				},
				"outputs": {
					"properties": {
						"mode": { "$ref": "#/types/sample:beta:Mode" }
					}
				}
			},
			"sample:beta:getWidget": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")

	assert.Contains(t, content, "// FILE: alpha.dart")
	assert.Contains(t, content, "// FILE: beta.dart")
	assert.Contains(t, content, "class Shape ")
	assert.Contains(t, content, "class Widget extends pulumi.CustomResource")
	assert.Contains(t, content, "class WidgetArgs ")
	assert.Contains(t, content, "Future<GetWidgetResult> getWidget(")
	assert.Contains(t, content, "class GetWidgetArgs ")
	assert.Contains(t, content, "class GetWidgetResult ")
	assert.Contains(t, content, "enum Mode ")
}

func TestGeneratePackageSanitizesRuntimeTypeFieldName(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Thing": {
				"type": "object",
				"properties": {
					"runtimeType": { "type": "string" }
				},
				"required": ["runtimeType"]
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "final pulumi.Input<String> runtimeType_;")
	assert.Contains(t, content, "'runtimeType': runtimeType_,")
	assert.Contains(t, content, "runtimeType_: pulumi.Input.fromValue(map['runtimeType'] as String)")
}

func TestGeneratePackageSanitizesDocCommentMarkup(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Widget": {
				"description": "Widget <span pulumi-lang-nodejs=\"sample.Widget\">sample.Widget</span> resource.\n\n<!--Start PulumiCodeChooser -->\nExample:\n~~~typescript\nconst widget = new sample.Widget(\"w\");\n  const widgetIndented = new sample.Widget(\"w2\");\n~~~\n<!--End PulumiCodeChooser -->",
				"inputProperties": {
					"value": {
						"type": "string",
						"description": "A <span pulumi-lang-nodejs=\"value\">value</span> field."
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
	assert.NotContains(t, content, "pulumi-lang-nodejs")
	assert.NotContains(t, content, "<span")
	assert.NotContains(t, content, "</span>")
	assert.NotContains(t, content, "Start PulumiCodeChooser")
	assert.NotContains(t, content, "End PulumiCodeChooser")
	assert.NotContains(t, content, "## Example Usage")
	assert.Contains(t, content, "Example:")
	assert.Contains(t, content, "~~~typescript")
	assert.Contains(t, content, "const widget = new sample.Widget(\"w\");")
	assert.Contains(t, content, "  const widgetIndented = new sample.Widget(\"w2\");")
	assert.Contains(t, content, "///   const widgetIndented = new sample.Widget(\"w2\");")
	assert.Contains(t, content, "Widget sample.Widget resource.")
	assert.Contains(t, content, "A value field.")
}

func TestNormalizeDeprecatedProviderReferences(t *testing.T) {
	t.Parallel()

	rawSchema := `{
		"name": "sample",
		"resources": {
			"sample:index:Widget": {
				"properties": {
					"self": { "$ref": "/resources/pulumi:providers:sample" },
					"owner": { "$ref": "#/types/sample:index:Owner" }
				}
			}
		},
		"functions": {
			"sample:index:getWidget": {
				"inputs": {
					"properties": {
						"__self__": { "$ref": "/resources/pulumi:providers:sample" }
					}
				}
			}
		}
	}`

	normalized := codegen.NormalizeDeprecatedProviderReferences(rawSchema)
	assert.NotContains(t, normalized, `"/resources/pulumi:providers:sample"`)

	var decoded interface{}
	require.NoError(t, json.Unmarshal([]byte(normalized), &decoded))
	refs := collectSchemaRefs(decoded)
	assert.Contains(t, refs, "#/provider")
	assert.Contains(t, refs, "#/types/sample:index:Owner")
}

func TestExternalTokenTypeSpecTreatsPulumiProviderTokenAsCurrentPackage(t *testing.T) {
	t.Parallel()

	_, ok := codegen.ExternalTokenTypeSpec(
		"pulumi:providers:aws",
		"aws",
		"resource",
		"",
		true,
		true,
	)
	assert.False(t, ok)
}

func collectSchemaRefs(node interface{}) []string {
	refs := []string{}
	var walk func(interface{})
	walk = func(current interface{}) {
		switch typed := current.(type) {
		case map[string]interface{}:
			for key, value := range typed {
				if key == "$ref" {
					if ref, ok := value.(string); ok {
						refs = append(refs, ref)
					}
					continue
				}
				walk(value)
			}
		case []interface{}:
			for _, item := range typed {
				walk(item)
			}
		}
	}
	walk(node)
	return refs
}
