package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestObjectClassLowersPropertiesAndMappings(t *testing.T) {
	t.Parallel()

	actual := ObjectClass(schemair.ObjectClass{
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
	}, nil, "widget_args")

	require.Equal(t, "WidgetArgs", actual.Name)
	require.Equal(t, "widget_args", actual.DocsMacro)
	require.Equal(t, "pulumi.Input<String>", actual.Properties[0].FieldType)
	require.Equal(t, "Displayed <name>.", actual.Properties[0].Docs)
	require.Equal(t, "displayName", actual.Properties[0].ToMapExpression)
}

func TestObjectClassAllowsPartialInvokeResults(t *testing.T) {
	t.Parallel()

	actual := ObjectClass(schemair.ObjectClass{
		ClassName:              "Result",
		AllowMissingProperties: true,
		Properties: []schemair.Property{{
			Name: "value", FieldName: "value", Required: true,
			TypeSpec: schemair.Type{Kind: "scalar", DartType: "String"},
		}},
	}, nil, "")

	require.False(t, actual.Properties[0].Required)
	require.Equal(t, "String?", actual.Properties[0].FieldType)
	require.Contains(t, actual.Properties[0].FromMapExpression, "guardedValue")
}
