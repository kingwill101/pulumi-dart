package main

import (
	"archive/tar"
	"compress/gzip"
	"context"
	"fmt"
	"io"
	"io/fs"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func readGeneratedPackageLibraries(t *testing.T, targetDir, packageName string) (root string, sdk string) {
	t.Helper()

	rootData, err := os.ReadFile(filepath.Join(targetDir, "lib", packageName+".dart"))
	require.NoError(t, err)

	sdkDir := filepath.Join(targetDir, "lib", "src", packageName)
	paths := make([]string, 0, 16)
	err = filepath.WalkDir(sdkDir, func(path string, d fs.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		if d.IsDir() || filepath.Ext(path) != ".dart" {
			return nil
		}
		rel, relErr := filepath.Rel(sdkDir, path)
		if relErr != nil {
			return relErr
		}
		paths = append(paths, filepath.ToSlash(rel))
		return nil
	})
	require.NoError(t, err)
	sort.Strings(paths)

	var b strings.Builder
	for _, rel := range paths {
		content, readErr := os.ReadFile(filepath.Join(sdkDir, filepath.FromSlash(rel)))
		require.NoError(t, readErr)
		fmt.Fprintf(&b, "// FILE: %s\n", rel)
		b.Write(content)
		if len(content) == 0 || content[len(content)-1] != '\n' {
			b.WriteString("\n")
		}
		b.WriteString("\n")
	}

	return string(rootData), b.String()
}

func assertGoldenFile(t *testing.T, goldenPath string, actual string) {
	t.Helper()

	if os.Getenv("UPDATE_GOLDENS") == "1" {
		require.NoError(t, os.MkdirAll(filepath.Dir(goldenPath), 0o700))
		require.NoError(t, os.WriteFile(goldenPath, []byte(actual), 0o600))
	}

	expected, err := os.ReadFile(goldenPath)
	require.NoError(t, err)
	assert.Equal(t, string(expected), actual)
}

func TestGenerateProgramProducesMainDart(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	resp, err := host.GenerateProgram(context.Background(), &pulumirpc.GenerateProgramRequest{
		Source: map[string]string{
			"main.pp": "resources = {}",
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	require.Contains(t, resp.Source, "main.dart")
	assert.Contains(t, string(resp.Source["main.dart"]), "Deployment.run")
	assert.Contains(t, string(resp.Source["main.dart"]), "main.pp")
}

func TestGenerateProjectWritesProjectScaffold(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	localPulumi := filepath.Join(targetDir, "pulumi-local")

	resp, err := host.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{
		TargetDirectory: targetDir,
		Project:         `{"name":"example_project","runtime":"dart"}`,
		LocalDependencies: map[string]string{
			"pulumi": localPulumi,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	assert.Contains(t, string(pubspecData), "name: example_project")
	assert.Contains(t, string(pubspecData), "pulumi:")
	assert.Contains(t, string(pubspecData), "path: "+filepath.ToSlash(localPulumi))

	programData, err := os.ReadFile(filepath.Join(targetDir, "bin", "example_project.dart"))
	require.NoError(t, err)
	assert.Contains(t, string(programData), "GeneratedStack")

	pulumiProjectData, err := os.ReadFile(filepath.Join(targetDir, "Pulumi.yaml"))
	require.NoError(t, err)
	assert.Contains(t, string(pulumiProjectData), "name: example_project")
}

func TestPackProducesArchive(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	packageDir := t.TempDir()
	destinationDir := t.TempDir()

	require.NoError(t, os.WriteFile(filepath.Join(packageDir, "pubspec.yaml"), []byte("name: my_pkg\n"), 0o600))
	require.NoError(t, os.MkdirAll(filepath.Join(packageDir, "lib"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(packageDir, "lib", "my_pkg.dart"), []byte("library my_pkg;\n"), 0o600))

	resp, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory:     packageDir,
		DestinationDirectory: destinationDir,
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Equal(t, filepath.Join(destinationDir, "my_pkg.tar.gz"), resp.ArtifactPath)

	archiveFile, err := os.Open(resp.ArtifactPath)
	require.NoError(t, err)
	defer archiveFile.Close()

	gzipReader, err := gzip.NewReader(archiveFile)
	require.NoError(t, err)
	defer gzipReader.Close()

	tarReader := tar.NewReader(gzipReader)
	entries := map[string]bool{}
	for {
		hdr, err := tarReader.Next()
		if err == io.EOF {
			break
		}
		require.NoError(t, err)
		entries[hdr.Name] = true
	}

	assert.True(t, entries["pubspec.yaml"])
	assert.True(t, entries["lib/my_pkg.dart"])
}

func TestPackRequiresPackageDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		DestinationDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "package directory is required")
}

func TestPackRequiresDestinationDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "destination directory is required")
}

func TestPackMissingPackageDirectoryReturnsError(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	missingDir := filepath.Join(t.TempDir(), "missing-package-dir")
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory:     missingDir,
		DestinationDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "failed to enumerate package files")
}

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
	assert.Contains(t, rootContent, "library pulumi_sample;")
	assert.Contains(t, rootContent, "export 'src/pulumi_sample/sdk.dart';")
	assert.Contains(t, content, "// FILE: sdk.dart")
	assert.Contains(t, content, "// FILE: index/widget.dart")
	assert.Contains(t, content, "// FILE: index/widget_component.dart")
	assert.Contains(t, content, "// FILE: index/do_thing.dart")
	assert.NotContains(t, content, "part of ")
	assert.NotContains(t, content, "part '")
	assert.Contains(t, content, "class Widget extends CustomResource")
	assert.Contains(t, content, "class WidgetComponent extends ComponentResource")
	assert.Contains(t, content, "Input.mapToInputs")
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
	assert.Contains(t, rootContent, "export 'src/pulumi_sample/sdk.dart';")
	assert.Contains(t, content, "Future<Map<String, dynamic>> doEchoMethod")
	assert.Contains(t, content, "sample:index:Echo/doEchoMethod")
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
	assert.Contains(t, content, "// FILE: accesscontextmanager/access_level/access_level.dart")
	assert.Contains(t, content, "// FILE: accesscontextmanager/access_level/get_access_level.dart")
	assert.Contains(t, content, "// FILE: accesscontextmanager/access_level/index.dart")
	assert.Contains(t, content, "// FILE: accesscontextmanager/index.dart")
	assert.Contains(t, content, "export 'accesscontextmanager/access_level/access_level.dart';")
	assert.Contains(t, content, "export 'accesscontextmanager/access_level/get_access_level.dart';")

	parentModuleEntry, err := os.ReadFile(filepath.Join(targetDir, "lib", "accesscontextmanager.dart"))
	require.NoError(t, err)
	assert.Contains(t, string(parentModuleEntry), "export 'package:pulumi_sample/src/pulumi_sample/accesscontextmanager/index.dart';")

	_, err = os.Stat(filepath.Join(targetDir, "lib", "accesscontextmanager"))
	require.Error(t, err)
	assert.True(t, os.IsNotExist(err))
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
	assert.Contains(t, content, "import 'package:pulumi/src/deployment/models.dart' as deployment_models;")
	assert.Contains(t, content, "// FILE: internal/package_registration.dart")
	assert.Contains(t, content, "final registerPackageRequest = deployment_models.RegisterPackageRequest(")
	assert.Contains(t, content, `name: "testprovider",`)
	assert.Contains(t, content, `version: "0.0.1",`)
	assert.Contains(t, content, "parameterization: deployment_models.Parameterization(")
	assert.Contains(t, content, `name: "pkg",`)
	assert.Contains(t, content, `value: <int>[112, 107, 103],`)
	assert.Contains(t, content, "registerPackageRequest: package_registration.registerPackageRequest")
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
	assert.Contains(t, rootContent, "export 'src/pulumi_sample/sdk.dart';")
	assert.Contains(t, content, "// FILE: index/widget_args.dart")
	assert.Contains(t, content, "// FILE: index/get_widget_args.dart")
	assert.Contains(t, content, "// FILE: index/get_widget_result.dart")
	assert.Contains(t, content, "// FILE: index/widget.dart")
	assert.Contains(t, content, "// FILE: index/get_widget.dart")

	assert.Contains(t, content, "class WidgetArgs")
	assert.Contains(t, content, "final Input<int> size;")
	assert.Contains(t, content, "final Input<String>? label;")
	assert.Contains(t, content, "required this.size")
	assert.Contains(t, content, "WidgetArgs? args")
	assert.Contains(t, content, "args?.toMap()")
	assert.Contains(t, content, "size: Input.asInput<int>(map['size'])")
	assert.Contains(t, content, "label: Input.asOptionalInput<String>(map['label'])")

	assert.Contains(t, content, "late final Output<String> arn;")
	assert.Contains(t, content, "late final Output<int?> size;")
	assert.Contains(t, content, "late final Output<String?> label;")
	assert.Contains(t, content, "arn = registerOutput<String>('arn');")
	assert.Contains(t, content, "size = registerOutput<int?>('size');")
	assert.Contains(t, content, "label = registerOutput<String?>('label');")

	assert.Contains(t, content, "class GetWidgetArgs")
	assert.Contains(t, content, "final Input<String> id;")
	assert.Contains(t, content, "required this.id")
	assert.Contains(t, content, "class GetWidgetResult")
	assert.Contains(t, content, "final String name;")
	assert.Contains(t, content, "final List<String>? tags;")
	assert.Contains(t, content, "Future<GetWidgetResult> getWidget")
	assert.Contains(t, content, "GetWidgetResult.fromMap(result)")
	assert.Contains(t, content, "name: map['name'] as String")
	assert.Contains(t, content, "tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>()")
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

func TestGeneratePackageWritesPulumiDependency(t *testing.T) {
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
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "version: 1.2.3")
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi: ^1.0.0")
}

func TestGeneratePackageWritesLocalPulumiDependency(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	localPulumi := filepath.Join(targetDir, "local-pulumi")
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
		LocalDependencies: map[string]string{
			"pulumi": localPulumi,
		},
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "version: 1.2.3")
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "path: "+filepath.ToSlash(localPulumi))
}

func TestGeneratePackageWritesSchemaMetadataToPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"description": "Sample provider package",
		"license": "Apache-2.0",
		"homepage": "https://example.com/home",
		"repository": "https://github.com/example/sample",
		"keywords": ["pulumi", "category/cloud", "kind/component", "sample_provider"]
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "description: Sample provider package")
	assert.Contains(t, pubspec, "license: Apache-2.0")
	assert.Contains(t, pubspec, "homepage: https://example.com/home")
	assert.Contains(t, pubspec, "repository: https://github.com/example/sample")
	assert.Contains(t, pubspec, "topics:")
	assert.Contains(t, pubspec, "- pulumi")
	assert.Contains(t, pubspec, "- category-cloud")
	assert.Contains(t, pubspec, "- kind-component")
	assert.Contains(t, pubspec, "- sample-provider")
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
}

func TestGeneratePackageWritesExampleMain(t *testing.T) {
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
	})
	require.NoError(t, err)

	exampleData, err := os.ReadFile(filepath.Join(targetDir, "example", "main.dart"))
	require.NoError(t, err)
	example := string(exampleData)

	assert.Contains(t, example, "import 'package:pulumi/pulumi.dart';")
	assert.Contains(t, example, "import 'package:pulumi_sample/pulumi_sample.dart' as provider;")
	assert.Contains(t, example, "await Deployment.run(() => ExampleStack());")
	assert.Contains(t, example, "class ExampleStack extends Stack")
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
	assert.Contains(t, rootContent, "export 'src/pulumi_sample/sdk.dart';")

	assert.Contains(t, content, "enum WidgetMode")
	assert.Contains(t, content, `readOnly("read-only"),`)
	assert.Contains(t, content, `readWrite("read-write");`)
	assert.Contains(t, content, "const WidgetMode(this.value);")
	assert.Contains(t, content, "final String value;")
	assert.Contains(t, content, "static WidgetMode fromValue(String value)")

	assert.Contains(t, content, "class WidgetMetadata")
	assert.Contains(t, content, "final String owner;")
	assert.Contains(t, content, "final WidgetMode mode;")
	assert.Contains(t, content, "map['mode'] = mode.value;")
	assert.Contains(t, content, "mode: WidgetMode.fromValue(map['mode'] as String)")

	assert.Contains(t, content, "class WidgetArgs")
	assert.Contains(t, content, "final Input<WidgetMode> mode;")
	assert.Contains(t, content, "final Input<WidgetMetadata>? metadata;")
	assert.Contains(t, content, "Input.mapInputValue<WidgetMode, String>(mode, (value) => value.value)")
	assert.Contains(
		t,
		content,
		"Input.mapOptionalInputValue<WidgetMetadata, Map<String, dynamic>>(metadataValue, (value) => value.toMap())",
	)

	assert.Contains(t, content, "class GetWidgetDetailsResult")
	assert.Contains(t, content, "final WidgetMetadata metadata;")
	assert.Contains(t, content, "metadata: WidgetMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())")
	assert.Contains(t, content, "final WidgetMode mode;")
	assert.Contains(t, content, "mode: WidgetMode.fromValue(map['mode'] as String)")
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
	assert.Contains(t, content, "final Input<Map<String, dynamic>>? opaque;")
	assert.Contains(t, content, "map['opaque'] = opaqueValue;")
	assert.NotContains(t, content, "Input<Opaque>")
	assert.NotContains(t, content, "index/opaque.dart")
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
	assert.Contains(t, content, "class Widget2 extends CustomResource")
	assert.Contains(t, content, "export 'index/widget2.dart';")
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
	assert.Contains(t, content, "class FunctionType extends CustomResource")
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
	assert.Contains(t, content, "class MapType extends CustomResource")
	assert.Contains(t, content, "class InputType extends CustomResource")
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
	assert.Contains(t, content, "class Foo2 extends CustomResource")
	assert.Contains(t, content, "class Foo3 extends CustomResource")
	assert.Contains(t, content, "export 'index/foo2.dart';")
	assert.Contains(t, content, "export 'index/foo3.dart';")
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
	assert.Contains(t, content, "final String runtimeType_;")
	assert.Contains(t, content, "map['runtimeType'] = runtimeType_;")
	assert.Contains(t, content, "runtimeType_: map['runtimeType'] as String")
}

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
	assert.Contains(t, rootContent, "export 'src/pulumi_sample/sdk.dart';")

	assert.Contains(t, content, "class SampleConfig")
	assert.Contains(t, content, "final config = SampleConfig();")
	assert.Contains(t, content, "String? get region")
	assert.Contains(t, content, "String requireRegion()")
	assert.Contains(t, content, "int? get replicas")
	assert.Contains(t, content, "return _parseIntConfig(raw);")
	assert.Contains(t, content, "bool? get enabled")
	assert.Contains(t, content, "return _parseBoolConfig(raw);")
	assert.Contains(t, content, "WidgetMode? get mode")
	assert.Contains(t, content, "return raw == null ? null : WidgetMode.fromValue(raw as String);")
	assert.Contains(t, content, "WidgetMetadata? get metadata")
	assert.Contains(
		t,
		content,
		"return raw == null ? null : WidgetMetadata.fromMap((jsonDecode(raw) as Map).cast<String, dynamic>());",
	)
	assert.Contains(t, content, "bool get regionIsSecret => _isSecret('region');")
	assert.Contains(t, content, "int? _parseIntConfig(String? value)")
	assert.Contains(t, content, "bool? _parseBoolConfig(String? value)")
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
	assert.Contains(t, content, "// FILE: index/get_widget_details.dart")
	assert.Contains(t, content, "final Input<List<WidgetMode>> modes;")
	assert.Contains(t, content, "final Input<Map<String, WidgetMetadata>>? metadataById;")
	assert.Contains(
		t,
		content,
		"Input.mapInputValue<List<WidgetMode>, List<String>>(modes, (value) => Input.encodeList<WidgetMode, String>(value, (value) => value.value))",
	)
	assert.Contains(
		t,
		content,
		"Input.mapOptionalInputValue<Map<String, WidgetMetadata>, Map<String, Map<String, dynamic>>>(metadataByIdValue, (value) => Input.encodeMapValues<WidgetMetadata, Map<String, dynamic>>(value, (value) => value.toMap()))",
	)

	assert.Contains(t, content, "final List<WidgetMode> modes;")
	assert.Contains(t, content, "final Map<String, WidgetMetadata> metadataById;")
	assert.Contains(
		t,
		content,
		"modes: Input.decodeList<WidgetMode>(map['modes'], (value) => WidgetMode.fromValue(value as String))",
	)
	assert.Contains(
		t,
		content,
		"metadataById: Input.decodeMapValues<WidgetMetadata>(map['metadataById'], (value) => WidgetMetadata.fromMap((value as Map).cast<String, dynamic>()))",
	)

	assert.Contains(t, content, "List<WidgetMode>? get modeHistory")
	assert.Contains(
		t,
		content,
		"return raw == null ? null : Input.decodeList<WidgetMode>(jsonDecode(raw), (value) => WidgetMode.fromValue(value as String));",
	)
	assert.Contains(t, content, "Map<String, WidgetMetadata>? get metadataById")
	assert.Contains(
		t,
		content,
		"return raw == null ? null : Input.decodeMapValues<WidgetMetadata>(jsonDecode(raw), (value) => WidgetMetadata.fromMap((value as Map).cast<String, dynamic>()));",
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
	assert.Contains(t, content, "late final Output<String?> name;")
	assert.Contains(t, content, "this.name = registerOutput<String?>('name');")
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
