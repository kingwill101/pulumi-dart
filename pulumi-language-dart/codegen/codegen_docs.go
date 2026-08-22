package codegen

import (
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
	codegenerator "github.com/kingwill101/pulumi-dart/pulumi-language-dart/generator"
)

func sanitizeDartDocComment(comment string) string {
	return codegenerator.SanitizeDartDocComment(comment)
}

func normalizeDeprecatedProviderReferences(rawSchema string) string {
	return codegenerator.NormalizeDeprecatedProviderReferences(rawSchema)
}

func writeDartDocComment(b *strings.Builder, indent, comment string) {
	render.WriteDocComment(b, indent, comment)
}
