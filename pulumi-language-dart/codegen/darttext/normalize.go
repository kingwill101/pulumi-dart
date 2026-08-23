package darttext

import (
	"encoding/json"
	"fmt"
	"regexp"
	"strings"
)

var (
	pulumiCodeChooserMarkerPattern = regexp.MustCompile(`(?i)<!--\s*(Start|End)\s+PulumiCodeChooser\s*-->`)
	exampleUsageHeaderPattern      = regexp.MustCompile(`(?i)^##\s+Example Usage\s*$`)
	htmlSpanTagPattern             = regexp.MustCompile(`(?i)</?span\b[^>]*>`)
	deprecatedProviderRefPattern   = regexp.MustCompile(`^/resources/pulumi:providers:[^/]+$`)
)

func SanitizeDocComment(comment string) string {
	comment = strings.ReplaceAll(comment, "\r", "")
	comment = pulumiCodeChooserMarkerPattern.ReplaceAllString(comment, "")
	comment = htmlSpanTagPattern.ReplaceAllString(comment, "")
	lines := strings.Split(strings.TrimSpace(comment), "\n")
	for len(lines) > 0 && strings.TrimSpace(lines[len(lines)-1]) == "" {
		lines = lines[:len(lines)-1]
	}
	for len(lines) > 0 && exampleUsageHeaderPattern.MatchString(strings.TrimSpace(lines[len(lines)-1])) {
		lines = lines[:len(lines)-1]
		for len(lines) > 0 && strings.TrimSpace(lines[len(lines)-1]) == "" {
			lines = lines[:len(lines)-1]
		}
	}
	return strings.TrimSpace(strings.Join(lines, "\n"))
}

func StringLiteral(value string) string {
	var b strings.Builder
	b.Grow(len(value) + 2)
	b.WriteByte('\'')
	for _, character := range value {
		switch character {
		case '\\':
			b.WriteString(`\\`)
		case '\'':
			b.WriteString(`\'`)
		case '$':
			b.WriteString(`\$`)
		case '\n':
			b.WriteString(`\n`)
		case '\r':
			b.WriteString(`\r`)
		case '\t':
			b.WriteString(`\t`)
		case '\b':
			b.WriteString(`\b`)
		case '\f':
			b.WriteString(`\f`)
		default:
			if character < 0x20 {
				fmt.Fprintf(&b, `\u%04x`, character)
				continue
			}
			b.WriteRune(character)
		}
	}
	b.WriteByte('\'')
	return b.String()
}

func NormalizeDeprecatedProviderReferences(rawSchema string) string {
	var decoded interface{}
	if err := json.Unmarshal([]byte(rawSchema), &decoded); err != nil {
		return rawSchema
	}
	normalized := rewriteDeprecatedProviderRefNodes(decoded)
	encoded, err := json.Marshal(normalized)
	if err != nil {
		return rawSchema
	}
	return string(encoded)
}

func rewriteDeprecatedProviderRefNodes(node interface{}) interface{} {
	switch current := node.(type) {
	case map[string]interface{}:
		for key, value := range current {
			if key == "$ref" {
				if ref, ok := value.(string); ok && deprecatedProviderRefPattern.MatchString(ref) {
					current[key] = "#/provider"
					continue
				}
			}
			current[key] = rewriteDeprecatedProviderRefNodes(value)
		}
		return current
	case []interface{}:
		for index := range current {
			current[index] = rewriteDeprecatedProviderRefNodes(current[index])
		}
		return current
	default:
		return node
	}
}
