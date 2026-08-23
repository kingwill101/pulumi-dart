package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestEnumLowersSemanticValues(t *testing.T) {
	t.Parallel()

	actual := string(Enum(schemair.Enum{
		EnumName:       "Mode",
		UnderlyingType: "String",
		Values: []schemair.EnumValue{
			{Name: "enabled", Comment: "Enabled mode.", Literal: `"enabled"`},
		},
	}))

	require.Contains(t, actual, "enum Mode")
	require.Contains(t, actual, "/// Enabled mode.")
	require.Contains(t, actual, `enabled("enabled");`)
}

func TestPackageRegistrationRejectsIncompleteParameters(t *testing.T) {
	t.Parallel()

	require.Nil(t, PackageRegistration(nil))
	require.Nil(t, PackageRegistration(&schemair.Parameterization{PluginName: "provider"}))
}
