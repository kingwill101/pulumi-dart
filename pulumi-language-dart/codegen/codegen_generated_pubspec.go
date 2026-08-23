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
		pubspec.Dependencies["pulumi"] = defaultPulumiPubspecDependency()
	}

	return pubspec
}

// inferLocalPulumiDependencyFromProject discovers a local path-based pulumi
// dependency from the nearest project pubspec (dependencies or overrides).
//
// Example:
// - pulumi: "path:../pulumi-dart/packages/pulumi" => absolute cleaned path.
func inferLocalPulumiDependencyFromProject(startDir string) string {
	pubspecPath, err := findPubspecYaml(startDir)
	if err != nil {
		return ""
	}

	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil || pubspec == nil {
		return ""
	}

	readPathFromDependencyMap := func(dependencies map[string]interface{}) string {
		pulumiDependency, ok := dependencies["pulumi"]
		if !ok {
			return ""
		}

		version := getDependencyVersion(pulumiDependency)
		if !strings.HasPrefix(version, "path:") {
			return ""
		}

		pulumiPath := strings.TrimSpace(strings.TrimPrefix(version, "path:"))
		if pulumiPath == "" {
			return ""
		}
		if !filepath.IsAbs(pulumiPath) {
			pulumiPath = filepath.Join(filepath.Dir(pubspecPath), pulumiPath)
		}
		return filepath.Clean(pulumiPath)
	}

	if pubspec.Dependencies != nil {
		if pulumiPath := readPathFromDependencyMap(pubspec.Dependencies); pulumiPath != "" {
			return pulumiPath
		}
	}
	if pubspec.DependencyOverrides != nil {
		if pulumiPath := readPathFromDependencyMap(pubspec.DependencyOverrides); pulumiPath != "" {
			return pulumiPath
		}
	}
	return ""
}

// toPubspecTopics converts schema keywords to valid pub.dev topic values.
//
// Constraints applied:
// - lowercase alphanumeric with dashes
// - deduplicated
// - max 5 topics
// - max 32 chars per topic
