package main

import (
	"fmt"
	"strings"

	codegenerator "github.com/kingwill101/pulumi-dart/pulumi-language-dart/generator"
)

func sanitizeDartDocComment(comment string) string {
	return codegenerator.SanitizeDartDocComment(comment)
}

func normalizeDeprecatedProviderReferences(rawSchema string) string {
	return codegenerator.NormalizeDeprecatedProviderReferences(rawSchema)
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
		} else {
			line = strings.ReplaceAll(line, "<", "&lt;")
			line = strings.ReplaceAll(line, ">", "&gt;")
		}

		if line == "" {
			fmt.Fprintf(b, "%s///\n", indent)
			continue
		}
		fmt.Fprintf(b, "%s/// %s\n", indent, line)
	}
}
