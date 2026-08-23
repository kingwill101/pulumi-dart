package codegen

func ShouldRewriteTemplatePulumiDependency(dep interface{}, rewrite bool) bool {
	return shouldRewriteTemplatePulumiDependency(dep, rewrite)
}
func IsSourceDependencySpec(spec interface{}) bool { return isSourceDependencySpec(spec) }
func DependencyPackageDirFromDartPackageName(depName string) string {
	return dependencyPackageDirFromDartPackageName(depName)
}
func DependencySpecPath(spec interface{}) (string, bool) { return dependencySpecPath(spec) }
func DependencyVersion(dep interface{}) string           { return getDependencyVersion(dep) }
