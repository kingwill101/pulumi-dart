package codegen

import (
	"sort"
)

type generatedTypeFile struct {
	ClassName  string
	ModulePath string
	FilePath   string
}

func addGeneratedTypeFile(typeFilesByName map[string][]generatedTypeFile, className, modulePath, filePath string) {
	if className == "" || filePath == "" {
		return
	}
	typeFilesByName[className] = append(typeFilesByName[className], generatedTypeFile{
		ClassName:  className,
		ModulePath: modulePath,
		FilePath:   filePath,
	})
}

func resolveTypeFilePath(
	typeFilesByName map[string][]generatedTypeFile,
	className, modulePath string,
) (string, bool) {
	entries := typeFilesByName[className]
	if len(entries) == 0 {
		return "", false
	}
	if len(entries) == 1 {
		return entries[0].FilePath, true
	}

	scopeKey := moduleScopeKey(modulePath)
	for _, entry := range entries {
		if moduleScopeKey(entry.ModulePath) == scopeKey {
			return entry.FilePath, true
		}
	}

	// Stable fallback when no module-scope match exists.
	sorted := make([]generatedTypeFile, len(entries))
	copy(sorted, entries)
	sort.Slice(sorted, func(i, j int) bool {
		return sorted[i].FilePath < sorted[j].FilePath
	})
	return sorted[0].FilePath, true
}
