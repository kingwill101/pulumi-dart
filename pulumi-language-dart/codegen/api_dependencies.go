package codegen

func DependencyPackageName(rootDirectory, dependencyPath, fallbackName string) string {
	return dependencyPackageName(rootDirectory, dependencyPath, fallbackName)
}
func InferLocalPulumiDependencyFromProject(startDir string) string {
	return inferLocalPulumiDependencyFromProject(startDir)
}
func ShouldRewriteTemplatePulumiDependency(dep interface{}, rewrite bool) bool {
	return shouldRewriteTemplatePulumiDependency(dep, rewrite)
}
func IsSourceDependencySpec(spec interface{}) bool { return isSourceDependencySpec(spec) }
func DependencyPackageDirFromDartPackageName(depName string) string {
	return dependencyPackageDirFromDartPackageName(depName)
}
func DependencySpecPath(spec interface{}) (string, bool) { return dependencySpecPath(spec) }
func DependencyVersion(dep interface{}) string           { return getDependencyVersion(dep) }
func FindPubspecYaml(startDir string) (string, error)    { return findPubspecYaml(startDir) }
