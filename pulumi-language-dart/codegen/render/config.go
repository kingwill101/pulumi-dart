package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func Config(declaration dartir.Config) []byte {
	var b strings.Builder
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")
	for _, imported := range declaration.Imports {
		fmt.Fprintf(&b, "import '%s'", imported.URI)
		if imported.Prefix != "" {
			fmt.Fprintf(&b, " as %s", imported.Prefix)
		}
		b.WriteString(";\n")
	}
	b.WriteString("\n")

	WriteDocComment(&b, "", declaration.Docs)
	fmt.Fprintf(&b, "class %s {\n  const %s();\n\n", declaration.ClassName, declaration.ClassName)
	b.WriteString("  String? _raw(String key) {\n    final deployment = pulumi.Deployment.instance;\n    return deployment.getConfig(key);\n  }\n\n")
	b.WriteString("  bool _isSecret(String key) {\n    final deployment = pulumi.Deployment.instance;\n    return deployment.isConfigSecret(key);\n  }\n\n")
	for _, property := range declaration.Properties {
		writeConfigProperty(&b, property)
	}
	b.WriteString("}\n\n")
	fmt.Fprintf(&b, "const config = %s();\n", declaration.ClassName)
	return []byte(b.String())
}

func writeConfigProperty(b *strings.Builder, property dartir.ConfigProperty) {
	WriteDocComment(b, "  ", property.Docs)
	fmt.Fprintf(b, "  %s get %s {\n", property.GetterType, property.FieldName)
	fmt.Fprintf(b, "    final raw = _raw(%s);\n", property.NameLiteral)
	fmt.Fprintf(b, "    return %s;\n  }\n\n", property.ParseExpression)
	if property.Required != nil {
		fmt.Fprintf(b, "  %s %s() {\n", property.Required.ReturnType, property.Required.MethodName)
		fmt.Fprintf(b, "    final value = %s;\n", property.FieldName)
		fmt.Fprintf(b, "    if (value == null) {\n      throw ArgumentError(\"Missing required config value %s.\");\n    }\n", property.NameLiteral)
		b.WriteString("    return value;\n  }\n\n")
	}
	fmt.Fprintf(b, "  bool get %sIsSecret => _isSecret(%s);\n\n", property.FieldName, property.NameLiteral)
}
