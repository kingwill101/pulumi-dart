package main

import "strings"

func dartLocalDependencies(dependencies map[string]string) map[string]string {
	result := make(map[string]string, len(dependencies))
	for name, path := range dependencies {
		name = strings.TrimSpace(name)
		if name != "pulumi" && !strings.HasPrefix(name, "pulumi_") {
			name = "pulumi_" + strings.ReplaceAll(name, "-", "_")
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
		if name != "pulumi" && !strings.HasPrefix(name, "pulumi_") {
			name = "pulumi_" + strings.ReplaceAll(name, "-", "_")
		}
		required[name] = nil
	}
	return dartPackageLocalDependencies(dependencies, required)
}
