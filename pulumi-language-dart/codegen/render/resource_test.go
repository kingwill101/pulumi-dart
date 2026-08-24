package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/require"
)

func TestResourceConstructors(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name     string
		kind     dartir.ResourceKind
		baseType string
		option   string
		extra    string
	}{
		{name: "provider", kind: dartir.ProviderResource, baseType: "ProviderResource", option: "CustomResourceOptions"},
		{name: "component", kind: dartir.ComponentResource, baseType: "ComponentResource", option: "ComponentResourceOptions", extra: "remote: true"},
		{name: "custom", kind: dartir.CustomResource, baseType: "CustomResource", option: "CustomResourceOptions"},
	}
	for _, test := range tests {
		test := test
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			actual := string(Resource(dartir.ResourceClass{
				Name:         "Widget",
				Kind:         test.kind,
				ArgsClass:    "WidgetArgs",
				ArgsDocs:     "Widget arguments.",
				TokenLiteral: "'example:index:Widget'",
			}))

			require.Contains(t, actual, "class Widget extends pulumi."+test.baseType)
			require.Contains(t, actual, "WidgetArgs? args")
			require.Contains(t, actual, "pulumi."+test.option+"? options")
			if test.extra != "" {
				require.Contains(t, actual, test.extra)
			}
		})
	}
}

func TestResourceRendersOutputsAndAssignments(t *testing.T) {
	t.Parallel()

	actual := string(Resource(dartir.ResourceClass{
		Name:         "Widget",
		Kind:         dartir.CustomResource,
		ArgsDocs:     "Raw arguments.",
		TokenLiteral: "'example:index:Widget'",
		Outputs: []dartir.ResourceOutput{
			{Name: "status", Docs: "Current status.", Type: "String"},
		},
		ConstructorAssignments: []dartir.Assignment{
			{Target: "status", Expression: "registerOutput<String>('status')"},
		},
	}))

	require.Contains(t, actual, "late final pulumi.Output<String> status;")
	require.Contains(t, actual, "Map<String, dynamic>? args")
	require.Contains(t, actual, "status = registerOutput<String>('status');")
}

func TestProviderResourceForwardsPackageRegistration(t *testing.T) {
	t.Parallel()

	actual := string(Resource(dartir.ResourceClass{
		Name:                   "Provider",
		Kind:                   dartir.ProviderResource,
		TokenLiteral:           "'extension'",
		HasPackageRegistration: true,
	}))

	require.Contains(t, actual, "class Provider extends pulumi.ProviderResource")
	require.Contains(t, actual, "registerPackageRequest: package_registration.registerPackageRequest")
}

func TestResourceForwardsSchemaSecretOutputs(t *testing.T) {
	t.Parallel()

	actual := string(Resource(dartir.ResourceClass{
		Name:                           "Widget",
		Kind:                           dartir.CustomResource,
		TokenLiteral:                   "'example:index:Widget'",
		AdditionalSecretOutputLiterals: []string{"'password'", "'token'"},
	}))

	require.Contains(t, actual, "additionalSecretOutputs: const ['password', 'token']")
}

func TestResourceConstructsDefaultArgsWhenOmitted(t *testing.T) {
	t.Parallel()

	actual := string(Resource(dartir.ResourceClass{
		Name:           "Widget",
		Kind:           dartir.CustomResource,
		ArgsClass:      "WidgetArgs",
		HasDefaultArgs: true,
		TokenLiteral:   "'example:index:Widget'",
	}))

	require.Contains(t, actual, "pulumi.Input.mapToInputs((args ?? WidgetArgs()).toMap())")
}
