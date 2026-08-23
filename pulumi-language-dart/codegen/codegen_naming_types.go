package codegen

import (
	"fmt"
	"strconv"
	"strings"
)

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
