package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func ModuleLibrary(library dartir.ModuleLibrary) []byte {
	var b strings.Builder
	for _, importPath := range library.Imports {
		fmt.Fprintf(&b, "import '%s';\n", importPath)
	}
	if len(library.Imports) > 0 {
		b.WriteString("\n")
	}
	for _, exportPath := range library.Exports {
		fmt.Fprintf(&b, "export '%s';\n", exportPath)
	}
	if len(library.Exports) == 0 {
		b.WriteString("// No symbols generated for this module directory.\n")
	}
	if len(library.Aliases) > 0 {
		b.WriteString("\n")
		for _, alias := range library.Aliases {
			fmt.Fprintf(&b, "final %s = %s;\n", alias.Name, alias.Expression)
		}
	}
	return []byte(b.String())
}
