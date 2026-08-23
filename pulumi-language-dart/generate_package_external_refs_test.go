package main

import (
	"context"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func TestGeneratePackageInfersDependenciesFromExternalSchemaRefs(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Thing": {
				"type": "object",
				"properties": {
					"vpc": {
						"$ref": "/aws/v7.15.0/schema.json#/types/aws:ec2/Vpc:Vpc"
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

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi_aws: ^7.15.0")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
}

func TestGeneratePackageIgnoresSelfExternalSchemaRefDependency(t *testing.T) {
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", "false")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "aws",
		"version": "1.2.3",
		"types": {
			"aws:index:Thing": {
				"type": "object",
				"properties": {
					"vpc": {
						"$ref": "/aws/v7.15.0/schema.json#/types/aws:ec2/Vpc:Vpc"
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

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.NotContains(t, pubspec, "pulumi_aws:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
}

func TestGeneratePackageRegistryDependencyOverridesInferredSchemaRefDependency(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_aws: ^7.99.0
`) + "\n"
	require.NoError(
		t,
		os.WriteFile(filepath.Join(workspaceDir, "packages", "sdk_dependency_registry.yaml"), []byte(registry), 0o600),
	)

	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Thing": {
				"type": "object",
				"properties": {
					"vpc": {
						"$ref": "/aws/v7.15.0/schema.json#/types/aws:ec2/Vpc:Vpc"
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

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi_aws: ^7.99.0")
	assert.NotContains(t, pubspec, "pulumi_aws: ^7.15.0")
}

func TestGeneratePackageInfersHighestVersionFromExternalSchemaRefs(t *testing.T) {
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
					"vpc": {
						"$ref": "/aws/v7.1.0/schema.json#/types/aws:ec2/Vpc:Vpc"
					},
					"bucket": {
						"$ref": "/aws/v7.15.0/schema.json#/types/aws:s3/Bucket:Bucket"
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

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi_aws: ^7.15.0")
	assert.NotContains(t, pubspec, "pulumi_aws: ^7.1.0")
}

func TestGeneratePackageInfersPulumiDependenciesFromNodejsLanguageMetadata(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"language": {
			"nodejs": {
				"dependencies": {
					"@pulumi/aws": "^7.15.0",
					"@pulumi/docker-build": "^0.0.14"
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi_aws: ^7.15.0")
	assert.Contains(t, pubspec, "pulumi_docker_build: ^0.0.14")
}

func TestGeneratePackageKeepsExternalRefVersionWhenNodejsMetadataAlsoPresent(t *testing.T) {
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
					"vpc": {
						"$ref": "/aws/v7.15.0/schema.json#/types/aws:ec2/Vpc:Vpc"
					}
				}
			}
		},
		"language": {
			"nodejs": {
				"dependencies": {
					"@pulumi/aws": "^7.1.0",
					"@pulumi/docker-build": "^0.0.14"
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi_aws: ^7.15.0")
	assert.NotContains(t, pubspec, "pulumi_aws: ^7.1.0")
	assert.Contains(t, pubspec, "pulumi_docker_build: ^0.0.14")
}

func TestGeneratePackageUsesTypedExternalRefsInGeneratedSources(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:ecr:Repository": {
				"isComponent": true,
				"inputProperties": {
					"logging": {
						"$ref": "/aws/v7.15.0/schema.json#/types/aws:s3/BucketLogging:BucketLogging"
					}
				},
				"properties": {
					"repository": {
						"$ref": "/aws/v7.15.0/schema.json#/resources/aws:ecr%2frepository:Repository"
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

	argsData, err := os.ReadFile(filepath.Join(targetDir, "lib", "src", "ecr", "repository_args.dart"))
	require.NoError(t, err)
	argsContent := string(argsData)
	assert.Contains(t, argsContent, "import 'package:pulumi_aws/s3.dart' as pulumi_aws_s3;")
	assert.Contains(t, argsContent, "final pulumi.Input<pulumi_aws_s3.BucketLogging?>? logging;")

	resourceContent := generatedResourceContent(t, targetDir, "repository")
	assert.Contains(t, resourceContent, "import 'package:pulumi_aws/ecr.dart' as pulumi_aws_ecr;")
	assert.Contains(t, resourceContent, "late final pulumi.Output<pulumi_aws_ecr.Repository?> repository;")
	assert.Contains(t, resourceContent, "repository = registerOutput<pulumi_aws_ecr.Repository?>('repository');")
	assert.NotContains(t, resourceContent, "late final pulumi.Output<dynamic?> repository;")
}

func TestGeneratePackageUsesTypedResourceOutputObjectTypes(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Metadata": {
				"type": "object",
				"properties": {
					"owner": { "type": "string" },
					"version": { "type": "string" }
				}
			}
		},
		"resources": {
			"sample:index:Widget": {
				"properties": {
					"metadata": { "$ref": "#/types/sample:index:Metadata" },
					"history": {
						"type": "array",
						"items": { "$ref": "#/types/sample:index:Metadata" }
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

	resourceContent := generatedResourceContent(t, targetDir, "widget")
	assert.Contains(t, resourceContent, "late final pulumi.Output<Metadata?> metadata;")
	assert.Contains(t, resourceContent, "late final pulumi.Output<List<Map<String, dynamic>>?> history;")
	assert.Contains(t, resourceContent, "metadata = registerOutput<Metadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Metadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });")
	assert.Contains(t, resourceContent, "history = registerOutput<List<Map<String, dynamic>>?>('history');")
	assert.NotContains(t, resourceContent, "late final pulumi.Output<Map<String, dynamic>?> metadata;")
}

func TestGeneratePackageUsesRawTypesForResourceOutputComplexTypes(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Metadata": {
				"type": "object"
			}
		},
		"resources": {
			"sample:index:Widget": {
				"properties": {
					"metadata": { "$ref": "#/types/sample:index:Metadata" },
					"history": {
						"type": "array",
						"items": { "$ref": "#/types/sample:index:Metadata" }
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

	resourceContent := generatedResourceContent(t, targetDir, "widget")
	assert.Contains(t, resourceContent, "late final pulumi.Output<Map<String, dynamic>?> metadata;")
	assert.Contains(t, resourceContent, "late final pulumi.Output<List<Map<String, dynamic>>?> history;")
	assert.Contains(t, resourceContent, "metadata = registerOutput<Map<String, dynamic>?>('metadata');")
	assert.Contains(t, resourceContent, "history = registerOutput<List<Map<String, dynamic>>?>('history');")
	assert.NotContains(t, resourceContent, "Output<List<dynamic>?>")
}

func TestGeneratePackageUsesRawTypesForResourceOutputsInRawSchemaMode(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"types": {
			"sample:index:Metadata": {
				"type": "object",
				"properties": {
					"owner": { "type": "string" },
					"version": { "type": "string" }
				}
			}
		},
		"resources": {
			"sample:index:Widget": {
				"inputProperties": {
					"policy": { "$ref": "/aws/v7.20.0/schema.json#/types/aws:iam/Policy:Policy" }
				},
				"properties": {
					"metadata": { "$ref": "#/types/sample:index:Metadata" },
					"history": {
						"type": "array",
						"items": { "$ref": "#/types/sample:index:Metadata" }
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

	resourceContent := generatedResourceContent(t, targetDir, "widget")
	assert.Contains(t, resourceContent, "late final pulumi.Output<Map<String, dynamic>?> metadata;")
	assert.Contains(t, resourceContent, "late final pulumi.Output<List<Map<String, dynamic>>?> history;")
	assert.Contains(t, resourceContent, "metadata = registerOutput<Map<String, dynamic>?>('metadata');")
	assert.Contains(t, resourceContent, "history = registerOutput<List<Map<String, dynamic>>?>('history');")
}
