package main

import (
	"encoding/json"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func dartLanguageDependencies(packageSpec schema.PackageSpec) map[string]interface{} {
	raw, ok := packageSpec.Language["dart"]
	if !ok || len(raw) == 0 {
		return nil
	}
	var dartInfo struct {
		Dependencies map[string]interface{} `json:"dependencies"`
	}
	if err := json.Unmarshal(raw, &dartInfo); err != nil || len(dartInfo.Dependencies) == 0 {
		return nil
	}
	return dartInfo.Dependencies
}

func nodejsLanguagePulumiDependencies(
	packageSpec schema.PackageSpec,
	providerName string,
) map[string]interface{} {
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
	currentProvider := canonicalProviderName(providerName)
	dependencies := map[string]interface{}{}
	for dependencyName, rawConstraint := range nodeInfo.Dependencies {
		npmPackage := strings.TrimSpace(dependencyName)
		if !strings.HasPrefix(npmPackage, "@pulumi/") {
			continue
		}
		provider := canonicalProviderName(strings.TrimPrefix(npmPackage, "@pulumi/"))
		constraint := strings.TrimSpace(rawConstraint)
		if provider == "" || provider == currentProvider || constraint == "" {
			continue
		}
		packageName := codegen.ToDartPackageName("", provider)
		if packageName != "" {
			dependencies[packageName] = constraint
		}
	}
	if len(dependencies) == 0 {
		return nil
	}
	return dependencies
}
