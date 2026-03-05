package main

import (
	"archive/tar"
	"compress/gzip"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"io/fs"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func readGeneratedPackageLibraries(t *testing.T, targetDir, packageName string) (root string, sdk string) {
	t.Helper()

	rootData, err := os.ReadFile(filepath.Join(targetDir, "lib", packageName+".dart"))
	require.NoError(t, err)

	sdkDir := filepath.Join(targetDir, "lib", "src")
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
		if rel != paths[len(paths)-1] {
			b.WriteString("\n")
		}
	}

	return string(rootData), b.String()
}

func generatedResourceContent(t *testing.T, targetDir, resourceName string) string {
	t.Helper()

	resourceData, err := os.ReadFile(filepath.Join(targetDir, "lib", "src", resourceName+".dart"))
	if err == nil {
		return string(resourceData)
	}

	matches, err := filepath.Glob(filepath.Join(targetDir, "lib", "src", "*", resourceName+".dart"))
	require.NoError(t, err)
	require.NotEmpty(t, matches)
	resourceData, err = os.ReadFile(matches[0])
	require.NoError(t, err)
	return string(resourceData)
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

func TestGenerateProgramRequiresRequest(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GenerateProgram(context.Background(), nil)
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "request is required")
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
	assert.Contains(t, string(pulumiProjectData), "runtime: dart")
}

func TestGenerateProjectForcesDartRuntimeForConvertedProjects(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()

	resp, err := host.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{
		TargetDirectory: targetDir,
		Project:         `{"name":"convert_project","runtime":"terraform"}`,
	})
	require.NoError(t, err)
	require.NotNil(t, resp)

	pulumiProjectData, err := os.ReadFile(filepath.Join(targetDir, "Pulumi.yaml"))
	require.NoError(t, err)
	pulumiProjectText := string(pulumiProjectData)
	assert.Contains(t, pulumiProjectText, "name: convert_project")
	assert.Contains(t, pulumiProjectText, "runtime: dart")
	assert.NotContains(t, pulumiProjectText, "runtime: terraform")
	assert.NotContains(t, pulumiProjectText, "AdditionalKeys")
}

func TestGenerateProjectRequiresTargetDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.GenerateProject(context.Background(), &pulumirpc.GenerateProjectRequest{})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "target directory is required")
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
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "package directory is required")
}

func TestPackRequiresDestinationDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
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
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "package directory does not exist")
}

func TestPackRejectsFilePackageDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	filePath := filepath.Join(t.TempDir(), "not-a-dir")
	require.NoError(t, os.WriteFile(filePath, []byte("x"), 0o600))
	_, err := host.Pack(context.Background(), &pulumirpc.PackRequest{
		PackageDirectory:     filePath,
		DestinationDirectory: t.TempDir(),
	})
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "package directory must be a directory")
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
	assert.Contains(t, content, "final pulumi.Input<String>? label;")
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
	assert.NotContains(t, pubspec, "resolution: workspace")
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "git:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
	assert.Contains(t, pubspec, "path: pulumi-dart")
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
	assert.NotContains(t, pubspec, "resolution: workspace")
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "path: "+filepath.ToSlash(localPulumi))
	assert.Contains(t, pubspec, "publish_to: none")
}

func TestGeneratePackageWritesPulumiDependencyFromEnv(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	localPulumi := filepath.Join(targetDir, "local-pulumi")
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	oldValue, hadOldValue := os.LookupEnv("PULUMI_DART_PULUMI_DEPENDENCY_PATH")
	require.NoError(t, os.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", localPulumi))
	t.Cleanup(func() {
		if !hadOldValue {
			require.NoError(t, os.Unsetenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH"))
			return
		}
		require.NoError(t, os.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", oldValue))
	})

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "dependencies:")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "path: "+filepath.ToSlash(localPulumi))
	assert.NotContains(t, pubspec, "git:")
	assert.Contains(t, pubspec, "publish_to: none")
}

func TestGeneratePackageWritesWorkspaceResolutionWhenEnabled(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	oldValue, hadOldValue := os.LookupEnv("PULUMI_DART_WORKSPACE_RESOLUTION")
	require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", "true"))
	t.Cleanup(func() {
		if !hadOldValue {
			require.NoError(t, os.Unsetenv("PULUMI_DART_WORKSPACE_RESOLUTION"))
			return
		}
		require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", oldValue))
	})

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
	assert.Contains(t, string(pubspecData), "resolution: workspace")
}

func TestGeneratePackageUsesWorkspacePulumiVersion(t *testing.T) {
	host := &dartLanguageHost{}
	rootDir := t.TempDir()

	rootPubspec := strings.TrimSpace(`
name: root_workspace
environment:
  sdk: ">=3.11.0 <4.0.0"
workspace:
  - pulumi-dart
  - packages/command
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(rootDir, "pubspec.yaml"), []byte(rootPubspec), 0o600))

	pulumiDir := filepath.Join(rootDir, "pulumi-dart")
	require.NoError(t, os.MkdirAll(pulumiDir, 0o700))
	pulumiPubspec := strings.TrimSpace(`
name: pulumi
version: 9.8.7
resolution: workspace
environment:
  sdk: ">=3.11.0 <4.0.0"
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(pulumiDir, "pubspec.yaml"), []byte(pulumiPubspec), 0o600))

	generatedDir := filepath.Join(rootDir, "packages", "sdks", "sample")
	require.NoError(t, os.MkdirAll(generatedDir, 0o700))

	oldValue, hadOldValue := os.LookupEnv("PULUMI_DART_WORKSPACE_RESOLUTION")
	require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", "true"))
	t.Cleanup(func() {
		if !hadOldValue {
			require.NoError(t, os.Unsetenv("PULUMI_DART_WORKSPACE_RESOLUTION"))
			return
		}
		require.NoError(t, os.Setenv("PULUMI_DART_WORKSPACE_RESOLUTION", oldValue))
	})

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: generatedDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(generatedDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "pulumi: 9.8.7")
	assert.NotContains(t, pubspec, "git:")
	assert.NotContains(t, pubspec, "path:")
}

func TestGeneratePackagePreservesExistingPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"resources": {
			"sample:index:Widget": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	assert.Equal(t, existingPubspec, string(pubspecData))
	assert.FileExists(t, filepath.Join(targetDir, "lib", "pulumi_sample.dart"))
}

func TestGeneratePackageSyncsToWorkspaceMember(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	rootDir := t.TempDir()

	workspaceMemberDir := filepath.Join(rootDir, "command")
	require.NoError(t, os.MkdirAll(workspaceMemberDir, 0o700))
	existingPubspec := strings.TrimSpace(`
name: pulumi_command
description: A Pulumi package for executing commands locally or remotely.
version: 1.0.0
environment:
  sdk: ">=3.11.0 <4.0.0"
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(workspaceMemberDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	sdksDir := filepath.Join(rootDir, "sdks")
	generatedDir := filepath.Join(sdksDir, "command")
	require.NoError(t, os.MkdirAll(generatedDir, 0o700))

	schema := `{
		"name": "command",
		"version": "1.2.3",
		"resources": {
			"command:index:Command": {}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: generatedDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	assert.FileExists(t, filepath.Join(generatedDir, "lib", "pulumi_command.dart"))
	assert.FileExists(t, filepath.Join(workspaceMemberDir, "lib", "pulumi_command.dart"))
}

func TestGeneratePackageFailsWhenExistingPubspecMissingRequiredDependencies(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  http: ^1.2.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "missing required dependencies")
	assert.Contains(t, err.Error(), "pulumi")
}

func TestGeneratePackageChecksAdditionalLocalDependenciesInExistingPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
		LocalDependencies: map[string]string{
			"pulumi_terraform": filepath.Join(targetDir, "..", "pulumi_terraform"),
		},
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "missing required dependencies")
	assert.Contains(t, err.Error(), "pulumi_terraform")
}

func TestGeneratePackageChecksDartLanguageDependenciesInExistingPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"language": {
			"dart": {
				"dependencies": {
					"pulumi_policy": "^0.2.0"
				}
			}
		}
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "missing required dependencies")
	assert.Contains(t, err.Error(), "pulumi_policy")
}

func TestGeneratePackageReadsLocalDependencyRegistry(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_policy: ^0.2.0
`) + "\n"
	require.NoError(
		t,
		os.WriteFile(filepath.Join(workspaceDir, "packages", "sdk_dependency_registry.yaml"), []byte(registry), 0o600),
	)

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
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
}

func TestGeneratePackageReadsDependencyRegistryFromEnv(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	registryDir := t.TempDir()
	registryPath := filepath.Join(registryDir, "sdk_dependency_registry.yaml")
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_policy: ^0.3.0
`) + "\n"
	require.NoError(t, os.WriteFile(registryPath, []byte(registry), 0o600))
	t.Setenv("PULUMI_DART_DEPENDENCY_REGISTRY", registryPath)

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
	assert.Contains(t, pubspec, "pulumi_policy: ^0.3.0")
}

func TestGeneratePackageReadsPubspecStyleDependencySpecsFromRegistry(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_local_path:
        path: ../local/pulumi-local-path
      pulumi_local_git:
        git:
          url: https://github.com/example/pulumi-local-git.git
          ref: main
`) + "\n"
	require.NoError(
		t,
		os.WriteFile(filepath.Join(workspaceDir, "packages", "sdk_dependency_registry.yaml"), []byte(registry), 0o600),
	)

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
	expectedPath := filepath.ToSlash(filepath.Join(workspaceDir, "local", "pulumi-local-path"))
	assert.Contains(t, pubspec, "pulumi_local_path:")
	assert.Contains(t, pubspec, "path: "+expectedPath)
	assert.Contains(t, pubspec, "pulumi_local_git:")
	assert.Contains(t, pubspec, "git:")
	assert.Contains(t, pubspec, "url: https://github.com/example/pulumi-local-git.git")
	assert.Contains(t, pubspec, "ref: main")
}

func TestGeneratePackageRegistryMatchesProviderNameCanonicalization(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample-provider")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample_provider:
    dependencies:
      pulumi_policy: ^1.2.3
`) + "\n"
	require.NoError(
		t,
		os.WriteFile(filepath.Join(workspaceDir, "packages", "sdk_dependency_registry.yaml"), []byte(registry), 0o600),
	)

	schema := `{
		"name": "sample-provider",
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
	assert.Contains(t, pubspec, "pulumi_policy: ^1.2.3")
}

func TestGeneratePackageReadsDependencyRegistryFromURL(t *testing.T) {
	host := &dartLanguageHost{}
	targetDir := t.TempDir()

	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		_, _ = w.Write([]byte(strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_policy: ^0.5.0
`) + "\n"))
	}))
	defer server.Close()

	t.Setenv("PULUMI_DART_DEPENDENCY_REGISTRY", filepath.Join(t.TempDir(), "missing-registry.yaml"))
	t.Setenv("PULUMI_DART_DEPENDENCY_REGISTRY_URL", server.URL)

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
	assert.Contains(t, pubspec, "pulumi_policy: ^0.5.0")
}

func TestGeneratePackageIgnoresSelfDependencyFromRegistry(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	require.NoError(t, os.MkdirAll(filepath.Join(workspaceDir, "packages"), 0o700))
	registry := strings.TrimSpace(`
providers:
  sample:
    dependencies:
      pulumi_sample: ^1.2.3
      pulumi_policy: ^0.2.0
`) + "\n"
	require.NoError(
		t,
		os.WriteFile(filepath.Join(workspaceDir, "packages", "sdk_dependency_registry.yaml"), []byte(registry), 0o600),
	)

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
	assert.NotContains(t, pubspec, "pulumi_sample:")
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
}

func TestGeneratePackageUpdatesExistingPubspecWhenEnabled(t *testing.T) {
	t.Setenv("PULUMI_DART_UPDATE_EXISTING_PUBSPEC", "true")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"language": {
			"dart": {
				"dependencies": {
					"pulumi_policy": "^0.2.0"
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
	assert.Contains(t, pubspec, "pulumi: ^1.0.0")
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
}

func TestGeneratePackageRewritesExistingPulumiPathDependencyWhenLocallyConfigured(t *testing.T) {
	t.Setenv("PULUMI_DART_UPDATE_EXISTING_PUBSPEC", "true")
	t.Setenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH", "/tmp/local-pulumi")

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	existingPubspec := strings.TrimSpace(`
name: custom_package
description: user managed package metadata
version: 9.9.9
dependencies:
  pulumi: ^1.0.0
`) + "\n"
	require.NoError(t, os.WriteFile(filepath.Join(targetDir, "pubspec.yaml"), []byte(existingPubspec), 0o600))

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
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "path: /tmp/local-pulumi")
	assert.Contains(t, pubspec, "publish_to: none")
}

func TestGeneratePackageInfersLocalPulumiDependencyFromAncestorPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	workspaceDir := t.TempDir()
	targetDir := filepath.Join(workspaceDir, "sdks", "sample")
	localPulumi := filepath.Clean(filepath.Join(workspaceDir, "..", "pulumi-local"))
	schema := `{
		"name": "sample",
		"version": "1.2.3"
	}`

	projectPubspec := strings.TrimSpace(`
name: package_add_project
version: 0.0.1
dependencies:
  pulumi:
    path: ../pulumi-local
`)
	require.NoError(t, os.WriteFile(filepath.Join(workspaceDir, "pubspec.yaml"), []byte(projectPubspec), 0o600))

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
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

func TestGeneratePackageNormalizesPulumiHomepageMetadata(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"homepage": "https://pulumi.io"
	}`

	_, err := host.GeneratePackage(context.Background(), &pulumirpc.GeneratePackageRequest{
		Directory: targetDir,
		Schema:    schema,
	})
	require.NoError(t, err)

	pubspecData, err := os.ReadFile(filepath.Join(targetDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspec := string(pubspecData)
	assert.Contains(t, pubspec, "homepage: https://www.pulumi.com")
	assert.NotContains(t, pubspec, "homepage: https://pulumi.io")
}

func TestGeneratePackageWritesDartLanguageDependenciesToPubspec(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	targetDir := t.TempDir()
	schema := `{
		"name": "sample",
		"version": "1.2.3",
		"language": {
			"dart": {
				"dependencies": {
					"pulumi_policy": "^0.2.0"
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
	assert.Contains(t, pubspec, "pulumi_policy: ^0.2.0")
	assert.Contains(t, pubspec, "pulumi:")
	assert.Contains(t, pubspec, "url: https://github.com/kingwill101/pulumi-dart.git")
}

func TestGeneratePackageInfersDependenciesFromExternalSchemaRefs(t *testing.T) {
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
	t.Parallel()

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
	assert.Contains(t, argsContent, "final pulumi.Input<pulumi_aws_s3.BucketLogging>? logging;")

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
	assert.Contains(t, content, "final pulumi.Input<WidgetMetadata>? metadata;")
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
	assert.Contains(t, content, "final pulumi.Input<Map<String, dynamic>>? opaque;")
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
	assert.Contains(t, content, "final config = SampleConfig();")
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
	assert.Contains(t, content, "final pulumi.Input<Map<String, WidgetMetadata>>? metadataById;")
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

	assert.Contains(t, content, "final List<WidgetMode> modes;")
	assert.Contains(t, content, "final Map<String, WidgetMetadata> metadataById;")
	assert.Contains(
		t,
		content,
		"modes: pulumi.Input.decodeList<WidgetMode>(map['modes']!, (value) => WidgetMode.fromValue(value as String))",
	)
	assert.Contains(
		t,
		content,
		"metadataById: pulumi.Input.decodeMapValues<WidgetMetadata>(map['metadataById']!, (value) => WidgetMetadata.fromMap((value as Map).cast<String, dynamic>()))",
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
