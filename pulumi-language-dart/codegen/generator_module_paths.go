package codegen

import (
	"path/filepath"
	"sort"
	"strings"
)

func moduleLibraryPathForSymbolFile(symbolFilePath string) string {
	normalized := filepath.ToSlash(strings.TrimSpace(symbolFilePath))
	if normalized == "" {
		return ""
	}
	directory := filepath.ToSlash(filepath.Dir(normalized))
	if directory == "." || directory == "" {
		return "index.dart"
	}
	if index := strings.Index(directory, "/"); index >= 0 {
		directory = directory[:index]
	}
	if directory == "" {
		return "index.dart"
	}
	return directory + ".dart"
}

func moduleExportPathsFromContent(content []byte) []string {
	var exports []string
	for _, rawLine := range strings.Split(string(content), "\n") {
		line := strings.TrimSpace(rawLine)
		if strings.HasPrefix(line, "export '") && strings.HasSuffix(line, "';") {
			if path := strings.TrimSuffix(strings.TrimPrefix(line, "export '"), "';"); path != "" {
				exports = append(exports, path)
			}
		}
	}
	return exports
}

func publicModuleEntryPoint(path string) bool {
	if !strings.HasSuffix(path, ".dart") || strings.Contains(path, "/") {
		return false
	}
	name := strings.TrimSuffix(path, ".dart")
	return name != "" && !strings.HasPrefix(name, "internal") && !strings.HasPrefix(name, "config")
}

func relativeImportPath(fromFile, toFile string) string {
	relative, err := filepath.Rel(filepath.Dir(filepath.ToSlash(fromFile)), filepath.ToSlash(toFile))
	if err != nil {
		return filepath.ToSlash(toFile)
	}
	return filepath.ToSlash(relative)
}

func sortedStringSet(values map[string]struct{}) []string {
	result := make([]string, 0, len(values))
	for value := range values {
		result = append(result, value)
	}
	sort.Strings(result)
	return result
}
