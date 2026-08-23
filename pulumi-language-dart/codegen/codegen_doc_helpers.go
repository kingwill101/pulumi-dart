package codegen

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
)

func escapeDartDocInline(text string) string {
	text = strings.ReplaceAll(text, "<", "&lt;")
	text = strings.ReplaceAll(text, ">", "&gt;")
	return text
}

func firstDartDocLine(comment string) string {
	comment = darttext.SanitizeDocComment(comment)
	if comment == "" {
		return ""
	}
	for _, rawLine := range strings.Split(comment, "\n") {
		line := strings.TrimSpace(rawLine)
		if line == "" {
			continue
		}
		return escapeDartDocInline(line)
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
