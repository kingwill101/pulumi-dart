package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
)

func WriteDocComment(b *strings.Builder, indent, comment string) {
	comment = darttext.SanitizeDocComment(comment)
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
