package main

import (
	"os"
	"path/filepath"
	"strings"
)

func loadDependencyRegistryContent(outputDir string) ([]byte, string, bool) {
	if path := resolveDependencyRegistryPath(outputDir); path != "" {
		if contents, err := os.ReadFile(path); err == nil {
			return contents, filepath.Dir(path), true
		}
	}
	if registryURL := resolveDependencyRegistryURL(); registryURL != "" {
		if contents, ok := fetchDependencyRegistryURL(registryURL); ok {
			return contents, "", true
		}
	}
	return nil, "", false
}

func resolveDependencyRegistryPath(outputDir string) string {
	if configured := strings.TrimSpace(os.Getenv("PULUMI_DART_DEPENDENCY_REGISTRY")); configured != "" {
		if !filepath.IsAbs(configured) {
			absolute, err := filepath.Abs(configured)
			if err != nil {
				return ""
			}
			configured = absolute
		}
		return existingRegularFile(configured)
	}
	for _, root := range dependencyRegistrySearchRoots(outputDir) {
		for directory := root; ; directory = filepath.Dir(directory) {
			candidate := filepath.Join(directory, "packages", "sdk_dependency_registry.yaml")
			if existing := existingRegularFile(candidate); existing != "" {
				return existing
			}
			if filepath.Dir(directory) == directory {
				break
			}
		}
	}
	return ""
}

func dependencyRegistrySearchRoots(outputDir string) []string {
	roots := []string{outputDir}
	if currentDirectory, err := os.Getwd(); err == nil {
		roots = append(roots, currentDirectory)
	}
	if executable, err := os.Executable(); err == nil {
		roots = append(roots, filepath.Dir(executable))
	}
	var result []string
	for _, root := range roots {
		root = strings.TrimSpace(root)
		if absolute, err := filepath.Abs(root); err == nil && root != "" {
			result = append(result, absolute)
		}
	}
	return result
}

func existingRegularFile(path string) string {
	if info, err := os.Stat(path); err == nil && !info.IsDir() {
		return path
	}
	return ""
}

func resolveDependencyRegistryURL() string {
	return strings.TrimSpace(os.Getenv("PULUMI_DART_DEPENDENCY_REGISTRY_URL"))
}
