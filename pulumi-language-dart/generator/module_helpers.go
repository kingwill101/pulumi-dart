package generator

import (
	"fmt"
	"path/filepath"
	"sort"
	"strings"
)

func ModuleExportPathsFromContent(content []byte) []string {
	lines := strings.Split(string(content), "\n")
	exports := make([]string, 0, len(lines))
	for _, rawLine := range lines {
		line := strings.TrimSpace(rawLine)
		if !strings.HasPrefix(line, "export '") || !strings.HasSuffix(line, "';") {
			continue
		}
		exportPath := strings.TrimSuffix(strings.TrimPrefix(line, "export '"), "';")
		if exportPath == "" {
			continue
		}
		exports = append(exports, exportPath)
	}
	return exports
}

func RelativeImportPath(fromFile, toFile string) string {
	fromDir := filepath.Dir(filepath.ToSlash(fromFile))
	rel, err := filepath.Rel(fromDir, filepath.ToSlash(toFile))
	if err != nil {
		return filepath.ToSlash(toFile)
	}
	return filepath.ToSlash(rel)
}

func GeneratedPublicModuleEntryPoints(packageName string, sdkSources map[string][]byte) map[string][]byte {
	rootModules := map[string]struct{}{}
	for relativePath := range sdkSources {
		normalized := filepath.ToSlash(relativePath)
		if !strings.HasSuffix(normalized, ".dart") {
			continue
		}
		if strings.Contains(normalized, "/") {
			continue
		}
		moduleName := strings.TrimSuffix(normalized, ".dart")
		if moduleName == "" ||
			strings.HasPrefix(moduleName, "internal") ||
			strings.HasPrefix(moduleName, "config") {
			continue
		}
		rootModules[moduleName] = struct{}{}
	}

	entryPoints := map[string][]byte{}
	modulePaths := make([]string, 0, len(rootModules))
	for moduleDir := range rootModules {
		modulePaths = append(modulePaths, moduleDir)
	}
	sort.Strings(modulePaths)

	for _, moduleName := range modulePaths {
		entryPath := filepath.ToSlash(moduleName + ".dart")
		entryContent := fmt.Sprintf(
			"export 'package:%s/src/%s.dart';\n",
			packageName,
			moduleName,
		)
		entryPoints[entryPath] = []byte(entryContent)
	}

	return entryPoints
}
