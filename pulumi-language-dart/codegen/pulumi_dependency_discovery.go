package codegen

import (
	"path/filepath"
	"strings"
)

// inferLocalPulumiDependencyFromProject discovers a local path-based pulumi
// dependency from the nearest project pubspec (dependencies or overrides).
func inferLocalPulumiDependencyFromProject(startDir string) string {
	pubspecPath, err := findPubspecYaml(startDir)
	if err != nil {
		return ""
	}

	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil || pubspec == nil {
		return ""
	}
	if pulumiPath := localPulumiDependencyPath(pubspec.Dependencies, pubspecPath); pulumiPath != "" {
		return pulumiPath
	}
	return localPulumiDependencyPath(pubspec.DependencyOverrides, pubspecPath)
}

func localPulumiDependencyPath(dependencies map[string]interface{}, pubspecPath string) string {
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
