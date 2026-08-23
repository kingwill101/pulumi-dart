package codegen

import (
	"fmt"
	"strings"
)

// writeGeneratedObjectClass emits generated object/args/result classes with
// constructor docs plus toMap/fromMap conversion helpers.
func writeGeneratedObjectClass(b *strings.Builder, objectClass packageObjectClassSpec) {
	if strings.HasSuffix(objectClass.ClassName, "Args") && strings.TrimSpace(objectClass.Comment) != "" {
		macroName := argsClassDocMacroName(objectClass.ModulePath, objectClass.ClassName)
		fmt.Fprintf(b, "/// {@template %s}\n", macroName)
		writeDartDocComment(b, "", objectClass.Comment)
		fmt.Fprintf(b, "/// {@endtemplate}\n")
		fmt.Fprintf(b, "/// {@macro %s}\n", macroName)
	} else {
		writeDartDocComment(b, "", objectClass.Comment)
	}
	fmt.Fprintf(b, "class %s {\n", objectClass.ClassName)
	for _, property := range objectClass.Properties {
		writeDartDocComment(b, "  ", property.Comment)
		fmt.Fprintf(
			b,
			"  final %s %s;\n",
			objectClassPropertyDartType(objectClass, property),
			property.FieldName,
		)
	}

	if len(objectClass.Properties) == 0 {
		fmt.Fprintf(b, "\n  const %s();\n\n", objectClass.ClassName)
	} else {
		fmt.Fprintf(b, "\n  /// Creates a new [%s].\n", objectClass.ClassName)
		for _, property := range objectClass.Properties {
			fmt.Fprintf(
				b,
				"  /// [%s] %s\n",
				property.FieldName,
				constructorParameterDoc(property),
			)
		}
		fmt.Fprintf(b, "  const %s({\n", objectClass.ClassName)
		for _, property := range objectClass.Properties {
			if property.Required {
				fmt.Fprintf(b, "    required this.%s,\n", property.FieldName)
			} else {
				fmt.Fprintf(b, "    this.%s,\n", property.FieldName)
			}
		}
		b.WriteString("  })")
		b.WriteString(";\n\n")
	}

	b.WriteString("  Map<String, dynamic> toMap() {\n")
	b.WriteString("    return <String, dynamic>{\n")
	for _, property := range objectClass.Properties {
		if property.Required {
			fmt.Fprintf(
				b,
				"      %s: %s,\n",
				dartStringLiteral(property.Name),
				objectClassToMapExpression(objectClass, property),
			)
		} else {
			fmt.Fprintf(
				b,
				"      %s: ?%s,\n",
				dartStringLiteral(property.Name),
				objectClassToMapExpression(objectClass, property),
			)
		}
	}
	b.WriteString("    };\n")
	b.WriteString("  }\n\n")

	fmt.Fprintf(b, "  factory %s.fromMap(Map<String, dynamic> map) {\n", objectClass.ClassName)
	fmt.Fprintf(b, "    return %s(\n", objectClass.ClassName)
	for _, property := range objectClass.Properties {
		fmt.Fprintf(
			b,
			"      %s: %s,\n",
			property.FieldName,
			objectClassFromMapExpression(objectClass, property),
		)
	}
	b.WriteString("    );\n")
	b.WriteString("  }\n")
	b.WriteString("}\n\n")
}
