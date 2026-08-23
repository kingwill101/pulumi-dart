package codegen

import "strings"

func toSnakeCaseIdentifier(value string) string {
	if value == "" {
		return "generated"
	}

	var out []rune
	var previous rune
	for index, current := range value {
		isUpper := current >= 'A' && current <= 'Z'
		isLower := current >= 'a' && current <= 'z'
		isDigit := current >= '0' && current <= '9'
		if isUpper {
			if index > 0 && (previous >= 'a' && previous <= 'z' || previous >= '0' && previous <= '9') {
				out = append(out, '_')
			}
			out = append(out, current-'A'+'a')
		} else if isLower || isDigit {
			out = append(out, current)
		} else if len(out) > 0 && out[len(out)-1] != '_' {
			out = append(out, '_')
		}
		previous = current
	}

	result := strings.Trim(strings.TrimSpace(string(out)), "_")
	if result == "" {
		return "generated"
	}
	return result
}
