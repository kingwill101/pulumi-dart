package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestEnumLowersSemanticValues(t *testing.T) {
	t.Parallel()

	actual := Enum(schemair.Enum{
		EnumName:       "Mode",
		UnderlyingType: "String",
		Values: []schemair.EnumValue{
			{Name: "enabled", Comment: "Enabled mode.", Literal: `"enabled"`},
		},
	})

	require.Equal(t, "Mode", actual.Name)
	require.Equal(t, "String", actual.UnderlyingType)
	require.Equal(t, "enabled", actual.Values[0].Name)
	require.Equal(t, "Enabled mode.", actual.Values[0].Docs)
	require.Equal(t, `"enabled"`, actual.Values[0].Literal)
}

func TestPackageRegistrationRejectsIncompleteParameters(t *testing.T) {
	t.Parallel()

	require.Nil(t, PackageRegistration(nil))
	require.Nil(t, PackageRegistration(&schemair.Parameterization{PluginName: "provider"}))
}
