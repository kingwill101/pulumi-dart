package main

import (
	"os"
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

func applyLocalPathPublishPolicy(existing *codegen.PubSpec) bool {
	if existing == nil {
		return false
	}

	if existing.Dependencies == nil {
		return false
	}

	pulumiDependency, hasPulumiDependency := existing.Dependencies["pulumi"]
	if !hasPulumiDependency || !codegen.IsSourceDependencySpec(pulumiDependency) {
		return false
	}
	if strings.TrimSpace(existing.PublishTo) != "" {
		return false
	}

	existing.PublishTo = "none"
	return true
}

func applyGeneratedPulumiDependency(existing *codegen.PubSpec, generated *codegen.PubSpec) bool {
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
	if !codegen.IsSourceDependencySpec(pulumiDependency) {
		return false
	}

	if existing.Dependencies == nil {
		existing.Dependencies = map[string]interface{}{}
	}
	existing.Dependencies["pulumi"] = pulumiDependency

	if codegen.ShouldApplyPulumiDependencyOverride(
		existing,
		environmentFlag("PULUMI_DART_FORCE_PULUMI_DEPENDENCY_OVERRIDE", false),
	) {
		if existing.DependencyOverrides == nil {
			existing.DependencyOverrides = map[string]interface{}{}
		}
		existing.DependencyOverrides["pulumi"] = pulumiDependency
	}

	return true
}

func missingRequiredDependencies(existing *codegen.PubSpec, required map[string]interface{}) []string {
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
