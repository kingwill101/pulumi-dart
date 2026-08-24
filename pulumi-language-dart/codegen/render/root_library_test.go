package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/require"
)

func TestRootLibrary(t *testing.T) {
	t.Parallel()

	actual := string(RootLibrary(dartir.RootLibrary{
		HasGeneratedModules: true,
		Modules: []dartir.ModuleNamespace{
			{
				ImportURI:    "package:pulumi_example/index.dart",
				ImportPrefix: "module_index",
				ObjectName:   "index",
				ClassName:    "_IndexModuleNamespace",
				Symbols: []dartir.NamespaceSymbol{
					{Name: "Widget", Expression: "module_index.Widget.new"},
					{Name: "getWidget", Expression: "module_index.getWidget"},
				},
			},
		},
	}))

	require.Contains(t, actual, "import 'package:pulumi_example/index.dart' as module_index;")
	require.Contains(t, actual, "final index = _IndexModuleNamespace();")
	require.Contains(t, actual, "final Widget = module_index.Widget.new;")
	require.Contains(t, actual, "final getWidget = module_index.getWidget;")
}

func TestRootLibraryWithoutModules(t *testing.T) {
	t.Parallel()

	actual := string(RootLibrary(dartir.RootLibrary{}))

	require.Contains(t, actual, "// No generated modules.")
}
