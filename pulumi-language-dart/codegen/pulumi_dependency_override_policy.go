package codegen

import (
	"os"
	"strings"
)

// ShouldApplyPulumiDependencyOverride reports whether the runtime should write
// dependency_overrides.pulumi when setting a source dependency for pulumi.
//
// Default behavior is conservative:
// - false when the project has no existing pulumi override
// - true when the project already has dependency_overrides.pulumi
// - true when PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE is truthy
func ShouldApplyPulumiDependencyOverride(pubspec *PubSpec) bool {
	value := strings.TrimSpace(strings.ToLower(os.Getenv("PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE")))
	if value == "1" || value == "true" || value == "yes" || value == "on" {
		return true
	}

	if pubspec == nil || pubspec.DependencyOverrides == nil {
		return false
	}

	_, hasPulumiOverride := pubspec.DependencyOverrides["pulumi"]
	return hasPulumiOverride
}
