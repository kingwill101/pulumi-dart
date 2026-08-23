package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestResourceClassLowersOutputsMethodsAndGet(t *testing.T) {
	t.Parallel()

	actual := ResourceClass(Resource{
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
	})

	require.Equal(t, "Thing", actual.Name)
	require.Equal(t, dartir.CustomResource, actual.Kind)
	require.Equal(t, "String?", actual.Outputs[0].Type)
	require.Equal(t, "lookup", actual.Members.Methods[0].Name)
	require.Equal(t, `'example:index:Thing/lookup'`, actual.Members.Methods[0].TokenLiteral)
	require.NotNil(t, actual.Members.Get)
	require.True(t, actual.HasPackageRegistration)
}
