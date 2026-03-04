package codegen

import (
	"fmt"
	"strconv"
	"strings"
	"unicode"
	"unicode/utf8"
)

func uniqueClassName(base string, used map[string]int) string {
	return claimUniqueTypeName(base, used)
}

func lowerCamelIdentifier(name string) string {
	if name == "" {
		return ""
	}
	runes := []rune(name)
	if runes[0] >= 'A' && runes[0] <= 'Z' {
		runes[0] = runes[0] - 'A' + 'a'
	}
	return string(runes)
}

func sanitizeCallableIdentifier(name string) string {
	if name == "" {
		return "invoke"
	}
	name = lowerCamelIdentifier(name)
	if _, reserved := dartReservedIdentifiers[name]; reserved {
		return name + "_"
	}
	return name
}

func modulePathQualifierForName(modulePath, baseName string) string {
	normalized := normalizedModulePath(modulePath)
	if normalized == "" {
		return ""
	}

	baseToken := toSnakeCaseIdentifier(baseName)
	parts := strings.Split(normalized, "/")
	var b strings.Builder
	for _, part := range parts {
		if part == "" || part == "index" {
			continue
		}
		if baseToken != "" && part == baseToken {
			continue
		}
		b.WriteString(toDartClassName(part))
	}
	return b.String()
}

func removeLeadingRunes(value string, count int) string {
	if count <= 0 {
		return value
	}

	for count > 0 && value != "" {
		_, size := utf8.DecodeRuneInString(value)
		if size == 0 {
			return ""
		}
		value = value[size:]
		count--
	}
	return value
}

func stripRedundantModulePrefix(baseName, modulePath string) string {
	baseName = strings.TrimSpace(baseName)
	if baseName == "" {
		return ""
	}

	base := toDartClassName(baseName)
	if base == "" {
		return baseName
	}

	normalized := normalizedModulePath(modulePath)
	if normalized == "" || normalized == "index" {
		return base
	}

	parts := strings.Split(normalized, "/")
	if len(parts) <= 1 {
		return base
	}

	for i := 1; i < len(parts); i++ {
		segment := toDartClassName(parts[i])
		if segment == "" {
			continue
		}
		if !strings.HasPrefix(base, segment) {
			if !strings.HasPrefix(strings.ToLower(base), strings.ToLower(segment)) {
				continue
			}

			tail := removeLeadingRunes(base, utf8.RuneCountInString(segment))
			tailRune, _ := utf8.DecodeRuneInString(tail)
			if tail == "" {
				continue
			}
			if !unicode.IsUpper(tailRune) {
				if unicode.IsDigit(tailRune) {
					return tail
				}
				continue
			}

			return tail
		}

		tail := strings.TrimPrefix(base, segment)
		if tail == "" {
			continue
		}

		tailRune, _ := utf8.DecodeRuneInString(tail)
		if !unicode.IsUpper(tailRune) {
			if unicode.IsDigit(tailRune) {
				return tail
			}
			continue
		}

		return tail
	}

	return base
}

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
		candidates = append(candidates, "GeneratedType")
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
	key := moduleScopeKey(modulePath)
	used, ok := usedByModule[key]
	if !ok {
		used = map[string]int{}
		usedByModule[key] = used
	}
	return used
}

func moduleScopedIdentifierSet(usedByModule map[string]map[string]int, modulePath string) map[string]int {
	key := moduleScopeKey(modulePath)
	used, ok := usedByModule[key]
	if !ok {
		used = map[string]int{}
		usedByModule[key] = used
	}
	return used
}

func moduleScopeKey(modulePath string) string {
	key := normalizedModulePath(modulePath)
	if key == "" {
		return ""
	}
	if idx := strings.Index(key, "/"); idx >= 0 {
		return key[:idx]
	}
	return key
}

func canonicalTypeName(baseName string, suffixes ...string) string {
	base := toDartClassName(baseName)
	if base == "" {
		base = "GeneratedType"
	}
	if len(suffixes) == 0 {
		return sanitizeTypeName(base)
	}
	var b strings.Builder
	b.WriteString(base)
	for _, suffix := range suffixes {
		b.WriteString(suffix)
	}
	return sanitizeTypeName(b.String())
}

func claimUniqueIdentifierFromCandidates(candidates []string, used map[string]int) string {
	normalizedCandidates := make([]string, 0, len(candidates))
	for _, candidate := range candidates {
		candidate = sanitizeCallableIdentifier(candidate)
		if candidate == "" {
			continue
		}
		normalizedCandidates = append(normalizedCandidates, candidate)
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
	if len(normalizedCandidates) == 0 {
		normalizedCandidates = append(normalizedCandidates, "invoke")
	}
	base := normalizedCandidates[0]
	for suffix := 2; ; suffix++ {
		candidate := fmt.Sprintf("%s%d", base, suffix)
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
}

var dartReservedIdentifiers = map[string]struct{}{
	"assert": {}, "break": {}, "case": {}, "catch": {}, "class": {}, "const": {}, "continue": {},
	"default": {}, "do": {}, "else": {}, "enum": {}, "extends": {}, "false": {}, "final": {},
	"finally": {}, "for": {}, "if": {}, "in": {}, "is": {}, "new": {}, "null": {}, "rethrow": {},
	"return": {}, "super": {}, "switch": {}, "this": {}, "throw": {}, "true": {}, "try": {},
	"var": {}, "void": {}, "while": {}, "with": {},
	"bool": {}, "double": {}, "dynamic": {}, "int": {}, "num": {}, "string": {}, "String": {},
	"object": {}, "Object": {}, "never": {}, "Never": {},
}

var dartDisallowedFieldNames = map[string]struct{}{
	"runtimeType":     {},
	"hashCode":        {},
	"toString":        {},
	"noSuchMethod":    {},
	"toMap":           {},
	"fromMap":         {},
	"transformations": {},
	"childResources":  {},
}

var dartDisallowedTypeNames = map[string]struct{}{
	"ComponentResource":     {},
	"CustomResource":        {},
	"CustomResourceOptions": {},
	"Deployment":            {},
	"Function":              {},
	"Input":                 {},
	"InputArgs":             {},
	"InvokeOptions":         {},
	"List":                  {},
	"Map":                   {},
	"Output":                {},
	"Resource":              {},
	"ResourceOptions":       {},
	"Set":                   {},
}

func sanitizeTypeName(name string) string {
	if name == "" {
		return "GeneratedType"
	}
	if _, disallowed := dartDisallowedTypeNames[name]; disallowed {
		return name + "Type"
	}
	return name
}

func claimUniqueTypeName(base string, used map[string]int) string {
	if base == "" {
		base = "GeneratedType"
	}
	base = sanitizeTypeName(base)

	if _, exists := used[base]; !exists {
		used[base] = 1
		return base
	}

	stem := base
	start := 2
	for i := len(base) - 1; i >= 0; i-- {
		if base[i] < '0' || base[i] > '9' {
			if i < len(base)-1 {
				parsed, err := strconv.Atoi(base[i+1:])
				if err == nil && parsed >= 1 {
					start = parsed + 1
					stem = base[:i+1]
				}
			}
			break
		}
		if i == 0 {
			stem = base
			start = 2
		}
	}

	for suffix := start; ; suffix++ {
		candidate := fmt.Sprintf("%s%d", stem, suffix)
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
}

func propertyFieldName(name string, used map[string]int) string {
	candidate := toDartClassName(name)
	if candidate == "" {
		candidate = "value"
	}
	runes := []rune(candidate)
	if len(runes) > 0 && runes[0] >= 'A' && runes[0] <= 'Z' {
		runes[0] = runes[0] - 'A' + 'a'
	}
	candidate = string(runes)
	if _, reserved := dartReservedIdentifiers[candidate]; reserved {
		candidate += "_"
	}
	if _, disallowed := dartDisallowedFieldNames[candidate]; disallowed {
		candidate += "_"
	}
	count := used[candidate]
	used[candidate] = count + 1
	if count == 0 {
		return candidate
	}
	return fmt.Sprintf("%s%d", candidate, count+1)
}
