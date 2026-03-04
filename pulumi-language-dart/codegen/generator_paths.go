package codegen

import (
	"fmt"
	"path/filepath"
	"strings"
)

// normalizedModulePath canonicalizes schema module paths into slash-separated
// snake_case segments.
//
// Example:
// - "ecs/TaskDefinition" => "ecs/task_definition"
func normalizedModulePath(modulePath string) string {
	path := strings.TrimSpace(filepath.ToSlash(modulePath))
	if path == "" {
		return ""
	}

	parts := strings.Split(path, "/")
	normalized := make([]string, 0, len(parts))
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			continue
		}
		normalized = append(normalized, toSnakeCaseIdentifier(part))
	}
	return strings.Join(normalized, "/")
}

// moduleClassFilePath computes the symbol file path for a generated class
// within its root module directory.
//
// Example:
//   - modulePath "accessanalyzer/policy", class "Analyzer" =>
//     "accessanalyzer/analyzer.dart"
func moduleClassFilePath(modulePath, className string) string {
	fileName := toSnakeCaseIdentifier(className) + ".dart"
	normalizedModule := normalizedModulePath(modulePath)
	if normalizedModule == "" {
		return fileName
	}

	// Keep generated symbols flat within the root module directory so we avoid
	// one-directory-per-symbol sprawl (for example accessanalyzer/*.dart).
	rootModule := normalizedModule
	if idx := strings.Index(rootModule, "/"); idx >= 0 {
		rootModule = rootModule[:idx]
	}
	return filepath.ToSlash(filepath.Join(filepath.FromSlash(rootModule), fileName))
}

// moduleLibraryFilePath returns the root module library filename for a module
// path.
//
// Example:
// - "ecs/service" => "ecs.dart"
func moduleLibraryFilePath(modulePath string) string {
	normalizedModule := normalizedModulePath(modulePath)
	if normalizedModule == "" {
		return "index.dart"
	}
	root := normalizedModule
	if idx := strings.Index(root, "/"); idx >= 0 {
		root = root[:idx]
	}
	return root + ".dart"
}

// uniqueGeneratedFilePath deconflicts duplicate generated file names by adding
// numeric suffixes.
//
// Example:
// - first "ecs/service.dart" => "ecs/service.dart"
// - second "ecs/service.dart" => "ecs/service_2.dart"
func uniqueGeneratedFilePath(filePath string, used map[string]int) string {
	count := used[filePath]
	used[filePath] = count + 1
	if count == 0 {
		return filePath
	}
	ext := filepath.Ext(filePath)
	base := strings.TrimSuffix(filePath, ext)
	return fmt.Sprintf("%s_%d%s", base, count+1, ext)
}

// relativeDartImportPath returns a stable slash-form relative import path from
// one generated Dart file to another.
//
// If relative path derivation fails, the destination path is returned as-is.
func relativeDartImportPath(fromFilePath, toFilePath string) string {
	fromDir := filepath.Dir(filepath.FromSlash(fromFilePath))
	toPath := filepath.FromSlash(toFilePath)
	rel, err := filepath.Rel(fromDir, toPath)
	if err != nil {
		return filepath.ToSlash(toFilePath)
	}
	return filepath.ToSlash(rel)
}
