package lower

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func ConstructorParameterDocs(property schemair.Property) string {
	comment := darttext.SanitizeDocComment(property.Comment)
	for _, rawLine := range strings.Split(comment, "\n") {
		line := strings.TrimSpace(rawLine)
		if line != "" {
			line = strings.ReplaceAll(line, "<", "&lt;")
			return strings.ReplaceAll(line, ">", "&gt;")
		}
	}
	if property.Required {
		return "Required."
	}
	return "Optional."
}

func NullGuardedExpression(sourceExpr, resultExpr string) string {
	return fmt.Sprintf(
		"(() { final guardedValue = %s; if (guardedValue == null) return null; return %s; })()",
		sourceExpr,
		resultExpr,
	)
}
