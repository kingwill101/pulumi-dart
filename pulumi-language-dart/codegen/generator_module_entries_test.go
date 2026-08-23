package codegen

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestModuleLibraryPathForSymbolFile(t *testing.T) {
	t.Parallel()

	require.Equal(t, "index.dart", moduleLibraryPathForSymbolFile("index/widget.dart"))
	require.Equal(t, "network.dart", moduleLibraryPathForSymbolFile("network/rule.dart"))
	require.Equal(t, "index.dart", moduleLibraryPathForSymbolFile("widget.dart"))
}

func TestGeneratedAliasedModuleLibraryFileOnlyEmitsFunctionAliases(t *testing.T) {
	t.Parallel()

	actual := string(generatedAliasedModuleLibraryFile("index.dart", []byte("export 'index/widget.dart';\n"), []moduleAliasSpec{
		{Kind: "function", CanonicalName: "getWidget", GeneratedName: "getWidgetRaw", ImportPath: "functions.dart"},
		{Kind: "type", CanonicalName: "Widget", GeneratedName: "WidgetRaw", ImportPath: "widget.dart"},
	}))

	require.Contains(t, actual, "import 'functions.dart';")
	require.Contains(t, actual, "export 'index/widget.dart';")
	require.Contains(t, actual, "final getWidget = getWidgetRaw;")
	require.NotContains(t, actual, "final Widget =")
}

func TestGeneratedModuleLibraryFiles(t *testing.T) {
	t.Parallel()

	files := generatedModuleLibraryFiles([]string{
		"index/widget.dart",
		"index/functions.dart",
		"providers/provider.dart",
	})

	require.Equal(t, "export 'index/functions.dart';\nexport 'index/widget.dart';\n", string(files["index.dart"]))
	require.Equal(t, "export 'providers/provider.dart';\n", string(files["providers.dart"]))
}

func TestGeneratedPublicModuleEntryPoints(t *testing.T) {
	t.Parallel()

	entryPoints := generatedPublicModuleEntryPoints("pulumi_sample", map[string][]byte{
		"index.dart":         {},
		"providers.dart":     {},
		"config/config.dart": {},
		"internal/foo.dart":  {},
	})

	require.Equal(t, "export 'package:pulumi_sample/src/index.dart';\n", string(entryPoints["index.dart"]))
	require.Contains(t, entryPoints, "providers.dart")
	require.NotContains(t, entryPoints, "config.dart")
}
