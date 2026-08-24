package codegen

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestGeneratedPackageRootLibrary_EmitsModuleNamespaces(t *testing.T) {
	t.Parallel()

	spec := &packageSchema{
		Enums: []packageEnumSpec{
			{
				EnumName:      "WidgetMode",
				CanonicalName: "WidgetMode",
				ModulePath:    "index",
			},
		},
	}
	moduleSymbols := map[string][]moduleAliasSpec{
		"index.dart": {
			{Kind: "type", CanonicalName: "Widget", GeneratedName: "Widget"},
			{Kind: "type", CanonicalName: "WidgetMode", GeneratedName: "WidgetMode"},
			{Kind: "function", CanonicalName: "getWidget", GeneratedName: "getWidget"},
		},
	}

	content := string(generatedPackageRootLibrary("pulumi_sample", spec, moduleSymbols))

	assert.NotContains(t, content, "library pulumi_sample;")
	assert.Contains(t, content, "import 'package:pulumi_sample/index.dart' as module_index;")
	assert.Contains(t, content, "final index = _IndexModuleNamespace();")
	assert.Contains(t, content, "final Widget = module_index.Widget.new;")
	assert.Contains(t, content, "final WidgetMode = module_index.WidgetMode.values;")
	assert.Contains(t, content, "final getWidget = module_index.getWidget;")
}
