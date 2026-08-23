package main

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"sort"
	"strings"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource/plugin"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	codegenrpc "github.com/pulumi/pulumi/sdk/v3/proto/go/codegen"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gopkg.in/yaml.v3"
)

func (host *dartLanguageHost) GeneratePackage(
	ctx context.Context, req *pulumirpc.GeneratePackageRequest,
) (*pulumirpc.GeneratePackageResponse, error) {
	_ = ctx
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}
	if strings.TrimSpace(req.GetDirectory()) == "" {
		return nil, status.Error(codes.InvalidArgument, "directory is required")
	}
	if strings.TrimSpace(req.GetSchema()) == "" {
		return nil, status.Error(codes.InvalidArgument, "schema is required")
	}

	var (
		spec           *codegen.PackageSchema
		rpcDiagnostics []*codegenrpc.Diagnostic
	)
	normalizedSchema := codegen.NormalizeDeprecatedProviderReferences(req.GetSchema())
	loadExternalSchema := filesystemExternalSchemaLoader(req.GetDirectory())
	generatedOutputPaths := map[string]struct{}{}
	recordGeneratedOutput := func(path string) {
		generatedOutputPaths[filepath.Clean(path)] = struct{}{}
	}

	var packageSpec schema.PackageSpec
	if err := json.Unmarshal([]byte(normalizedSchema), &packageSpec); err == nil {
		var (
			loader       schema.Loader
			loaderCloser io.Closer
		)
		loaderTarget := strings.TrimSpace(req.GetLoaderTarget())
		if loaderTarget != "" {
			loaderClient, err := schema.NewLoaderClient(loaderTarget)
			if err != nil {
				return nil, err
			}
			loader = loaderClient
			loaderCloser = loaderClient
		}
		if loaderCloser != nil {
			defer loaderCloser.Close()
		}

		pkg, diags, err := schema.BindSpec(packageSpec, loader, schema.ValidationOptions{
			AllowDanglingReferences: true,
		})
		if err == nil {
			rpcDiagnostics = plugin.HclDiagnosticsToRPCDiagnostics(diags)
			// Keep parse-only generation as the source of truth when no loader is
			// available and the schema includes external refs. BindSpec does not
			// preserve enough shape information for cross-package typed refs.
			if loader == nil && schemaContainsExternalReferences(normalizedSchema) {
				spec, err = codegen.ParsePackageSchema(normalizedSchema, loadExternalSchema)
				if err != nil {
					return nil, err
				}
				rpcDiagnostics = nil
			} else if diags.HasErrors() {
				// Preserve previous parse-only behavior when no loader target is provided.
				if loader == nil {
					spec, err = codegen.ParsePackageSchema(normalizedSchema, loadExternalSchema)
					if err != nil {
						return nil, err
					}
					rpcDiagnostics = nil
				} else {
					return &pulumirpc.GeneratePackageResponse{
						Diagnostics: rpcDiagnostics,
					}, nil
				}
			} else {
				spec = codegen.PackageSchemaFromPackage(pkg)
			}
		} else if loader == nil {
			// Parse-only fallback is intentionally permissive when we do not have
			// a schema loader and cannot resolve external references.
			spec, err = codegen.ParsePackageSchema(normalizedSchema, loadExternalSchema)
			if err != nil {
				return nil, err
			}
		} else {
			return nil, err
		}
	}
	if spec == nil {
		var err error
		spec, err = codegen.ParsePackageSchema(
			normalizedSchema,
			loadExternalSchema,
		)
		if err != nil {
			return nil, err
		}
	}

	if spec.Config != nil {
		var rawSpec codegen.RawPackageSchema
		if err := json.Unmarshal([]byte(normalizedSchema), &rawSpec); err == nil {
			requiredSet := codegen.RawRequiredSet(rawSpec.Config.Required)
			for i := range spec.Config.Properties {
				if _, ok := requiredSet[spec.Config.Properties[i].Name]; ok {
					spec.Config.Properties[i].Required = true
				}
			}
		}
	}

	packageName := codegen.ToDartPackageName(spec.Namespace, spec.Name)
	localDependencies := map[string]string{}
	for name, path := range req.GetLocalDependencies() {
		localDependencies[name] = path
	}
	if strings.TrimSpace(localDependencies["pulumi"]) == "" {
		if inferredPulumiPath := codegen.InferLocalPulumiDependencyFromProject(req.GetDirectory()); inferredPulumiPath != "" {
			localDependencies["pulumi"] = inferredPulumiPath
		}
	}

	requiredDependencies := requiredDartDependencies(packageSpec, normalizedSchema, spec.Name, req.GetDirectory())
	pubspec := codegen.BuildGeneratedPubspec(packageName, localDependencies, requiredDependencies, configuredPulumiDependency())
	if shouldUseWorkspaceResolution(req.GetDirectory()) {
		pubspec.Resolution = "workspace"
		applyWorkspacePulumiDependencyVersion(&pubspec, req.GetDirectory())
	}
	applyLocalPathPublishPolicy(&pubspec)
	codegen.ApplyPackageMetadataToPubspec(&pubspec, spec)
	if strings.TrimSpace(pubspec.Description) == "" {
		pubspec.Description = fmt.Sprintf("A Pulumi SDK package for %s.", spec.Name)
	}
	pubspec.Version = codegen.GeneratedSDKPackageVersion(
		spec.Version,
		os.Getenv("PULUMI_DART_SDK_VERSION"),
		os.Getenv("PULUMI_DART_SDK_VERSION_SUFFIX"),
	)
	if err := validateGeneratedPubspecDependencies(pubspec, req.GetDirectory()); err != nil {
		return nil, err
	}

	pubspecBytes, err := yaml.Marshal(pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal generated pubspec.yaml: %w", err)
	}

	if err := os.MkdirAll(req.GetDirectory(), 0o700); err != nil {
		return nil, fmt.Errorf("failed to create SDK directory: %w", err)
	}
	pubspecPath := filepath.Join(req.GetDirectory(), "pubspec.yaml")
	if _, err := os.Stat(pubspecPath); err == nil {
		// Preserve user-managed package metadata when a pubspec already exists,
		// but enforce required generator/runtime dependencies.
		existingPubspec, err := codegen.ReadAndParsePubspec(pubspecPath)
		if err != nil {
			return nil, fmt.Errorf("failed to parse existing pubspec.yaml: %w", err)
		}
		didMutateExistingPubspec := applyGeneratedPulumiDependency(existingPubspec, &pubspec)
		didMutateExistingPubspec = applyLocalPathPublishPolicy(existingPubspec) || didMutateExistingPubspec

		missingDependencies := missingRequiredDependencies(existingPubspec, pubspec.Dependencies)
		shouldWriteExistingPubspec := didMutateExistingPubspec
		if len(missingDependencies) > 0 {
			if shouldUpdateExistingPubspec() {
				shouldWriteExistingPubspec = true
				if existingPubspec.Dependencies == nil {
					existingPubspec.Dependencies = map[string]interface{}{}
				}
				for _, name := range missingDependencies {
					existingPubspec.Dependencies[name] = pubspec.Dependencies[name]
				}
			} else {
				return nil, fmt.Errorf(
					"existing pubspec.yaml is missing required dependencies: %s (add to dependencies or dependency_overrides, or set PULUMI_DART_UPDATE_EXISTING_PUBSPEC=true)",
					strings.Join(missingDependencies, ", "),
				)
			}
		}

		if shouldWriteExistingPubspec {
			updatedPubspecBytes, err := yaml.Marshal(existingPubspec)
			if err != nil {
				return nil, fmt.Errorf("failed to marshal updated existing pubspec.yaml: %w", err)
			}
			if err := os.WriteFile(pubspecPath, updatedPubspecBytes, 0o600); err != nil {
				return nil, fmt.Errorf("failed to update existing pubspec.yaml: %w", err)
			}
		}
	} else if os.IsNotExist(err) {
		if err := os.WriteFile(pubspecPath, pubspecBytes, 0o600); err != nil {
			return nil, fmt.Errorf("failed to write generated pubspec.yaml: %w", err)
		}
		recordGeneratedOutput(pubspecPath)
	} else {
		return nil, fmt.Errorf("failed to check existing pubspec.yaml: %w", err)
	}

	libDir := filepath.Join(req.GetDirectory(), "lib")
	if err := os.MkdirAll(libDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated lib directory: %w", err)
	}

	sdkDir := filepath.Join(libDir, "src")
	if err := os.MkdirAll(sdkDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated SDK source directory: %w", err)
	}
	generatedPackage, err := codegen.GeneratePackage(codegen.PackageInput{
		Schema:         spec,
		PackageName:    packageName,
		SDKLibraryName: packageName + "_sdk",
	})
	if err != nil {
		return nil, fmt.Errorf("failed to generate Dart package: %w", err)
	}
	for _, generatedFile := range generatedPackage.Files {
		outputPath, err := codegen.SafeOutputPath(libDir, filepath.FromSlash(generatedFile.Path))
		if err != nil {
			return nil, fmt.Errorf("invalid generated Dart source path %q: %w", generatedFile.Path, err)
		}
		if err := os.MkdirAll(filepath.Dir(outputPath), 0o700); err != nil {
			return nil, fmt.Errorf("failed to create generated Dart source directory for %s: %w", generatedFile.Path, err)
		}
		if err := os.WriteFile(outputPath, generatedFile.Contents, 0o600); err != nil {
			return nil, fmt.Errorf("failed to write generated Dart source file %s: %w", generatedFile.Path, err)
		}
		recordGeneratedOutput(outputPath)
	}

	extraFiles := map[string][]byte{}
	for filename, contents := range req.GetExtraFiles() {
		extraFiles[filename] = contents
	}
	for filename, contents := range defaultGeneratedExtraFiles(packageName, spec.Name, pubspec.Version) {
		if _, hasExplicitFile := extraFiles[filename]; hasExplicitFile {
			continue
		}
		outputPath, err := codegen.SafeOutputPath(req.GetDirectory(), filename)
		if err != nil {
			return nil, fmt.Errorf("invalid default extra file path %q: %w", filename, err)
		}
		if _, err := os.Stat(outputPath); err == nil {
			continue
		} else if !os.IsNotExist(err) {
			return nil, fmt.Errorf("failed to check default extra file %s: %w", filename, err)
		}
		extraFiles[filename] = contents
	}

	extraFilenames := make([]string, 0, len(extraFiles))
	for filename := range extraFiles {
		extraFilenames = append(extraFilenames, filename)
	}
	sort.Strings(extraFilenames)
	for _, filename := range extraFilenames {
		contents := extraFiles[filename]
		outputPath, err := codegen.SafeOutputPath(req.GetDirectory(), filename)
		if err != nil {
			return nil, fmt.Errorf("invalid extra file path %q: %w", filename, err)
		}
		if _, conflict := generatedOutputPaths[filepath.Clean(outputPath)]; conflict {
			return nil, fmt.Errorf("extra file path %q conflicts with generated file output", filename)
		}
		if err := os.MkdirAll(filepath.Dir(outputPath), 0o700); err != nil {
			return nil, fmt.Errorf("failed to create output directory for extra file %s: %w", filename, err)
		}
		if err := os.WriteFile(outputPath, contents, 0o600); err != nil {
			return nil, fmt.Errorf("failed to write extra file %s: %w", filename, err)
		}
	}

	if err := syncGeneratedCodeToWorkspaceMember(req.GetDirectory(), packageName); err != nil {
		return nil, fmt.Errorf("failed to sync generated code to workspace member: %w", err)
	}

	return &pulumirpc.GeneratePackageResponse{
		Diagnostics: rpcDiagnostics,
	}, nil
}
