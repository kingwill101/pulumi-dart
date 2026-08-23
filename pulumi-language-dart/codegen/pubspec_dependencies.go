package codegen

import "strings"

func DeterminePulumiPackages(dependencies map[string]interface{}) [][]string {
	var packages [][]string
	for name, spec := range dependencies {
		if name == "pulumi" || strings.HasPrefix(name, "pulumi_") {
			packages = append(packages, []string{name, getDependencyVersion(spec)})
		}
	}
	return packages
}

func getDependencyVersion(dependency interface{}) string {
	switch value := dependency.(type) {
	case string:
		return value
	case map[string]interface{}:
		if path, ok := value["path"].(string); ok {
			return "path:" + path
		}
		if git, ok := value["git"].(map[string]interface{}); ok {
			if url, ok := git["url"].(string); ok {
				version := "git:" + url
				if ref, ok := git["ref"].(string); ok {
					version += "#" + ref
				}
				return version
			}
		}
		if sdk, ok := value["sdk"].(string); ok {
			return "sdk:" + sdk
		}
		if hosted, ok := value["hosted"].(map[string]interface{}); ok {
			if version, ok := hosted["version"].(string); ok {
				return version
			}
		}
		if version, ok := value["version"].(string); ok {
			return version
		}
	}
	return ""
}
