package main

import "github.com/pulumi/pulumi/pkg/v3/codegen/schema"

func requiredDartDependencies(
	packageSpec schema.PackageSpec,
	rawSchema string,
	providerName string,
	outputDir string,
) map[string]interface{} {
	combined := inferredDartDependenciesFromExternalRefs(rawSchema, providerName)
	if combined == nil {
		combined = map[string]interface{}{}
	}
	mergeMissingDependencies(combined, nodejsLanguagePulumiDependencies(packageSpec, providerName))
	mergeDependencies(combined, localRegistryDartDependencies(providerName, outputDir))
	mergeDependencies(combined, dartLanguageDependencies(packageSpec))
	if len(combined) == 0 {
		return nil
	}
	return combined
}

func mergeDependencies(target, source map[string]interface{}) {
	for name, dependency := range source {
		target[name] = dependency
	}
}

func mergeMissingDependencies(target, source map[string]interface{}) {
	for name, dependency := range source {
		if _, exists := target[name]; !exists {
			target[name] = dependency
		}
	}
}
