package codegen

import (
	"fmt"
	"strings"
)

// writeGeneratedConfigClass emits the generated config accessor class and the
// module-level config singleton instance.
func writeGeneratedConfigClass(b *strings.Builder, configSpec packageConfigSpec) {
	writeDartDocComment(b, "", configSpec.Comment)
	fmt.Fprintf(b, "class %s {\n", configSpec.ClassName)
	fmt.Fprintf(b, "  const %s();\n\n", configSpec.ClassName)
	b.WriteString(
		"  String? _raw(String key) {\n" +
			"    final deployment = pulumi.Deployment.instance;\n" +
			"    return deployment.getConfig(key);\n" +
			"  }\n\n",
	)
	b.WriteString(
		"  bool _isSecret(String key) {\n" +
			"    final deployment = pulumi.Deployment.instance;\n" +
			"    return deployment.isConfigSecret(key);\n" +
			"  }\n\n",
	)

	for _, property := range configSpec.Properties {
		writeDartDocComment(b, "  ", property.Comment)
		getterType := configPropertyGetterType(property)
		fmt.Fprintf(b, "  %s get %s {\n", getterType, property.FieldName)
		fmt.Fprintf(b, "    final raw = _raw(%s);\n", dartStringLiteral(property.Name))
		fmt.Fprintf(b, "    return %s;\n", configPropertyParseExpression(property, "raw"))
		b.WriteString("  }\n\n")

		if property.Required {
			methodName := "require" + toDartClassName(property.FieldName)
			returnType := propertyBaseDartType(property)
			fmt.Fprintf(b, "  %s %s() {\n", returnType, methodName)
			fmt.Fprintf(b, "    final value = %s;\n", property.FieldName)
			fmt.Fprintf(
				b,
				"    if (value == null) {\n      throw ArgumentError(\"Missing required config value %s.\");\n    }\n",
				dartStringLiteral(property.Name),
			)
			b.WriteString("    return value;\n")
			b.WriteString("  }\n\n")
		}

		fmt.Fprintf(b, "  bool get %sIsSecret => _isSecret(%s);\n\n", property.FieldName, dartStringLiteral(property.Name))
	}

	b.WriteString("}\n\n")
	b.WriteString(fmt.Sprintf("const config = %s();\n\n", configSpec.ClassName))
}

// writeGeneratedEnumClass emits a generated enum type with wire-value mapping
// and fromValue conversion.
func writeGeneratedEnumClass(b *strings.Builder, enumSpec packageEnumSpec) {
	writeDartDocComment(b, "", enumSpec.Comment)
	fmt.Fprintf(b, "enum %s {\n", enumSpec.EnumName)
	for i, enumValue := range enumSpec.Values {
		suffix := ","
		if i == len(enumSpec.Values)-1 {
			suffix = ";"
		}
		writeDartDocComment(b, "  ", enumValue.Comment)
		fmt.Fprintf(b, "  %s(%s)%s\n", enumValue.Name, enumValue.Literal, suffix)
	}
	b.WriteString("\n")
	fmt.Fprintf(b, "  const %s(this.wireValue);\n", enumSpec.EnumName)
	fmt.Fprintf(b, "  final %s wireValue;\n\n", enumSpec.UnderlyingType)
	fmt.Fprintf(
		b,
		"  static %s fromValue(%s value) {\n    for (final item in %s.values) {\n      if (item.wireValue == value) {\n        return item;\n      }\n    }\n    throw ArgumentError('Unknown %s value: $value');\n  }\n",
		enumSpec.EnumName,
		enumSpec.UnderlyingType,
		enumSpec.EnumName,
		enumSpec.EnumName,
	)
	b.WriteString("}\n\n")
}

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
