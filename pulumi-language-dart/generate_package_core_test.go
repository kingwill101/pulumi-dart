package main

import (
	"context"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGeneratePackageEmitsResourceClasses(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Widget": {
				"isComponent": false
			},
			"sample:index:WidgetComponent": {
				"isComponent": true
			}
		},
		"functions": {
			"sample:index:doThing": {}
		}
	}`

	resp, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	rootContent, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.NotContains(t, rootContent, "sdk.dart")
	assert.Contains(t, content, "// FILE: index/widget.dart")
	assert.Contains(t, content, "// FILE: index/widget_component.dart")
	assert.Contains(t, content, "// FILE: index/functions.dart")
	assert.NotContains(t, content, "part of ")
	assert.NotContains(t, content, "part '")
	assert.Contains(t, content, "class Widget extends pulumi.CustomResource")
	assert.Contains(t, content, "class WidgetComponent extends pulumi.ComponentResource")
	assert.Contains(t, content, "remote: true")
	assert.Contains(t, content, "/// Creates a new [Widget].")
	assert.Contains(t, content, "/// [name] The Pulumi resource name.")
	assert.Contains(t, content, "/// [options] Resource options controlling this resource's behavior.")
	assert.Contains(t, content, "pulumi.Input.mapToInputs")
	assert.Contains(t, content, "sample:index:Widget")
	assert.Contains(t, content, "sample:index:WidgetComponent")
	assert.Contains(t, content, "Future<Map<String, dynamic>> doThing")
	assert.Contains(t, content, "sample:index:doThing")
	assert.Contains(t, content, "options")
}

func TestGeneratePackageHandlesFunctionTokenSuffix(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Mode": {
				"type": "string",
				"enum": [{"name": "Active", "value": "active"}]
			}
		},
		"functions": {
			"sample:index:Echo/doEchoMethod": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	rootContent, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.NotContains(t, rootContent, "sdk.dart")
	assert.Contains(t, content, "Future<Map<String, dynamic>> doEchoMethod")
	assert.Contains(t, content, "sample:index:Echo/doEchoMethod")
}

func TestGeneratePackageEmitsMultiArgumentInvokeSignature(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Mode": {
				"type": "string",
				"enum": [{"name": "Active", "value": "active"}]
			}
		},
		"functions": {
			"sample:index:lookupWidget": {
				"inputs": {
					"properties": {
						"count": { "type": "integer" },
						"mode": { "$ref": "#/types/sample:index:Mode" },
						"name": { "type": "string" }
					},
					"required": ["name", "mode"]
				},
				"multiArgumentInputs": ["name", "mode", "count"]
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "import 'mode.dart';")
	assert.Contains(t, content, "pulumi.Input<String> name,\n  pulumi.Input<Mode> mode,\n  pulumi.Input<int?>? count,")
	assert.Contains(t, content, "LookupWidgetArgs(name: name, mode: mode, count: count, ).toMap()")
	assert.Less(t, strings.Index(content, "pulumi.Input<String> name,"), strings.Index(content, "pulumi.Input<int?>? count,"))
}

func TestGeneratePackageUsesModuleDirectoryStructure(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:accesscontextmanager/accessLevel:AccessLevel": {}
		},
		"functions": {
			"sample:accesscontextmanager/accessLevel:getAccessLevel": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "// FILE: accesscontextmanager/access_level.dart")
	assert.Contains(t, content, "// FILE: accesscontextmanager/functions.dart")
	assert.Contains(t, content, "// FILE: accesscontextmanager.dart")
	assert.Contains(t, content, "export 'accesscontextmanager/access_level.dart';")
	assert.Contains(t, content, "export 'accesscontextmanager/functions.dart';")
	assert.NotContains(t, content, "// FILE: accesscontextmanager/access_level/access_level.dart")
	assert.NotContains(t, content, "export 'accesscontextmanager/access_level/access_level.dart';")

	parentModuleEntry, err := os.ReadFile(filepath.Join(targetDir, "lib", "accesscontextmanager.dart"))
	require.NoError(t, err)
	assert.Contains(t, string(parentModuleEntry), "export 'package:pulumi_sample/src/accesscontextmanager.dart';")
}

func TestGeneratePackageEmitsParameterizedPackageRegistration(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "pkg",
		"version": "0.0.1",
		"parameterization": {
			"baseProvider": {
				"name": "testprovider",
				"version": "0.0.1"
			},
			"parameter": "cGtn"
		},
		"resources": {
			"pkg:index:Echo": {
				"isComponent": false
			},
			"pkg:index:EchoComponent": {
				"isComponent": true
			}
		},
		"functions": {
			"pkg:index:doEcho": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_pkg")
	assert.Contains(t, content, "import 'package:pulumi/pulumi.dart' as pulumi;")
	assert.Contains(t, content, "// FILE: internal/package_registration.dart")
	assert.Contains(t, content, "final registerPackageRequest = pulumi.RegisterPackageRequest(")
	assert.Contains(t, content, `name: "testprovider",`)
	assert.Contains(t, content, `version: "0.0.1",`)
	assert.Contains(t, content, "parameterization: pulumi.Parameterization(")
	assert.Contains(t, content, `name: "pkg",`)
	assert.Contains(t, content, `value: <int>[112, 107, 103],`)
	assert.Contains(t, content, "registerPackageRequest: package_registration.registerPackageRequest")
	assert.Contains(t, content, "class EchoComponent extends pulumi.ComponentResource")
	assert.Contains(
		t,
		content,
		"options ?? pulumi.ComponentResourceOptions(),\n          registerPackageRequest: package_registration.registerPackageRequest,\n          remote: true,\n        )",
	)
}

func TestGeneratePackageEmitsExtensionPackageRegistration(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "extension",
		"version": "4.5.6",
		"extensionParameterization": {
			"baseProvider": {
				"name": "base",
				"version": "1.2.3"
			},
			"parameter": "ZXh0"
		},
		"resources": {
			"extension:index:Thing": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_extension")
	assert.Contains(t, content, `name: "base",`)
	assert.Contains(t, content, `version: "1.2.3",`)
	assert.Contains(t, content, "extensionParameterization: pulumi.Parameterization(")
	assert.Contains(t, content, `name: "extension",`)
	assert.Contains(t, content, `version: "4.5.6",`)
	assert.Contains(t, content, `value: <int>[101, 120, 116],`)
}

func TestGeneratePackageEmitsArgsAndResultClasses(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"size": { "type": "integer" },
					"label": { "type": "string" }
				},
				"requiredInputs": ["size"],
				"properties": {
					"size": { "type": "integer" },
					"label": { "type": "string" },
					"arn": { "type": "string" }
				},
				"required": ["arn"]
			}
		},
		"functions": {
			"sample:index:getWidget": {
				"inputs": {
					"properties": {
						"id": { "type": "string" }
					},
					"required": ["id"]
				},
				"outputs": {
					"properties": {
						"name": { "type": "string" },
						"tags": {
							"type": "array",
							"items": { "type": "string" }
						}
					},
					"required": ["name"]
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
	assert.Contains(t, content, "// FILE: index/widget_args.dart")
	assert.Contains(t, content, "// FILE: index/get_widget_args.dart")
	assert.Contains(t, content, "// FILE: index/get_widget_result.dart")
	assert.Contains(t, content, "// FILE: index/widget.dart")
	assert.Contains(t, content, "// FILE: index/functions.dart")

	assert.Contains(t, content, "class WidgetArgs")
	assert.Contains(t, content, "final pulumi.Input<int> size;")
	assert.Contains(t, content, "final pulumi.Input<String?>? label;")
	assert.Contains(t, content, "required this.size")
	assert.Contains(t, content, "this.label")
	assert.NotContains(t, content, "size: map['size'] as int")
	assert.Contains(t, content, "WidgetArgs? args")
	assert.Contains(t, content, "args?.toMap()")
	assert.Contains(t, content, "size: pulumi.Input.fromValue(map['size'] as int)")
	assert.Contains(t, content, "label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),")

	assert.Contains(t, content, "late final pulumi.Output<String> arn;")
	assert.Contains(t, content, "late final pulumi.Output<int?> size;")
	assert.Contains(t, content, "late final pulumi.Output<String?> label;")
	assert.Contains(t, content, "arn = registerOutput<String>('arn');")
	assert.Contains(t, content, "size = registerOutput<int?>('size');")
	assert.Contains(t, content, "label = registerOutput<String?>('label');")

	assert.Contains(t, content, "class GetWidgetArgs")
	assert.Contains(t, content, "final pulumi.Input<String> id;")
	assert.Contains(t, content, "required this.id")
	assert.NotContains(t, content, "id =")
	assert.Contains(t, content, "class GetWidgetResult")
	assert.Contains(t, content, "final String name;")
	assert.Contains(t, content, "final List<String>? tags;")
	assert.Contains(t, content, "Future<GetWidgetResult> getWidget")
	assert.Contains(t, content, "GetWidgetResult.fromMap(result)")
	assert.Contains(t, content, "name: map['name'] as String")
	assert.Contains(t, content, "tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),")
}

func TestGeneratePackageComponentResourceOutputsAreNullable(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"resources": {
			"sample:index:Widget": {
				"isComponent": true,
				"properties": {
					"loadBalancer": {
						"type": "string",
						"description": "Underlying Load Balancer resource"
					},
					"defaultTargetGroup": {
						"type": "string",
						"description": "Default target group"
					}
				},
				"required": ["loadBalancer", "defaultTargetGroup"]
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	_, content := readGeneratedPackageLibraries(t, targetDir, "pulumi_sample")
	assert.Contains(t, content, "late final pulumi.Output<String?> defaultTargetGroup;")
	assert.Contains(t, content, "late final pulumi.Output<String?> loadBalancer;")
	assert.Contains(t, content, "defaultTargetGroup = registerOutput<String?>('defaultTargetGroup');")
	assert.Contains(t, content, "loadBalancer = registerOutput<String?>('loadBalancer');")
	assert.NotContains(t, content, "registerOutputs({")
	assert.Contains(t, content, "remote: true")
}

func TestGeneratePackageInvalidSchemaReturnsError(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    "{",
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "failed to parse package schema")
}

func TestGeneratePackageRequiresDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Schema: `{"name":"sample"}`,
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "directory is required")
}

func TestGeneratePackageRequiresSchema(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "schema is required")
}
