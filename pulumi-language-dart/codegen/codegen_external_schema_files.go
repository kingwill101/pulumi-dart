package codegen

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
)

func filesystemExternalSchemaIndexLoader(outputDir string) externalSchemaIndexLoader {
	searchRoots := externalSchemaSearchRoots(outputDir)
	return func(providerName string) *externalSchemaIndex {
		schemaPath := resolveExternalSchemaPath(providerName, searchRoots)
		if schemaPath == "" {
			return nil
		}
		schemaBytes, err := os.ReadFile(schemaPath)
		if err != nil {
			return nil
		}
		var rawSpec rawPackageSchema
		if err := json.Unmarshal(schemaBytes, &rawSpec); err != nil {
			return nil
		}
		return buildExternalSchemaIndex(rawSpec)
	}
}

func externalSchemaSearchRoots(outputDir string) []string {
	roots := []string{outputDir}
	if currentDir, err := os.Getwd(); err == nil {
		roots = append(roots, currentDir)
	}
	return uniqueAbsolutePaths(roots)
}

func uniqueAbsolutePaths(paths []string) []string {
	seen := map[string]struct{}{}
	var result []string
	for _, path := range paths {
		absolute, err := filepath.Abs(strings.TrimSpace(path))
		if err != nil || strings.TrimSpace(path) == "" {
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
	providerName = canonicalProviderName(providerName)
	if providerName == "" {
		return ""
	}
	if envDir := strings.TrimSpace(os.Getenv("PULUMI_DART_SCHEMAS_DIR")); envDir != "" {
		if candidate := existingSchemaFile(filepath.Join(envDir, providerName+".schema.json")); candidate != "" {
			return candidate
		}
	}
	for _, root := range roots {
		for dir := root; ; dir = filepath.Dir(dir) {
			candidate := filepath.Join(dir, "packages", "schemas", providerName+".schema.json")
			if existing := existingSchemaFile(candidate); existing != "" {
				return existing
			}
			if filepath.Dir(dir) == dir {
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
