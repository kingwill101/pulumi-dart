package codegen

import (
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

func sanitizeDartDocComment(comment string) string {
	return darttext.SanitizeDocComment(comment)
}

func normalizeDeprecatedProviderReferences(rawSchema string) string {
	return darttext.NormalizeDeprecatedProviderReferences(rawSchema)
}

func writeDartDocComment(b *strings.Builder, indent, comment string) {
	render.WriteDocComment(b, indent, comment)
}
