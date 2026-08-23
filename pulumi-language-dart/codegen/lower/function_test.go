package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestFunctionsLibraryLowersInvokeMetadata(t *testing.T) {
	t.Parallel()

	actual := FunctionsLibrary([]Invoke{{
		Token:         "example:index:getThing",
		Name:          "getThing",
		ArgsDocsMacro: "example.GetThingArgs",
		Function: schemair.Function{
			Comment:     "Gets a thing.",
			HasArgs:     true,
			ArgsClass:   "GetThingArgs",
			ResultClass: "GetThingResult",
		},
	}}, []dartir.Import{
		{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"},
		{URI: "get_thing_args.dart"},
	}, true)

	require.Len(t, actual.Imports, 2)
	require.Equal(t, "getThing", actual.Functions[0].Name)
	require.Equal(t, "GetThingArgs", actual.Functions[0].ArgsClass)
	require.Equal(t, `'example:index:getThing'`, actual.Functions[0].TokenLiteral)
	require.Equal(t, "example.GetThingArgs", actual.Functions[0].ArgsDocsMacro)
	require.True(t, actual.Functions[0].HasPackageRegistration)
}
