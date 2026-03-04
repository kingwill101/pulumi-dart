package main

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strings"
	"time"

	semver "github.com/blang/semver"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/pulumi/pulumi/sdk/v3/go/common/encoding"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource/plugin"
	"github.com/pulumi/pulumi/sdk/v3/go/common/tokens"
	"github.com/pulumi/pulumi/sdk/v3/go/common/workspace"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	codegenrpc "github.com/pulumi/pulumi/sdk/v3/proto/go/codegen"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gopkg.in/yaml.v3"
)

func (host *dartLanguageHost) GenerateProgram(
	ctx context.Context, req *pulumirpc.GenerateProgramRequest,
) (*pulumirpc.GenerateProgramResponse, error) {
	_ = ctx
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}

	source := map[string][]byte{
		"main.dart": generatedProgramStub(req.GetSource()),
	}

	return &pulumirpc.GenerateProgramResponse{
		Source: source,
	}, nil
}

func (host *dartLanguageHost) GenerateProject(
	ctx context.Context, req *pulumirpc.GenerateProjectRequest,
) (*pulumirpc.GenerateProjectResponse, error) {
	_ = ctx
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}

	if strings.TrimSpace(req.GetTargetDirectory()) == "" {
		return nil, status.Error(codes.InvalidArgument, "target directory is required")
	}
	if err := os.MkdirAll(req.GetTargetDirectory(), 0o700); err != nil {
		return nil, fmt.Errorf("failed to create target directory: %w", err)
	}

	projectName := sanitizeDartIdentifier(filepath.Base(req.GetTargetDirectory()))
	project := workspace.Project{
		Name: tokens.PackageName(projectName),
	}

	if rawProject := strings.TrimSpace(req.GetProject()); rawProject != "" {
		if err := json.Unmarshal([]byte(rawProject), &project); err != nil {
			return nil, fmt.Errorf("failed to unmarshal Pulumi project JSON: %w", err)
		}
	}

	if name := strings.TrimSpace(project.Name.String()); name != "" {
		projectName = sanitizeDartIdentifier(name)
	} else {
		project.Name = tokens.PackageName(projectName)
	}

	// Keep runtime parity with upstream language hosts: the generated Pulumi
	// project should always target this language host, regardless of the source
	// project/runtime used by `pulumi convert`.
	project.Runtime = workspace.NewProjectRuntimeInfo("dart", nil)

	projectYAML, err := encoding.YAML.Marshal(project)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal Pulumi project YAML: %w", err)
	}
	if err := os.WriteFile(filepath.Join(req.GetTargetDirectory(), "Pulumi.yaml"), projectYAML, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write Pulumi.yaml: %w", err)
	}

	pubspec := buildGeneratedPubspec(projectName, req.GetLocalDependencies(), nil)
	pubspecBytes, err := yaml.Marshal(pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal generated pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(filepath.Join(req.GetTargetDirectory(), "pubspec.yaml"), pubspecBytes, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated pubspec.yaml: %w", err)
	}

	binDir := filepath.Join(req.GetTargetDirectory(), "bin")
	if err := os.MkdirAll(binDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated bin directory: %w", err)
	}
	programFile := filepath.Join(binDir, projectName+".dart")
	if err := os.WriteFile(programFile, generatedProgramStub(nil), 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated program file: %w", err)
	}

	return &pulumirpc.GenerateProjectResponse{}, nil
}

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
		spec           *packageSchema
		rpcDiagnostics []*codegenrpc.Diagnostic
	)
	normalizedSchema := normalizeDeprecatedProviderReferences(req.GetSchema())
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
				spec, err = parsePackageSchema(normalizedSchema, req.GetDirectory())
				if err != nil {
					return nil, err
				}
				rpcDiagnostics = nil
			} else if diags.HasErrors() {
				// Preserve previous parse-only behavior when no loader target is provided.
				if loader == nil {
					spec, err = parsePackageSchema(normalizedSchema, req.GetDirectory())
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
				spec = packageSchemaFromPackage(pkg)
			}
		} else if loader == nil {
			// Parse-only fallback is intentionally permissive when we do not have
			// a schema loader and cannot resolve external references.
			spec, err = parsePackageSchema(normalizedSchema, req.GetDirectory())
			if err != nil {
				return nil, err
			}
		} else {
			return nil, err
		}
	}
	if spec == nil {
		var err error
		spec, err = parsePackageSchema(normalizedSchema, req.GetDirectory())
		if err != nil {
			return nil, err
		}
	}

	if spec.Config != nil {
		var rawSpec rawPackageSchema
		if err := json.Unmarshal([]byte(normalizedSchema), &rawSpec); err == nil {
			requiredSet := rawRequiredSet(rawSpec.Config.Required)
			for i := range spec.Config.Properties {
				if _, ok := requiredSet[spec.Config.Properties[i].Name]; ok {
					spec.Config.Properties[i].Required = true
				}
			}
		}
	}

	packageName := toDartPackageName(spec.Namespace, spec.Name)
	localDependencies := map[string]string{}
	for name, path := range req.GetLocalDependencies() {
		localDependencies[name] = path
	}
	if strings.TrimSpace(localDependencies["pulumi"]) == "" {
		if inferredPulumiPath := inferLocalPulumiDependencyFromProject(req.GetDirectory()); inferredPulumiPath != "" {
			localDependencies["pulumi"] = inferredPulumiPath
		}
	}

	requiredDependencies := requiredDartDependencies(packageSpec, normalizedSchema, spec.Name, req.GetDirectory())
	pubspec := buildGeneratedPubspec(packageName, localDependencies, requiredDependencies)
	if shouldUseWorkspaceResolution(req.GetDirectory()) {
		pubspec.Resolution = "workspace"
		applyWorkspacePulumiDependencyVersion(&pubspec, req.GetDirectory())
	}
	applyLocalPathPublishPolicy(&pubspec)
	applyPackageMetadataToPubspec(&pubspec, spec)
	if strings.TrimSpace(pubspec.Description) == "" {
		pubspec.Description = fmt.Sprintf("A Pulumi SDK package for %s.", spec.Name)
	}
	pubspec.Version = generatedSDKPackageVersion(spec.Version)
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
		existingPubspec, err := ReadAndParsePubspec(pubspecPath)
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
	sdkLibraryName := packageName + "_sdk"

	sdkSources, moduleSymbols := generatedPackageSources(spec, packageName, sdkLibraryName)
	sdkPaths := make([]string, 0, len(sdkSources))
	for relativePath := range sdkSources {
		sdkPaths = append(sdkPaths, relativePath)
	}
	sort.Strings(sdkPaths)
	for _, relativePath := range sdkPaths {
		outputPath, err := safeOutputPath(sdkDir, filepath.FromSlash(relativePath))
		if err != nil {
			return nil, fmt.Errorf("invalid generated SDK source path %q: %w", relativePath, err)
		}
		if err := os.MkdirAll(filepath.Dir(outputPath), 0o700); err != nil {
			return nil, fmt.Errorf("failed to create generated SDK source directory for %s: %w", relativePath, err)
		}
		if err := os.WriteFile(outputPath, sdkSources[relativePath], 0o600); err != nil {
			return nil, fmt.Errorf("failed to write generated SDK source file %s: %w", relativePath, err)
		}
		recordGeneratedOutput(outputPath)
	}

	publicModuleSources := generatedPublicModuleEntryPoints(packageName, sdkSources)
	publicModulePaths := make([]string, 0, len(publicModuleSources))
	for relativePath := range publicModuleSources {
		publicModulePaths = append(publicModulePaths, relativePath)
	}
	sort.Strings(publicModulePaths)
	for _, relativePath := range publicModulePaths {
		outputPath, err := safeOutputPath(libDir, filepath.FromSlash(relativePath))
		if err != nil {
			return nil, fmt.Errorf("invalid generated module entrypoint path %q: %w", relativePath, err)
		}
		if err := os.MkdirAll(filepath.Dir(outputPath), 0o700); err != nil {
			return nil, fmt.Errorf("failed to create generated module directory for %s: %w", relativePath, err)
		}
		if err := os.WriteFile(outputPath, publicModuleSources[relativePath], 0o600); err != nil {
			return nil, fmt.Errorf("failed to write generated module entrypoint %s: %w", relativePath, err)
		}
		recordGeneratedOutput(outputPath)
	}

	publicLibraryFile := filepath.Join(libDir, packageName+".dart")
	publicLibraryContent := generatedPackageRootLibrary(packageName, spec, moduleSymbols)
	if err := os.WriteFile(publicLibraryFile, publicLibraryContent, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated public library file: %w", err)
	}
	recordGeneratedOutput(publicLibraryFile)

	extraFiles := map[string][]byte{}
	for filename, contents := range req.GetExtraFiles() {
		extraFiles[filename] = contents
	}
	for filename, contents := range defaultGeneratedExtraFiles(packageName, spec.Name, pubspec.Version) {
		if _, hasExplicitFile := extraFiles[filename]; hasExplicitFile {
			continue
		}
		outputPath, err := safeOutputPath(req.GetDirectory(), filename)
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
		outputPath, err := safeOutputPath(req.GetDirectory(), filename)
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

func applyLocalPathPublishPolicy(existing *PubSpec) bool {
	if existing == nil {
		return false
	}

	if existing.Dependencies == nil {
		return false
	}

	pulumiDependency, hasPulumiDependency := existing.Dependencies["pulumi"]
	if !hasPulumiDependency || !isSourceDependencySpec(pulumiDependency) {
		return false
	}
	if strings.TrimSpace(existing.PublishTo) != "" {
		return false
	}

	existing.PublishTo = "none"
	return true
}

func applyGeneratedPulumiDependency(existing *PubSpec, generated *PubSpec) bool {
	if existing == nil || generated == nil {
		return false
	}
	if strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH")) == "" {
		return false
	}

	pulumiDependency, hasPulumiDependency := generated.Dependencies["pulumi"]
	if !hasPulumiDependency {
		return false
	}
	if !isSourceDependencySpec(pulumiDependency) {
		return false
	}

	if existing.Dependencies == nil {
		existing.Dependencies = map[string]interface{}{}
	}
	existing.Dependencies["pulumi"] = pulumiDependency

	if existing.DependencyOverrides == nil {
		existing.DependencyOverrides = map[string]interface{}{}
	}
	existing.DependencyOverrides["pulumi"] = pulumiDependency

	return true
}

func missingRequiredDependencies(existing *PubSpec, required map[string]interface{}) []string {
	if existing == nil || len(required) == 0 {
		return nil
	}

	missing := make([]string, 0, len(required))
	for name := range required {
		if strings.TrimSpace(name) == "" {
			continue
		}
		if _, present := existing.Dependencies[name]; present {
			continue
		}
		if _, present := existing.DependencyOverrides[name]; present {
			continue
		}
		missing = append(missing, name)
	}
	sort.Strings(missing)
	return missing
}

func dartLanguageDependencies(packageSpec schema.PackageSpec) map[string]interface{} {
	if len(packageSpec.Language) == 0 {
		return nil
	}

	raw, ok := packageSpec.Language["dart"]
	if !ok || len(raw) == 0 {
		return nil
	}

	var dartInfo struct {
		Dependencies map[string]interface{} `json:"dependencies"`
	}
	if err := json.Unmarshal(raw, &dartInfo); err != nil {
		return nil
	}
	if len(dartInfo.Dependencies) == 0 {
		return nil
	}
	return dartInfo.Dependencies
}

func requiredDartDependencies(
	packageSpec schema.PackageSpec,
	rawSchema string,
	providerName string,
	outputDir string,
) map[string]interface{} {
	combined := map[string]interface{}{}
	inferredDependencies := inferredDartDependenciesFromExternalRefs(rawSchema, providerName)
	for name, dep := range inferredDependencies {
		combined[name] = dep
	}
	nodejsPulumiDependencies := nodejsLanguagePulumiDependencies(packageSpec, providerName)
	for name, dep := range nodejsPulumiDependencies {
		if _, alreadyInferred := combined[name]; alreadyInferred {
			continue
		}
		combined[name] = dep
	}
	registryDependencies := localRegistryDartDependencies(providerName, outputDir)
	for name, dep := range registryDependencies {
		combined[name] = dep
	}
	schemaDependencies := dartLanguageDependencies(packageSpec)
	for name, dep := range schemaDependencies {
		combined[name] = dep
	}
	if len(combined) == 0 {
		return nil
	}
	return combined
}

func nodejsLanguagePulumiDependencies(
	packageSpec schema.PackageSpec,
	providerName string,
) map[string]interface{} {
	if len(packageSpec.Language) == 0 {
		return nil
	}

	raw, ok := packageSpec.Language["nodejs"]
	if !ok || len(raw) == 0 {
		return nil
	}

	var nodeInfo struct {
		Dependencies map[string]string `json:"dependencies"`
	}
	if err := json.Unmarshal(raw, &nodeInfo); err != nil {
		return nil
	}
	if len(nodeInfo.Dependencies) == 0 {
		return nil
	}

	currentProvider := canonicalProviderName(providerName)
	dependencies := map[string]interface{}{}
	for dependencyName, rawConstraint := range nodeInfo.Dependencies {
		npmPackage := strings.TrimSpace(dependencyName)
		if !strings.HasPrefix(npmPackage, "@pulumi/") {
			continue
		}

		referencedProvider := canonicalProviderName(strings.TrimPrefix(npmPackage, "@pulumi/"))
		if referencedProvider == "" || referencedProvider == currentProvider {
			continue
		}

		dartPackage := toDartPackageName("", referencedProvider)
		if strings.TrimSpace(dartPackage) == "" {
			continue
		}

		constraint := strings.TrimSpace(rawConstraint)
		if constraint == "" {
			continue
		}
		dependencies[dartPackage] = constraint
	}

	if len(dependencies) == 0 {
		return nil
	}
	return dependencies
}

// Section: dependency inference from external schema refs.
//
// We infer Dart package dependencies by scanning refs of the shape:
//
//	/<provider>/v<version>/schema.json#/(types|resources)/...
//
// and use that discovered provider version in pubspec constraints.
var externalSchemaRefRegex = regexp.MustCompile(`/([a-z0-9][a-z0-9-]*)/v([0-9][^/"]*)/schema\.json#`)

func schemaContainsExternalReferences(rawSchema string) bool {
	if strings.TrimSpace(rawSchema) == "" {
		return false
	}
	return externalSchemaRefRegex.MatchString(strings.ToLower(rawSchema))
}

func inferredDartDependenciesFromExternalRefs(rawSchema, providerName string) map[string]interface{} {
	rawSchema = strings.TrimSpace(rawSchema)
	if rawSchema == "" {
		return nil
	}

	providerName = canonicalProviderName(providerName)
	matches := externalSchemaRefRegex.FindAllStringSubmatch(strings.ToLower(rawSchema), -1)
	if len(matches) == 0 {
		return nil
	}

	dependencies := map[string]interface{}{}
	discoveredVersions := map[string]string{}
	for _, match := range matches {
		if len(match) < 3 {
			continue
		}
		referencedProvider := canonicalProviderName(match[1])
		if referencedProvider == "" || referencedProvider == providerName {
			continue
		}

		dependencyName := toDartPackageName("", referencedProvider)
		if dependencyName == "" {
			continue
		}
		discoveredVersion := strings.TrimSpace(match[2])
		if current, ok := discoveredVersions[dependencyName]; ok {
			if compareDiscoveredProviderVersions(discoveredVersion, current) > 0 {
				discoveredVersions[dependencyName] = discoveredVersion
			}
		} else {
			discoveredVersions[dependencyName] = discoveredVersion
		}
	}
	for dependencyName, version := range discoveredVersions {
		if version == "" {
			dependencies[dependencyName] = "any"
			continue
		}
		dependencies[dependencyName] = "^" + version
	}

	if len(dependencies) == 0 {
		return nil
	}
	return dependencies
}

func compareDiscoveredProviderVersions(left, right string) int {
	left = strings.TrimSpace(strings.TrimPrefix(strings.TrimPrefix(left, "v"), "V"))
	right = strings.TrimSpace(strings.TrimPrefix(strings.TrimPrefix(right, "v"), "V"))
	if left == right {
		return 0
	}
	if left == "" {
		return -1
	}
	if right == "" {
		return 1
	}

	leftVersion, leftErr := semver.ParseTolerant(left)
	rightVersion, rightErr := semver.ParseTolerant(right)
	if leftErr == nil && rightErr == nil {
		if leftVersion.GT(rightVersion) {
			return 1
		}
		return -1
	}
	if leftErr == nil {
		return 1
	}
	if rightErr == nil {
		return -1
	}
	if left > right {
		return 1
	}
	if left < right {
		return -1
	}
	return 0
}

func canonicalProviderName(name string) string {
	name = strings.TrimSpace(strings.ToLower(name))
	if name == "" {
		return ""
	}
	return strings.ReplaceAll(name, "_", "-")
}

func localRegistryDartDependencies(providerName, outputDir string) map[string]interface{} {
	registryBytes, registryBaseDir, ok := loadDependencyRegistryContent(outputDir)
	if !ok {
		return nil
	}

	var registry struct {
		Providers map[string]struct {
			Dependencies map[string]interface{} `yaml:"dependencies"`
		} `yaml:"providers"`
	}
	if err := yaml.Unmarshal(registryBytes, &registry); err != nil {
		return nil
	}
	if len(registry.Providers) == 0 {
		return nil
	}

	providerName = strings.TrimSpace(providerName)
	if providerName == "" {
		return nil
	}

	lookupName := canonicalProviderName(providerName)
	var providerEntry struct {
		Dependencies map[string]interface{} `yaml:"dependencies"`
	}
	found := false
	for rawName, entry := range registry.Providers {
		if canonicalProviderName(rawName) != lookupName {
			continue
		}
		providerEntry = entry
		found = true
		break
	}
	if !found || len(providerEntry.Dependencies) == 0 {
		return nil
	}

	normalized := map[string]interface{}{}
	currentPackageName := toDartPackageName("", providerName)
	for dependencyName, spec := range providerEntry.Dependencies {
		name := strings.TrimSpace(dependencyName)
		if name == "" {
			continue
		}
		if name == currentPackageName {
			continue
		}
		normalizedSpec, ok := normalizeRegistryDependencySpec(spec, registryBaseDir)
		if !ok {
			continue
		}
		normalized[name] = normalizedSpec
	}
	if len(normalized) == 0 {
		return nil
	}

	return normalized
}

func normalizeRegistryDependencySpec(spec interface{}, registryBaseDir string) (interface{}, bool) {
	switch value := spec.(type) {
	case nil:
		return nil, false
	case string:
		trimmed := strings.TrimSpace(value)
		if trimmed == "" {
			return nil, false
		}
		return trimmed, true
	case map[string]interface{}:
		normalized, ok := normalizeRegistryDependencySpecMap(value, registryBaseDir)
		if !ok {
			return nil, false
		}
		return normalized, true
	case map[interface{}]interface{}:
		converted, ok := convertInterfaceMapToStringMap(value)
		if !ok {
			return nil, false
		}
		normalizedMap, ok := normalizeRegistryDependencySpecMap(converted, registryBaseDir)
		if !ok {
			return nil, false
		}
		return normalizedMap, true
	default:
		return nil, false
	}
}

func normalizeRegistryDependencySpecMap(value map[string]interface{}, registryBaseDir string) (map[string]interface{}, bool) {
	normalized := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key := strings.TrimSpace(rawKey)
		if key == "" {
			continue
		}

		// Top-level dependency "path" entries are file system paths and should
		// resolve relative to the registry file location when needed.
		if key == "path" {
			pathValue, ok := rawValue.(string)
			if !ok {
				continue
			}
			pathValue = strings.TrimSpace(pathValue)
			if pathValue == "" {
				continue
			}
			if !filepath.IsAbs(pathValue) && registryBaseDir != "" {
				pathValue = filepath.Clean(filepath.Join(registryBaseDir, pathValue))
			}
			normalized[key] = filepath.ToSlash(pathValue)
			continue
		}

		normalizedValue, ok := normalizeRegistryDependencyValue(rawValue)
		if !ok {
			continue
		}
		normalized[key] = normalizedValue
	}
	if len(normalized) == 0 {
		return nil, false
	}
	return normalized, true
}

func normalizeRegistryDependencyValue(value interface{}) (interface{}, bool) {
	switch typed := value.(type) {
	case nil:
		return nil, false
	case string:
		trimmed := strings.TrimSpace(typed)
		if trimmed == "" {
			return nil, false
		}
		return trimmed, true
	case bool, int, int8, int16, int32, int64, uint, uint8, uint16, uint32, uint64, float32, float64:
		return typed, true
	case []interface{}:
		items := make([]interface{}, 0, len(typed))
		for _, item := range typed {
			normalizedItem, ok := normalizeRegistryDependencyValue(item)
			if !ok {
				continue
			}
			items = append(items, normalizedItem)
		}
		return items, true
	case map[string]interface{}:
		return normalizeRegistryDependencyValueMap(typed)
	case map[interface{}]interface{}:
		converted, ok := convertInterfaceMapToStringMap(typed)
		if !ok {
			return nil, false
		}
		return normalizeRegistryDependencyValueMap(converted)
	default:
		return nil, false
	}
}

func normalizeRegistryDependencyValueMap(value map[string]interface{}) (map[string]interface{}, bool) {
	normalized := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key := strings.TrimSpace(rawKey)
		if key == "" {
			continue
		}
		normalizedValue, ok := normalizeRegistryDependencyValue(rawValue)
		if !ok {
			continue
		}
		normalized[key] = normalizedValue
	}
	if len(normalized) == 0 {
		return nil, false
	}
	return normalized, true
}

func convertInterfaceMapToStringMap(value map[interface{}]interface{}) (map[string]interface{}, bool) {
	converted := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key, ok := rawKey.(string)
		if !ok {
			continue
		}
		trimmed := strings.TrimSpace(key)
		if trimmed == "" {
			continue
		}
		converted[trimmed] = rawValue
	}
	if len(converted) == 0 {
		return nil, false
	}
	return converted, true
}

func loadDependencyRegistryContent(outputDir string) ([]byte, string, bool) {
	if registryPath := resolveDependencyRegistryPath(outputDir); registryPath != "" {
		registryBytes, err := os.ReadFile(registryPath)
		if err == nil {
			return registryBytes, filepath.Dir(registryPath), true
		}
	}

	if registryURL := resolveDependencyRegistryURL(); registryURL != "" {
		registryBytes, ok := fetchDependencyRegistryURL(registryURL)
		if ok {
			return registryBytes, "", true
		}
	}

	return nil, "", false
}

func resolveDependencyRegistryPath(outputDir string) string {
	if path := strings.TrimSpace(os.Getenv("PULUMI_DART_DEPENDENCY_REGISTRY")); path != "" {
		if !filepath.IsAbs(path) {
			if resolved, err := filepath.Abs(path); err == nil {
				path = resolved
			}
		}
		if info, err := os.Stat(path); err == nil && !info.IsDir() {
			return path
		}
		return ""
	}

	searchRoots := make([]string, 0, 3)
	if outputDir != "" {
		searchRoots = append(searchRoots, outputDir)
	}
	if cwd, err := os.Getwd(); err == nil && cwd != "" {
		searchRoots = append(searchRoots, cwd)
	}
	if exePath, err := os.Executable(); err == nil && exePath != "" {
		searchRoots = append(searchRoots, filepath.Dir(exePath))
	}

	for _, root := range searchRoots {
		absDir, err := filepath.Abs(root)
		if err != nil {
			continue
		}
		for {
			candidate := filepath.Join(absDir, "packages", "sdk_dependency_registry.yaml")
			if info, err := os.Stat(candidate); err == nil && !info.IsDir() {
				return candidate
			}
			parent := filepath.Dir(absDir)
			if parent == absDir {
				break
			}
			absDir = parent
		}
	}

	return ""
}

func resolveDependencyRegistryURL() string {
	return strings.TrimSpace(os.Getenv("PULUMI_DART_DEPENDENCY_REGISTRY_URL"))
}

func fetchDependencyRegistryURL(registryURL string) ([]byte, bool) {
	client := &http.Client{Timeout: 5 * time.Second}
	response, err := client.Get(registryURL)
	if err != nil {
		return nil, false
	}
	defer response.Body.Close()

	if response.StatusCode < http.StatusOK || response.StatusCode >= http.StatusMultipleChoices {
		return nil, false
	}

	bytes, err := io.ReadAll(response.Body)
	if err != nil {
		return nil, false
	}
	if len(bytes) == 0 {
		return nil, false
	}
	return bytes, true
}

func shouldUpdateExistingPubspec() bool {
	value := strings.TrimSpace(os.Getenv("PULUMI_DART_UPDATE_EXISTING_PUBSPEC"))
	return strings.EqualFold(value, "1") ||
		strings.EqualFold(value, "true") ||
		strings.EqualFold(value, "yes")
}

func shouldUseWorkspaceResolution(outputDir string) bool {
	if value, ok := parseTruthyFalseyEnv("PULUMI_DART_WORKSPACE_RESOLUTION"); ok {
		return value
	}
	return directoryInPubWorkspace(outputDir)
}

func parseTruthyFalseyEnv(name string) (bool, bool) {
	value := strings.TrimSpace(os.Getenv(name))
	if value == "" {
		return false, false
	}
	if strings.EqualFold(value, "1") ||
		strings.EqualFold(value, "true") ||
		strings.EqualFold(value, "yes") {
		return true, true
	}
	if strings.EqualFold(value, "0") ||
		strings.EqualFold(value, "false") ||
		strings.EqualFold(value, "no") {
		return false, true
	}
	return false, false
}

func directoryInPubWorkspace(outputDir string) bool {
	workspaceRoot := findNearestPubWorkspaceRoot(outputDir)
	if workspaceRoot == "" {
		return false
	}

	absOutputDir, err := filepath.Abs(outputDir)
	if err != nil {
		return false
	}

	return outputDirWithinWorkspaceMembers(workspaceRoot, absOutputDir)
}

func applyWorkspacePulumiDependencyVersion(pubspec *PubSpec, outputDir string) bool {
	if pubspec == nil {
		return false
	}

	pulumiVersion := inferWorkspacePulumiPackageVersion(outputDir)
	if strings.TrimSpace(pulumiVersion) == "" {
		return false
	}

	if pubspec.Dependencies == nil {
		pubspec.Dependencies = map[string]interface{}{}
	}

	if current, ok := pubspec.Dependencies["pulumi"].(string); ok && strings.TrimSpace(current) == pulumiVersion {
		return false
	}

	pubspec.Dependencies["pulumi"] = pulumiVersion
	if pubspec.DependencyOverrides != nil {
		delete(pubspec.DependencyOverrides, "pulumi")
		if len(pubspec.DependencyOverrides) == 0 {
			pubspec.DependencyOverrides = nil
		}
	}

	return true
}

func inferWorkspacePulumiPackageVersion(outputDir string) string {
	workspaceRoot := findNearestPubWorkspaceRoot(outputDir)
	if workspaceRoot == "" {
		return ""
	}

	workspaceMembers, err := workspaceMembersFromPubspec(filepath.Join(workspaceRoot, "pubspec.yaml"))
	if err != nil {
		return ""
	}

	for _, memberPath := range workspaceMembers {
		memberPath = strings.TrimSpace(memberPath)
		if memberPath == "" {
			continue
		}
		memberDir := filepath.Clean(filepath.Join(workspaceRoot, memberPath))
		memberPubspec, err := ReadAndParsePubspec(filepath.Join(memberDir, "pubspec.yaml"))
		if err != nil || memberPubspec == nil {
			continue
		}
		if memberPubspec.Name == "pulumi" {
			return strings.TrimSpace(memberPubspec.Version)
		}
	}

	return ""
}

func defaultGeneratedExtraFiles(packageName, packagePath, packageVersion string) map[string][]byte {
	return map[string][]byte{
		"README.md":             generatedPackageReadme(packageName, packagePath),
		"CHANGELOG.md":          generatedPackageChangelog(packageVersion),
		"analysis_options.yaml": generatedPackageAnalysisOptions(),
		"example/main.dart":     generatedPackageExampleMain(packageName),
	}
}

func findNearestPubWorkspaceRoot(outputDir string) string {
	if strings.TrimSpace(outputDir) == "" {
		return ""
	}

	absOutputDir, err := filepath.Abs(outputDir)
	if err != nil {
		return ""
	}

	for searchDir := absOutputDir; ; searchDir = filepath.Dir(searchDir) {
		pubspecPath := filepath.Join(searchDir, "pubspec.yaml")
		if _, err := workspaceMembersFromPubspec(pubspecPath); err == nil {
			return searchDir
		}

		parent := filepath.Dir(searchDir)
		if parent == searchDir {
			return ""
		}
	}
}

func outputDirWithinWorkspaceMembers(workspaceRoot, absOutputDir string) bool {
	workspaceMembers, err := workspaceMembersFromPubspec(filepath.Join(workspaceRoot, "pubspec.yaml"))
	if err != nil {
		return false
	}

	for _, member := range workspaceMembers {
		memberPath := strings.TrimSpace(member)
		if memberPath == "" {
			continue
		}
		absMemberDir := filepath.Clean(filepath.Join(workspaceRoot, memberPath))
		rel, err := filepath.Rel(absMemberDir, absOutputDir)
		if err != nil {
			continue
		}
		if rel == "." || (rel != ".." && !strings.HasPrefix(rel, ".."+string(filepath.Separator))) {
			return true
		}
	}

	return false
}

func workspaceMembersFromPubspec(pubspecPath string) ([]string, error) {
	pubspecData, err := os.ReadFile(pubspecPath)
	if err != nil {
		return nil, err
	}

	var pubspec struct {
		Workspace []string `yaml:"workspace"`
	}
	if err := yaml.Unmarshal(pubspecData, &pubspec); err != nil {
		return nil, err
	}
	if len(pubspec.Workspace) == 0 {
		return nil, fmt.Errorf("workspace field not found in %s", pubspecPath)
	}

	return pubspec.Workspace, nil
}

func syncGeneratedCodeToWorkspaceMember(generatedDir, packageName string) error {
	absGeneratedDir, err := filepath.Abs(generatedDir)
	if err != nil {
		return fmt.Errorf("failed to get absolute path of generated directory: %w", err)
	}

	parentDir := filepath.Dir(absGeneratedDir)
	parentDirName := filepath.Base(parentDir)

	grandparentDir := filepath.Dir(parentDir)
	grandparentDirName := filepath.Base(grandparentDir)

	var providerDir string
	if grandparentDirName == "sdks" {
		providerDir = parentDir
	} else if parentDirName == "sdks" {
		providerDir = absGeneratedDir
	} else {
		return nil
	}

	providerName := strings.TrimPrefix(packageName, "pulumi_")
	packagesDir := filepath.Dir(filepath.Dir(providerDir))
	workspaceMemberDir := filepath.Join(packagesDir, providerName)
	pubspecPath := filepath.Join(workspaceMemberDir, "pubspec.yaml")
	if _, err := os.Stat(pubspecPath); err != nil {
		return nil
	}

	packagePubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil {
		return nil
	}

	expectedPackageName := toDartPackageName("", packageName)
	if packagePubspec.Name != expectedPackageName {
		return nil
	}

	generatedPubspecPath := filepath.Join(absGeneratedDir, "pubspec.yaml")
	_, err = os.ReadFile(generatedPubspecPath)
	if err != nil {
		return nil
	}

	generatedPubspec, err := ReadAndParsePubspec(generatedPubspecPath)
	if err != nil {
		return nil
	}

	didMutate := applyGeneratedPulumiDependency(packagePubspec, generatedPubspec)
	didMutate = applyLocalPathPublishPolicy(packagePubspec) || didMutate

	missingDependencies := missingRequiredDependencies(packagePubspec, generatedPubspec.Dependencies)
	if len(missingDependencies) > 0 {
		if shouldUpdateExistingPubspec() {
			didMutate = true
			if packagePubspec.Dependencies == nil {
				packagePubspec.Dependencies = map[string]interface{}{}
			}
			for _, name := range missingDependencies {
				packagePubspec.Dependencies[name] = generatedPubspec.Dependencies[name]
			}
		}
	}

	if didMutate {
		updatedPubspecBytes, err := yaml.Marshal(packagePubspec)
		if err != nil {
			return fmt.Errorf("failed to marshal updated workspace member pubspec.yaml: %w", err)
		}
		if err := os.WriteFile(pubspecPath, updatedPubspecBytes, 0o600); err != nil {
			return fmt.Errorf("failed to update workspace member pubspec.yaml: %w", err)
		}
	}

	targetLibDir := filepath.Join(workspaceMemberDir, "lib")
	if err := os.MkdirAll(targetLibDir, 0o700); err != nil {
		return fmt.Errorf("failed to create target lib directory: %w", err)
	}

	generatedLibDir := filepath.Join(absGeneratedDir, "lib")
	if _, err := os.Stat(generatedLibDir); err != nil {
		return nil
	}

	if err := copyDirContents(generatedLibDir, targetLibDir); err != nil {
		return fmt.Errorf("failed to copy generated lib to workspace member: %w", err)
	}

	return nil
}

func copyDirContents(src, dst string) error {
	entries, err := os.ReadDir(src)
	if err != nil {
		return err
	}

	for _, entry := range entries {
		srcPath := filepath.Join(src, entry.Name())
		dstPath := filepath.Join(dst, entry.Name())

		if entry.IsDir() {
			if err := os.MkdirAll(dstPath, 0o700); err != nil {
				return err
			}
			if err := copyDirContents(srcPath, dstPath); err != nil {
				return err
			}
		} else {
			data, err := os.ReadFile(srcPath)
			if err != nil {
				return err
			}
			if err := os.WriteFile(dstPath, data, 0o600); err != nil {
				return err
			}
		}
	}

	return nil
}
