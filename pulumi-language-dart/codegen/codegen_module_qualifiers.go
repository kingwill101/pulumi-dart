package codegen

import (
	"strings"
	"unicode"
	"unicode/utf8"
)

func modulePathQualifierForName(modulePath, baseName string) string {
	normalized := normalizedModulePath(modulePath)
	if normalized == "" {
		return ""
	}
	baseToken := toSnakeCaseIdentifier(baseName)
	var result strings.Builder
	for _, part := range strings.Split(normalized, "/") {
		if part != "" && part != "index" && (baseToken == "" || part != baseToken) {
			result.WriteString(toDartClassName(part))
		}
	}
	return result.String()
}

func stripRedundantModulePrefix(baseName, modulePath string) string {
	baseName = strings.TrimSpace(baseName)
	if baseName == "" {
		return ""
	}
	base := toDartClassName(baseName)
	normalized := normalizedModulePath(modulePath)
	if normalized == "" || normalized == "index" {
		return base
	}
	parts := strings.Split(normalized, "/")
	if len(parts) <= 1 {
		return base
	}
	for _, part := range parts[1:] {
		segment := toDartClassName(part)
		if segment == "" || !strings.HasPrefix(strings.ToLower(base), strings.ToLower(segment)) {
			continue
		}
		tail := removeLeadingRunes(base, utf8.RuneCountInString(segment))
		if tail == "" {
			continue
		}
		first, _ := utf8.DecodeRuneInString(tail)
		if unicode.IsUpper(first) || unicode.IsDigit(first) {
			return tail
		}
	}
	return base
}

func removeLeadingRunes(value string, count int) string {
	for count > 0 && value != "" {
		_, size := utf8.DecodeRuneInString(value)
		if size == 0 {
			return ""
		}
		value, count = value[size:], count-1
	}
	return value
}
