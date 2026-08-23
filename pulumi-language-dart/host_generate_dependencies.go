package main

import "strings"

func dartProgramLocalDependencies(dependencies map[string]string) map[string]string {
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
