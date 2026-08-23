package main

import (
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

func filesystemExternalSchemaLoader(outputDir string) codegen.ExternalSchemaLoader {
	searchRoots := externalSchemaSearchRoots(outputDir)
	return func(providerName string) ([]byte, error) {
		schemaPath := resolveExternalSchemaPath(providerName, searchRoots)
		if schemaPath == "" {
			return nil, nil
		}
		return os.ReadFile(schemaPath)
	}
}

func externalSchemaSearchRoots(outputDir string) []string {
	roots := []string{outputDir}
	if currentDir, err := os.Getwd(); err == nil {
		roots = append(roots, currentDir)
	}
	seen := map[string]struct{}{}
	var result []string
	for _, root := range roots {
		root = strings.TrimSpace(root)
		if root == "" {
			continue
		}
		absolute, err := filepath.Abs(root)
		if err != nil {
			continue
		}
		if _, exists := seen[absolute]; exists {
			continue
		}
		seen[absolute] = struct{}{}
		result = append(result, absolute)
	}
	return result
}

func resolveExternalSchemaPath(providerName string, roots []string) string {
	providerName = strings.TrimSpace(strings.ToLower(providerName))
	if providerName == "" {
		return ""
	}
	if schemasDir := strings.TrimSpace(os.Getenv("PULUMI_DART_SCHEMAS_DIR")); schemasDir != "" {
		if candidate := existingSchemaFile(filepath.Join(schemasDir, providerName+".schema.json")); candidate != "" {
			return candidate
		}
	}
	for _, root := range roots {
		for directory := root; ; directory = filepath.Dir(directory) {
			candidate := filepath.Join(directory, "packages", "schemas", providerName+".schema.json")
			if existing := existingSchemaFile(candidate); existing != "" {
				return existing
			}
			if filepath.Dir(directory) == directory {
				break
			}
		}
	}
	return ""
}

func existingSchemaFile(path string) string {
	if info, err := os.Stat(path); err == nil && !info.IsDir() {
		return path
	}
	return ""
}
