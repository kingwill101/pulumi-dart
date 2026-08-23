package codegen

import "strings"

func sanitizeDartIdentifier(value string) string {
	value = strings.ToLower(value)
	var result strings.Builder
	lastWasUnderscore := false
	for _, character := range value {
		isAlpha := character >= 'a' && character <= 'z'
		isDigit := character >= '0' && character <= '9'
		if isAlpha || isDigit {
			if result.Len() == 0 && isDigit {
				result.WriteString("pkg_")
			}
			result.WriteRune(character)
			lastWasUnderscore = false
		} else if result.Len() > 0 && !lastWasUnderscore {
			result.WriteRune('_')
			lastWasUnderscore = true
		}
	}
	normalized := strings.Trim(result.String(), "_")
	if normalized == "" {
		return "pulumi_package"
	}
	return normalized
}

func toDartPackageName(namespace, name string) string {
	base := sanitizeDartIdentifier(name)
	if namespace != "" {
		base = sanitizeDartIdentifier(namespace + "_" + name)
	}
	if namespace == "" && base == "pulumi" {
		return "pulumi"
	}
	if strings.HasPrefix(base, "pulumi_") {
		return base
	}
	return sanitizeDartIdentifier("pulumi_" + base)
}

func toDartClassName(name string) string {
	parts := strings.FieldsFunc(name, func(character rune) bool {
		return !((character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z') || (character >= '0' && character <= '9'))
	})
	if len(parts) == 0 {
		return "Resource"
	}
	var result strings.Builder
	for _, part := range parts {
		if part == "" {
			continue
		}
		if head := part[0]; head >= 'a' && head <= 'z' {
			part = string(head-'a'+'A') + part[1:]
		}
		result.WriteString(part)
	}
	name = result.String()
	if name == "" {
		return "Resource"
	}
	if name[0] >= '0' && name[0] <= '9' {
		return "Resource" + name
	}
	return name
}
