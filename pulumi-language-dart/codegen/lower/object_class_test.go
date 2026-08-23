package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestObjectClassLowersPropertiesAndMappings(t *testing.T) {
	t.Parallel()

	actual := string(ObjectClass(schemair.ObjectClass{
		ClassName:      "WidgetArgs",
		Comment:        "Arguments for a widget.",
		UsesInputTypes: true,
		Properties: []schemair.Property{
			{
				Name:      "displayName",
				FieldName: "displayName",
				Comment:   "Displayed <name>.",
				Required:  true,
				TypeSpec:  schemair.Type{Kind: "scalar", DartType: "String"},
			},
		},
	}, nil, "widget_args"))

	require.Contains(t, actual, "/// {@template widget_args}")
	require.Contains(t, actual, "final pulumi.Input<String> displayName;")
	require.Contains(t, actual, "/// [displayName] Displayed &lt;name&gt;.")
	require.Contains(t, actual, "'displayName': displayName")
}
