package codegen

import (
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
