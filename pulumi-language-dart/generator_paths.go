package main

import (
	"fmt"
	"path/filepath"
	"strings"
)

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

func relativeDartImportPath(fromFilePath, toFilePath string) string {
	fromDir := filepath.Dir(filepath.FromSlash(fromFilePath))
	toPath := filepath.FromSlash(toFilePath)
	rel, err := filepath.Rel(fromDir, toPath)
	if err != nil {
		return filepath.ToSlash(toFilePath)
	}
	return filepath.ToSlash(rel)
}
