package codegen

func GeneratedSDKPackageVersion(upstreamVersion, override, suffix string) string {
	return generatedSDKPackageVersion(upstreamVersion, override, suffix)
}
func BuildGeneratedPubspec(packageName string, localDependencies map[string]string, schemaDependencies map[string]interface{}, pulumiDependency interface{}) PubSpec {
	return buildGeneratedPubspec(packageName, localDependencies, schemaDependencies, pulumiDependency)
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
func GeneratedPackageReadme(packageName, packagePath, gitURL, gitRef string) []byte {
	return generatedPackageReadme(packageName, packagePath, gitURL, gitRef)
}
func GeneratedPackageChangelog(version string) []byte { return generatedPackageChangelog(version) }
func GeneratedPackageAnalysisOptions() []byte         { return generatedPackageAnalysisOptions() }
