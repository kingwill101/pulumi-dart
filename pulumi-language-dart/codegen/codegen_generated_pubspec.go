package codegen

import (
	"path/filepath"
	"sort"
	"strings"
)

func buildGeneratedPubspec(
	packageName string,
	localDependencies map[string]string,
	schemaDependencies map[string]interface{},
	pulumiDependency interface{},
) PubSpec {
	pubspec := PubSpec{
		Name:        packageName,
		Description: "Generated Pulumi Dart project.",
		Version:     "0.0.1",
		Environment: map[string]string{
			"sdk": ">=3.11.0 <4.0.0",
		},
		Dependencies: map[string]interface{}{},
	}
	pubspec.DevDependencies = map[string]interface{}{
		"lints": "^6.1.0",
	}

	schemaDependencyNames := make([]string, 0, len(schemaDependencies))
	for name := range schemaDependencies {
		if strings.TrimSpace(name) == "" {
			continue
		}
		schemaDependencyNames = append(schemaDependencyNames, name)
	}
	sort.Strings(schemaDependencyNames)
	for _, name := range schemaDependencyNames {
		pubspec.Dependencies[name] = schemaDependencies[name]
	}

	dependencyNames := make([]string, 0, len(localDependencies))
	for name := range localDependencies {
		if strings.TrimSpace(name) == "" {
			continue
		}
		dependencyNames = append(dependencyNames, name)
	}
	sort.Strings(dependencyNames)

	for _, name := range dependencyNames {
		dependencyPath := strings.TrimSpace(localDependencies[name])
		if dependencyPath == "" {
			continue
		}
		pubspec.Dependencies[name] = map[string]string{
			"path": filepath.ToSlash(dependencyPath),
		}
	}

	if _, hasPulumiDependency := pubspec.Dependencies["pulumi"]; !hasPulumiDependency {
		pubspec.Dependencies["pulumi"] = pulumiDependency
	}

	return pubspec
}
