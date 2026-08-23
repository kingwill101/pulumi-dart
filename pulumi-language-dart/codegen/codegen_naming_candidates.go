package codegen

import "strings"

func typeNameCandidates(baseName, modulePath string, suffixes ...string) []string {
	base := stripRedundantModulePrefix(baseName, modulePath)
	if base == "" {
		base = "GeneratedType"
	}
	qualifier := modulePathQualifierForName(modulePath, base)
	if len(suffixes) == 0 {
		suffixes = []string{""}
	}
	seen := map[string]struct{}{}
	candidates := make([]string, 0, len(suffixes)*2+2)
	add := func(candidate string) {
		candidate = sanitizeTypeName(candidate)
		if candidate == "" {
			return
		}
		if _, exists := seen[candidate]; exists {
			return
		}
		seen[candidate] = struct{}{}
		candidates = append(candidates, candidate)
	}
	for _, suffix := range suffixes {
		add(base + suffix)
		if qualifier != "" {
			add(base + qualifier + suffix)
		}
	}
	if len(candidates) == 0 {
		return []string{"GeneratedType"}
	}
	return candidates
}

func claimUniqueTypeNameFromCandidates(candidates []string, used map[string]int) string {
	for _, candidate := range candidates {
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
	if len(candidates) == 0 {
		return claimUniqueTypeName("GeneratedType", used)
	}
	return claimUniqueTypeName(candidates[0], used)
}

func uniqueQualifiedClassName(baseName, modulePath string, used map[string]int, suffixes ...string) string {
	return claimUniqueTypeNameFromCandidates(typeNameCandidates(baseName, modulePath, suffixes...), used)
}

func moduleScopedTypeNameSet(usedByModule map[string]map[string]int, modulePath string) map[string]int {
	return moduleScopedNameSet(usedByModule, modulePath)
}

func moduleScopedIdentifierSet(usedByModule map[string]map[string]int, modulePath string) map[string]int {
	return moduleScopedNameSet(usedByModule, modulePath)
}

func moduleScopedNameSet(usedByModule map[string]map[string]int, modulePath string) map[string]int {
	key := moduleScopeKey(modulePath)
	if usedByModule[key] == nil {
		usedByModule[key] = map[string]int{}
	}
	return usedByModule[key]
}

func moduleScopeKey(modulePath string) string {
	key := normalizedModulePath(modulePath)
	if idx := strings.Index(key, "/"); idx >= 0 {
		return key[:idx]
	}
	return key
}
