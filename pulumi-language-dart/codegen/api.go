package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/schema"

// PackageSchema is the exported alias for the internal package schema model.
type PackageSchema = packageSchema

// RawPackageSchema is the exported alias for the raw JSON schema model.
type RawPackageSchema = rawPackageSchema

// PackageTypeSpec is the exported alias for resolved type metadata.
type PackageTypeSpec = packageTypeSpec

const (
	// DefaultPulumiGitURL is the fallback git URL used for pulumi dependency sourcing.
	DefaultPulumiGitURL = defaultPulumiGitURL
	// DefaultPulumiGitPath is the fallback git path used for pulumi dependency sourcing.
	DefaultPulumiGitPath = defaultPulumiGitPath
	// DefaultPulumiPubDev is the default pub.dev API endpoint for the pulumi package.
	DefaultPulumiPubDev = defaultPulumiPubDev
)

// GeneratedProgramStub returns a generated Dart stack scaffold.
func GeneratedProgramStub(pclSource map[string]string) []byte {
	return generatedProgramStub(pclSource)
}

// NormalizeDeprecatedProviderReferences rewrites deprecated provider refs in raw schema JSON.
func NormalizeDeprecatedProviderReferences(rawSchema string) string {
	return normalizeDeprecatedProviderReferences(rawSchema)
}

// ParsePackageSchema parses raw provider schema JSON into the internal model.
func ParsePackageSchema(schemaJSON, outputDir string) (*PackageSchema, error) {
	return parsePackageSchema(schemaJSON, outputDir)
}

// PackageSchemaFromPackage converts a bound Pulumi schema package into the internal model.
func PackageSchemaFromPackage(pkg *schema.Package) *PackageSchema {
	return packageSchemaFromPackage(pkg)
}

// RawRequiredSet converts a required list into a lookup set.
func RawRequiredSet(required []string) map[string]struct{} {
	return rawRequiredSet(required)
}

// SanitizeDartIdentifier normalizes arbitrary strings into valid Dart identifiers.
func SanitizeDartIdentifier(value string) string {
	return sanitizeDartIdentifier(value)
}

// ToDartPackageName returns the generated Dart package name for a provider.
func ToDartPackageName(namespace, name string) string {
	return toDartPackageName(namespace, name)
}

// ExternalTokenTypeSpec resolves an external provider token into a typed spec.
func ExternalTokenTypeSpec(
	token string,
	currentProvider string,
	refKind string,
	wireType string,
	useReferenceType bool,
	useReferenceTypes bool,
) (PackageTypeSpec, bool) {
	return externalTokenTypeSpec(token, currentProvider, refKind, wireType, useReferenceType, useReferenceTypes)
}

// CoerceOutputCollectionType rewrites output collection element types to
// supported wire-compatible types.
func CoerceOutputCollectionType(typeSpec PackageTypeSpec) PackageTypeSpec {
	return coerceOutputCollectionType(typeSpec)
}

// GeneratedSDKPackageVersion computes generated package version metadata.
func GeneratedSDKPackageVersion(upstreamVersion string) string {
	return generatedSDKPackageVersion(upstreamVersion)
}

// NormalizeGeneratedVersion trims and normalizes generated package versions.
func NormalizeGeneratedVersion(version string) string {
	return normalizeGeneratedVersion(version)
}

// DependencyPackageName resolves a local dependency package name from pubspec.
func DependencyPackageName(rootDirectory, dependencyPath, fallbackName string) string {
	return dependencyPackageName(rootDirectory, dependencyPath, fallbackName)
}

// BuildGeneratedPubspec constructs the generated pubspec model.
func BuildGeneratedPubspec(
	packageName string,
	localDependencies map[string]string,
	schemaDependencies map[string]interface{},
) PubSpec {
	return buildGeneratedPubspec(packageName, localDependencies, schemaDependencies)
}

// InferLocalPulumiDependencyFromProject resolves a local pulumi path dependency from a nearby pubspec.
func InferLocalPulumiDependencyFromProject(startDir string) string {
	return inferLocalPulumiDependencyFromProject(startDir)
}

// ApplyPackageMetadataToPubspec projects schema metadata onto a pubspec model.
func ApplyPackageMetadataToPubspec(pubspec *PubSpec, spec *PackageSchema) {
	applyPackageMetadataToPubspec(pubspec, spec)
}

// SafeOutputPath safely resolves relative generated output paths under a root.
func SafeOutputPath(rootDir, relativePath string) (string, error) {
	return safeOutputPath(rootDir, relativePath)
}

// GeneratedPackageExampleMain returns a default example/main.dart file.
func GeneratedPackageExampleMain(packageName string) []byte {
	return generatedPackageExampleMain(packageName)
}

// GeneratedPackageReadme returns a default README.md.
func GeneratedPackageReadme(packageName, packagePath string) []byte {
	return generatedPackageReadme(packageName, packagePath)
}

// GeneratedPackageChangelog returns a default CHANGELOG.md.
func GeneratedPackageChangelog(version string) []byte {
	return generatedPackageChangelog(version)
}

// GeneratedPackageAnalysisOptions returns default Dart analysis options.
func GeneratedPackageAnalysisOptions() []byte {
	return generatedPackageAnalysisOptions()
}

// DefaultPulumiPubspecDependency returns the default pulumi dependency spec.
func DefaultPulumiPubspecDependency() interface{} {
	return defaultPulumiPubspecDependency()
}

// ShouldRewriteTemplatePulumiDependency indicates whether a template pulumi dep should be rewritten.
func ShouldRewriteTemplatePulumiDependency(dep interface{}) bool {
	return shouldRewriteTemplatePulumiDependency(dep)
}

// IsSourceDependencySpec reports whether dependency spec encodes source-based dependency data.
func IsSourceDependencySpec(spec interface{}) bool {
	return isSourceDependencySpec(spec)
}

// DependencyPackageDirFromDartPackageName maps pulumi_* package names to provider dirs.
func DependencyPackageDirFromDartPackageName(depName string) string {
	return dependencyPackageDirFromDartPackageName(depName)
}

// DependencySpecPath extracts path dependency value from dependency specs.
func DependencySpecPath(spec interface{}) (string, bool) {
	return dependencySpecPath(spec)
}

// DependencyVersion converts a dependency spec to the normalized version/source string.
func DependencyVersion(dep interface{}) string {
	return getDependencyVersion(dep)
}

// FindPubspecYaml discovers the nearest pubspec.yaml starting at startDir.
func FindPubspecYaml(startDir string) (string, error) {
	return findPubspecYaml(startDir)
}
