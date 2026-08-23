package main

import (
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"gopkg.in/yaml.v3"
)

func localRegistryDartDependencies(providerName, outputDir string) map[string]interface{} {
	contents, baseDirectory, ok := loadDependencyRegistryContent(outputDir)
	if !ok {
		return nil
	}
	var registry struct {
		Providers map[string]struct {
			Dependencies map[string]interface{} `yaml:"dependencies"`
		} `yaml:"providers"`
	}
	if err := yaml.Unmarshal(contents, &registry); err != nil {
		return nil
	}
	lookupName := canonicalProviderName(providerName)
	if lookupName == "" {
		return nil
	}
	for rawName, entry := range registry.Providers {
		if canonicalProviderName(rawName) == lookupName {
			return normalizedRegistryDependencies(entry.Dependencies,
				codegen.ToDartPackageName("", providerName), baseDirectory)
		}
	}
	return nil
}

func normalizedRegistryDependencies(
	dependencies map[string]interface{}, currentPackageName, baseDirectory string,
) map[string]interface{} {
	result := map[string]interface{}{}
	for dependencyName, spec := range dependencies {
		name := strings.TrimSpace(dependencyName)
		if name == "" || name == currentPackageName {
			continue
		}
		if normalized, ok := normalizeRegistryDependencySpec(spec, baseDirectory); ok {
			result[name] = normalized
		}
	}
	if len(result) == 0 {
		return nil
	}
	return result
}
