package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestResourceLibraryLowersOutputsMethodsAndGet(t *testing.T) {
	t.Parallel()

	actual := string(ResourceLibrary(Resource{
		Token:             "example:index:Thing",
		RegistrationToken: "example:index:Thing",
		ClassName:         "Thing",
		Kind:              dartir.CustomResource,
		ArgsDocs:          "Arguments for Thing.",
		Imports: []dartir.Import{
			{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"},
		},
		Methods: []ResourceMethod{{
			Name:          "lookup",
			ArgsDocsMacro: "example.LookupArgs",
			Method: schemair.ResourceMethod{
				Token:       "example:index:Thing/lookup",
				Comment:     "Looks up a value.",
				ArgsClass:   "LookupArgs",
				ResultClass: "LookupResult",
				HasReturn:   true,
			},
		}},
		HasPackageRegistration: true,
		Schema: schemair.Resource{
			Comment:    "A thing resource.",
			StateClass: "ThingState",
			ArgsClass:  "ThingArgs",
			OutputProperties: []schemair.Property{{
				Name:      "value",
				FieldName: "value",
				Comment:   "The value.",
				TypeSpec:  schemair.Type{Kind: "scalar", DartType: "String"},
			}},
		},
	}))

	require.Contains(t, actual, "class Thing extends pulumi.CustomResource")
	require.Contains(t, actual, "late final pulumi.Output<String?> value;")
	require.Contains(t, actual, "Future<LookupResult> lookup")
	require.Contains(t, actual, "'example:index:Thing/lookup'")
	require.Contains(t, actual, "static Thing get(")
	require.Contains(t, actual, "registerPackageRequest: package_registration.registerPackageRequest")
}
