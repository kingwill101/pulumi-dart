package main

import (
	"path/filepath"
	"strings"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

func dartLocalDependencies(dependencies map[string]string) map[string]string {
	result := make(map[string]string, len(dependencies))
	for name, path := range dependencies {
		name = strings.TrimSpace(name)
		if pubspec, err := readAndParsePubspec(filepath.Join(path, "pubspec.yaml")); err == nil && pubspec.Name != "" {
			name = pubspec.Name
		} else {
			name = codegen.ToDartPackageName("", name)
		}
		result[name] = path
	}
	return result
}

func dartPackageLocalDependencies(
	dependencies map[string]string,
	required map[string]interface{},
) map[string]string {
	local := dartLocalDependencies(dependencies)
	for name := range local {
		if name == "pulumi" {
			continue
		}
		if _, used := required[name]; !used {
			delete(local, name)
		}
	}
	return local
}

func dartProgramLocalDependencies(
	dependencies map[string]string,
	packages []string,
) map[string]string {
	required := make(map[string]interface{}, len(packages))
	for _, name := range packages {
		required[name] = nil
		// Older callers pass the Pulumi package name while newer program IR
		// carries the resolved Dart package name. Accept both forms.
		required[codegen.ToDartPackageName("", name)] = nil
	}
	return dartPackageLocalDependencies(dependencies, required)
}
