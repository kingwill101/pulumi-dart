package main

import (
	"regexp"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

var externalSchemaRefRegex = regexp.MustCompile(
	`/([a-z0-9][a-z0-9-]*)/v([0-9][^/"]*)/schema\.json#`,
)

func schemaContainsExternalReferences(rawSchema string) bool {
	return strings.TrimSpace(rawSchema) != "" &&
		externalSchemaRefRegex.MatchString(strings.ToLower(rawSchema))
}

func inferredDartDependenciesFromExternalRefs(
	rawSchema, providerName string,
) map[string]interface{} {
	matches := externalSchemaRefRegex.FindAllStringSubmatch(strings.ToLower(strings.TrimSpace(rawSchema)), -1)
	if len(matches) == 0 {
		return nil
	}
	currentProvider := canonicalProviderName(providerName)
	versions := map[string]string{}
	for _, match := range matches {
		if len(match) < 3 {
			continue
		}
		referencedProvider := canonicalProviderName(match[1])
		if referencedProvider == "" || referencedProvider == currentProvider {
			continue
		}
		packageName := codegen.ToDartPackageName("", referencedProvider)
		version := strings.TrimSpace(match[2])
		if packageName == "" {
			continue
		}
		if current, exists := versions[packageName]; !exists || compareDiscoveredProviderVersions(version, current) > 0 {
			versions[packageName] = version
		}
	}
	dependencies := map[string]interface{}{}
	for packageName, version := range versions {
		if version == "" {
			dependencies[packageName] = "any"
		} else {
			dependencies[packageName] = "^" + version
		}
	}
	if len(dependencies) == 0 {
		return nil
	}
	return dependencies
}
