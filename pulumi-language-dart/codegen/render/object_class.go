package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func ObjectClass(declaration dartir.ObjectClass) []byte {
	var b strings.Builder
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")
	writeImports(&b, declaration.Imports)
	b.WriteString("\n")
	writeObjectClassDocs(&b, declaration)
	fmt.Fprintf(&b, "class %s {\n", declaration.Name)
	for _, property := range declaration.Properties {
		WriteDocComment(&b, "  ", property.Docs)
		fmt.Fprintf(&b, "  final %s %s;\n", property.FieldType, property.FieldName)
	}
	writeObjectConstructor(&b, declaration)
	writeObjectToMap(&b, declaration.Properties)
	writeObjectFromMap(&b, declaration)
	b.WriteString("}\n")
	return []byte(b.String())
}

func writeImports(b *strings.Builder, imports []dartir.Import) {
	for _, imported := range imports {
		fmt.Fprintf(b, "import '%s'", imported.URI)
		if imported.Prefix != "" {
			fmt.Fprintf(b, " as %s", imported.Prefix)
		}
		b.WriteString(";\n")
	}
}

func writeObjectClassDocs(b *strings.Builder, declaration dartir.ObjectClass) {
	if declaration.DocsMacro == "" || strings.TrimSpace(declaration.Docs) == "" {
		WriteDocComment(b, "", declaration.Docs)
		return
	}
	fmt.Fprintf(b, "/// {@template %s}\n", declaration.DocsMacro)
	WriteDocComment(b, "", declaration.Docs)
	fmt.Fprintf(b, "/// {@endtemplate}\n/// {@macro %s}\n", declaration.DocsMacro)
}

func writeObjectConstructor(b *strings.Builder, declaration dartir.ObjectClass) {
	if len(declaration.Properties) == 0 {
		fmt.Fprintf(b, "\n  const %s();\n\n", declaration.Name)
		return
	}
	fmt.Fprintf(b, "\n  /// Creates a new [%s].\n", declaration.Name)
	for _, property := range declaration.Properties {
		fmt.Fprintf(b, "  /// [%s] %s\n", property.FieldName, property.ConstructorDocs)
	}
	hasDefaults := false
	for _, property := range declaration.Properties {
		hasDefaults = hasDefaults || property.DefaultExpression != ""
	}
	constructorModifier := "const "
	if hasDefaults {
		constructorModifier = ""
	}
	fmt.Fprintf(b, "  %s%s({\n", constructorModifier, declaration.Name)
	for _, property := range declaration.Properties {
		if property.DefaultExpression != "" {
			parameterType := property.FieldType
			if !strings.HasSuffix(parameterType, "?") {
				parameterType += "?"
			}
			fmt.Fprintf(b, "    %s %s,\n", parameterType, property.FieldName)
		} else if property.Required {
			fmt.Fprintf(b, "    required this.%s,\n", property.FieldName)
		} else {
			fmt.Fprintf(b, "    this.%s,\n", property.FieldName)
		}
	}
	b.WriteString("  })")
	if hasDefaults {
		separator := " :"
		for _, property := range declaration.Properties {
			if property.DefaultExpression == "" {
				continue
			}
			fmt.Fprintf(b, "%s %s = %s ?? %s", separator, property.FieldName, property.FieldName, property.DefaultExpression)
			separator = ","
		}
	}
	b.WriteString(";\n\n")
}

func writeObjectToMap(b *strings.Builder, properties []dartir.ObjectProperty) {
	b.WriteString("  Map<String, dynamic> toMap() {\n    return <String, dynamic>{\n")
	for _, property := range properties {
		optional := ""
		if !property.Required {
			optional = "?"
		}
		fmt.Fprintf(b, "      %s: %s%s,\n", property.NameLiteral, optional, property.ToMapExpression)
	}
	b.WriteString("    };\n  }\n\n")
}

func writeObjectFromMap(b *strings.Builder, declaration dartir.ObjectClass) {
	fmt.Fprintf(b, "  factory %s.fromMap(Map<String, dynamic> map) {\n", declaration.Name)
	fmt.Fprintf(b, "    return %s(\n", declaration.Name)
	for _, property := range declaration.Properties {
		fmt.Fprintf(b, "      %s: %s,\n", property.FieldName, property.FromMapExpression)
	}
	b.WriteString("    );\n  }\n")
}
