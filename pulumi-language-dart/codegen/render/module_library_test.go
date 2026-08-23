package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/require"
)

func TestModuleLibrary(t *testing.T) {
	t.Parallel()

	actual := string(ModuleLibrary(dartir.ModuleLibrary{
		Imports: []string{"functions.dart"},
		Exports: []string{"index/widget.dart"},
		Aliases: []dartir.ModuleAlias{{Name: "getWidget", Expression: "getWidgetRaw"}},
	}))

	require.Equal(t, "import 'functions.dart';\n\nexport 'index/widget.dart';\n\nfinal getWidget = getWidgetRaw;\n", actual)
}
