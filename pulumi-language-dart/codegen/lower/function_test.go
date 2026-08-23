package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestFunctionsLibraryLowersInvokeMetadata(t *testing.T) {
	t.Parallel()

	actual := string(FunctionsLibrary([]Invoke{{
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
	}, true))

	require.Contains(t, actual, "Future<GetThingResult> getThing(")
	require.Contains(t, actual, "GetThingArgs args")
	require.Contains(t, actual, "'example:index:getThing'")
	require.Contains(t, actual, "{@macro example.GetThingArgs}")
	require.Contains(t, actual, "registerPackageRequest: package_registration.registerPackageRequest")
}
