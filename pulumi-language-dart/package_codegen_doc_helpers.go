package main

import (
	"fmt"
	"strings"
)

func escapeDartDocInline(text string) string {
	text = strings.ReplaceAll(text, "<", "&lt;")
	text = strings.ReplaceAll(text, ">", "&gt;")
	return text
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
