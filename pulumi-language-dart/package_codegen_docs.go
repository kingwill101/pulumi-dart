package main

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

func sanitizeDartDocComment(comment string) string {
	// Normalize CRLF/CR from upstream docs to avoid embedding raw carriage
	// returns that can break Dart parser/formatter behavior.
	comment = strings.ReplaceAll(comment, "\r", "")
	// Strip Pulumi code chooser markers while preserving enclosed markdown content.
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
	for len(trimmed) > 0 && exampleUsageHeaderPattern.MatchString(strings.TrimSpace(trimmed[len(trimmed)-1])) {
		trimmed = trimmed[:len(trimmed)-1]
		for len(trimmed) > 0 && strings.TrimSpace(trimmed[len(trimmed)-1]) == "" {
			trimmed = trimmed[:len(trimmed)-1]
		}
	}

	return strings.TrimSpace(strings.Join(trimmed, "\n"))
}

func normalizeDeprecatedProviderReferences(rawSchema string) string {
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
		for i := range current {
			current[i] = rewriteDeprecatedProviderRefNodes(current[i])
		}
		return current
	default:
		return node
	}
}

func writeDartDocComment(b *strings.Builder, indent, comment string) {
	comment = sanitizeDartDocComment(comment)
	if comment == "" {
		return
	}

	inCodeFence := false
	for _, rawLine := range strings.Split(comment, "\n") {
		trimmed := strings.TrimSpace(rawLine)
		if strings.HasPrefix(trimmed, "```") || strings.HasPrefix(trimmed, "~~~") {
			fmt.Fprintf(b, "%s/// %s\n", indent, trimmed)
			inCodeFence = !inCodeFence
			continue
		}

		line := trimmed
		if inCodeFence {
			// Preserve leading indentation inside fenced code examples.
			line = strings.TrimRight(rawLine, " \t")
		}

		if line == "" {
			fmt.Fprintf(b, "%s///\n", indent)
			continue
		}
		fmt.Fprintf(b, "%s/// %s\n", indent, line)
	}
}

func firstDartDocLine(comment string) string {
	comment = sanitizeDartDocComment(comment)
	if comment == "" {
		return ""
	}
	for _, rawLine := range strings.Split(comment, "\n") {
		line := strings.TrimSpace(rawLine)
		if line == "" {
			continue
		}
		return line
	}
	return ""
}

func constructorParameterDoc(property packagePropertySpec) string {
	if line := firstDartDocLine(property.Comment); line != "" {
		return line
	}
	if property.Required {
		return "Required."
	}
	return "Optional."
}

func argsClassDocMacroName(modulePath, className string) string {
	normalizedModule := normalizedModulePath(modulePath)
	if normalizedModule == "" {
		normalizedModule = "index"
	}
	moduleSegment := strings.ReplaceAll(normalizedModule, "/", "_")
	classSegment := toSnakeCaseIdentifier(className)
	return sanitizeDartIdentifier(fmt.Sprintf("pulumi_%s_%s_doc", moduleSegment, classSegment))
}

func writeGeneratedResourceConstructorDoc(
	b *strings.Builder,
	indent, className, argsName, argsDoc string,
) {
	fmt.Fprintf(b, "%s/// Creates a new [%s].\n", indent, className)
	fmt.Fprintf(b, "%s/// [name] The Pulumi resource name.\n", indent)
	if argsName != "" {
		fmt.Fprintf(b, "%s/// [%s] %s\n", indent, argsName, argsDoc)
	}
	fmt.Fprintf(b, "%s/// [options] Resource options controlling this resource's behavior.\n", indent)
}
