package codegen

func GeneratedSDKPackageVersion(upstreamVersion string) string {
	return generatedSDKPackageVersion(upstreamVersion)
}
func NormalizeGeneratedVersion(version string) string { return normalizeGeneratedVersion(version) }
func BuildGeneratedPubspec(packageName string, localDependencies map[string]string, schemaDependencies map[string]interface{}) PubSpec {
	return buildGeneratedPubspec(packageName, localDependencies, schemaDependencies)
}
func ApplyPackageMetadataToPubspec(pubspec *PubSpec, spec *PackageSchema) {
	applyPackageMetadataToPubspec(pubspec, spec)
}
func SafeOutputPath(rootDir, relativePath string) (string, error) {
	return safeOutputPath(rootDir, relativePath)
}
func GeneratedPackageExampleMain(packageName string) []byte {
	return generatedPackageExampleMain(packageName)
}
func GeneratedPackageReadme(packageName, packagePath string) []byte {
	return generatedPackageReadme(packageName, packagePath)
}
func GeneratedPackageChangelog(version string) []byte { return generatedPackageChangelog(version) }
func GeneratedPackageAnalysisOptions() []byte         { return generatedPackageAnalysisOptions() }
