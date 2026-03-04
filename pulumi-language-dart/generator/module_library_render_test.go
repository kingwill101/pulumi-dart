package generator

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestModuleLibraryPathForSymbolFile(t *testing.T) {
	t.Parallel()

	assert.Equal(t, "index.dart", ModuleLibraryPathForSymbolFile("index/widget.dart"))
	assert.Equal(t, "network.dart", ModuleLibraryPathForSymbolFile("network/rule.dart"))
	assert.Equal(t, "index.dart", ModuleLibraryPathForSymbolFile("widget.dart"))
	assert.Equal(t, "", ModuleLibraryPathForSymbolFile(""))
}

func TestGeneratedAliasedModuleLibraryFile_FunctionAliasesOnly(t *testing.T) {
	t.Parallel()

	base := []byte("export 'index/widget.dart';\n")
	aliases := []AliasSpec{
		{
			Kind:          "function",
			CanonicalName: "getWidget",
			GeneratedName: "getWidget",
			ImportPath:    "functions.dart",
		},
		{
			Kind:          "function",
			CanonicalName: "getWidgetDetails",
			GeneratedName: "getWidgetDetailsRaw",
			ImportPath:    "functions.dart",
		},
		{
			Kind:          "type",
			CanonicalName: "WidgetArgs",
			GeneratedName: "WidgetArgsGenerated",
			ImportPath:    "widget_args.dart",
		},
	}

	got := string(GeneratedAliasedModuleLibraryFile("index.dart", base, aliases))

	assert.Contains(t, got, "import 'functions.dart';")
	assert.NotContains(t, got, "import 'widget_args.dart';")
	assert.Contains(t, got, "export 'index/widget.dart';")
	assert.Contains(t, got, "final getWidgetDetails = getWidgetDetailsRaw;")
	assert.NotContains(t, got, "final WidgetArgs")
}

func TestGeneratedModuleLibraryFiles_GroupsByTopLevelModule(t *testing.T) {
	t.Parallel()

	symbolPaths := []string{
		"index/widget.dart",
		"index/functions.dart",
		"providers/provider.dart",
	}

	files := GeneratedModuleLibraryFiles(symbolPaths)

	assert.Contains(t, files, "index.dart")
	assert.Contains(t, files, "providers.dart")
	assert.NotContains(t, string(files["index.dart"]), "library module_index;\n")
	assert.Contains(t, string(files["index.dart"]), "export 'index/functions.dart';")
	assert.Contains(t, string(files["index.dart"]), "export 'index/widget.dart';")
	assert.Equal(t, "export 'providers/provider.dart';\n", string(files["providers.dart"]))
}
