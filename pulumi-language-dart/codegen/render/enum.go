package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func Enum(declaration dartir.Enum) []byte {
	var b strings.Builder
	WriteDocComment(&b, "", declaration.Docs)
	fmt.Fprintf(&b, "enum %s {\n", declaration.Name)
	for index, value := range declaration.Values {
		suffix := ","
		if index == len(declaration.Values)-1 {
			suffix = ";"
		}
		WriteDocComment(&b, "  ", value.Docs)
		fmt.Fprintf(&b, "  %s(%s)%s\n", value.Name, value.Literal, suffix)
	}
	b.WriteString("\n")
	fmt.Fprintf(&b, "  const %s(this.wireValue);\n", declaration.Name)
	fmt.Fprintf(&b, "  final %s wireValue;\n\n", declaration.UnderlyingType)
	fmt.Fprintf(&b, "  static %s fromValue(%s value) {\n", declaration.Name, declaration.UnderlyingType)
	fmt.Fprintf(&b, "    for (final item in %s.values) {\n", declaration.Name)
	b.WriteString("      if (item.wireValue == value) {\n        return item;\n      }\n    }\n")
	fmt.Fprintf(&b, "    throw ArgumentError('Unknown %s value: $value');\n", declaration.Name)
	b.WriteString("  }\n}\n")
	return []byte(b.String())
}
