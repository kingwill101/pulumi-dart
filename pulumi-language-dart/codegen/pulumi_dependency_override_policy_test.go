package codegen

import "testing"

func TestShouldApplyPulumiDependencyOverride_DefaultFalse(t *testing.T) {
	t.Setenv("PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE", "")
	if ShouldApplyPulumiDependencyOverride(&PubSpec{}) {
		t.Fatalf("expected override policy to default to false without existing pulumi override")
	}
}

func TestShouldApplyPulumiDependencyOverride_ExistingOverrideTrue(t *testing.T) {
	t.Setenv("PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE", "")
	pubspec := &PubSpec{
		DependencyOverrides: map[string]interface{}{
			"pulumi": "^1.0.0",
		},
	}
	if !ShouldApplyPulumiDependencyOverride(pubspec) {
		t.Fatalf("expected override policy to be true when pulumi override already exists")
	}
}

func TestShouldApplyPulumiDependencyOverride_ForceEnvTrue(t *testing.T) {
	t.Setenv("PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE", "true")
	if !ShouldApplyPulumiDependencyOverride(&PubSpec{}) {
		t.Fatalf("expected override policy to be true when force env var is set")
	}
}
