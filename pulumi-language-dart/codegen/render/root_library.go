package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func RootLibrary(library dartir.RootLibrary) []byte {
	var b strings.Builder
	b.WriteString("// ignore_for_file: non_constant_identifier_names\n\n")
	for _, module := range library.Modules {
		fmt.Fprintf(&b, "import '%s' as %s;\n", module.ImportURI, module.ImportPrefix)
	}
	if !library.HasGeneratedModules {
		b.WriteString("// No generated modules.\n")
		return []byte(b.String())
	}

	b.WriteString("\n")
	for _, module := range library.Modules {
		fmt.Fprintf(&b, "final %s = %s();\n", module.ObjectName, module.ClassName)
	}
	b.WriteString("\n")
	for _, module := range library.Modules {
		fmt.Fprintf(&b, "class %s {\n  %s();\n", module.ClassName, module.ClassName)
		for _, symbol := range module.Symbols {
			fmt.Fprintf(&b, "  final %s = %s;\n", symbol.Name, symbol.Expression)
		}
		b.WriteString("}\n\n")
	}

	result := b.String()
	if strings.HasSuffix(result, "\n\n") {
		result = strings.TrimSuffix(result, "\n")
	}
	return []byte(result)
}
