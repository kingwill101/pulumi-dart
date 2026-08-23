package main

import (
	"encoding/json"
	"regexp"
	"strings"

	semver "github.com/blang/semver"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

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

// requiredDartDependencies merges inferred, registry, nodejs-language and
// explicit dart-language dependencies into one dependency map for pubspec.
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

// nodejsLanguagePulumiDependencies extracts cross-provider Pulumi dependencies
// from nodejs language metadata and maps them to Dart package names.
//
// Example:
//
//	"@pulumi/aws": "^6.0.0" -> "pulumi_aws": "^6.0.0"
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

		dartPackage := codegen.ToDartPackageName("", referencedProvider)
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

// schemaContainsExternalReferences reports whether schema JSON contains refs to
// other providers' versioned schema documents.
func schemaContainsExternalReferences(rawSchema string) bool {
	if strings.TrimSpace(rawSchema) == "" {
		return false
	}
	return externalSchemaRefRegex.MatchString(strings.ToLower(rawSchema))
}

// inferredDartDependenciesFromExternalRefs discovers provider dependencies from
// external schema `$ref` values and emits pubspec constraints.
//
// Example:
//
//	/aws/v7.20.0/schema.json#... -> pulumi_aws: ^7.20.0
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

		dependencyName := codegen.ToDartPackageName("", referencedProvider)
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

// compareDiscoveredProviderVersions compares two discovered version strings and
// returns 1 when left is newer, -1 when right is newer, and 0 when equal.
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

// canonicalProviderName normalizes provider identifiers for matching and
// dependency resolution.
//
// Example:
//
//	"Azure_Native" -> "azure-native"
func canonicalProviderName(name string) string {
	name = strings.TrimSpace(strings.ToLower(name))
	if name == "" {
		return ""
	}
	return strings.ReplaceAll(name, "_", "-")
}

// localRegistryDartDependencies loads dependency overrides from
// sdk_dependency_registry.yaml for the target provider.
