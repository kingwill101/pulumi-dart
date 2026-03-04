package generator

import (
	"encoding/json"
	"regexp"
	"strings"
)

var (
	pulumiCodeChooserMarkerPattern = regexp.MustCompile(`(?i)<!--\s*(Start|End)\s+PulumiCodeChooser\s*-->`)
	exampleUsageHeaderPattern      = regexp.MustCompile(`(?i)^##\s+Example Usage\s*$`)
	htmlSpanTagPattern             = regexp.MustCompile(`(?i)</?span\b[^>]*>`)
	deprecatedProviderRefPattern   = regexp.MustCompile(`^/resources/pulumi:providers:[^/]+$`)
)

func SanitizeDartDocComment(comment string) string {
	// Normalize CRLF/CR from upstream docs to avoid embedding raw carriage
	// returns that can break Dart parser/formatter behavior.
	comment = strings.ReplaceAll(comment, "\r", "")
	// Strip Pulumi code chooser markers while preserving enclosed markdown
	// content.
	comment = pulumiCodeChooserMarkerPattern.ReplaceAllString(comment, "")
	// Remove pulumi-lang span wrappers while keeping inner text.
	comment = htmlSpanTagPattern.ReplaceAllString(comment, "")
	comment = strings.TrimSpace(comment)

	lines := strings.Split(comment, "\n")
	trimmed := make([]string, len(lines))
	copy(trimmed, lines)
	for len(trimmed) > 0 && strings.TrimSpace(trimmed[len(trimmed)-1]) == "" {
		trimmed = trimmed[:len(trimmed)-1]
	}
	for len(trimmed) > 0 &&
		exampleUsageHeaderPattern.MatchString(strings.TrimSpace(trimmed[len(trimmed)-1])) {
		trimmed = trimmed[:len(trimmed)-1]
		for len(trimmed) > 0 && strings.TrimSpace(trimmed[len(trimmed)-1]) == "" {
			trimmed = trimmed[:len(trimmed)-1]
		}
	}

	return strings.TrimSpace(strings.Join(trimmed, "\n"))
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
				if ref, ok := value.(string); ok &&
					deprecatedProviderRefPattern.MatchString(ref) {
					current[key] = "#/provider"
					continue
				}
			}
			current[key] = rewriteDeprecatedProviderRefNodes(value)
		}
		return current
	case []interface{}:
		for i := range current {
			current[i] = rewriteDeprecatedProviderRefNodes(current[i])
		}
		return current
	default:
		return node
	}
}
