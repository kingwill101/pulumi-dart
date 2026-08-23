package codegen

// ShouldApplyPulumiDependencyOverride reports whether the runtime should write
// dependency_overrides.pulumi when setting a source dependency for pulumi.
//
// Default behavior is conservative:
// - false when the project has no existing pulumi override
// - true when the project already has dependency_overrides.pulumi
// - true when PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE is truthy
func ShouldApplyPulumiDependencyOverride(pubspec *PubSpec, force bool) bool {
	if force {
		return true
	}

	if pubspec == nil || pubspec.DependencyOverrides == nil {
		return false
	}

	_, hasPulumiOverride := pubspec.DependencyOverrides["pulumi"]
	return hasPulumiOverride
}
