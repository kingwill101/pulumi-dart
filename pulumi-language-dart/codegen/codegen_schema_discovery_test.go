package codegen

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestDiscoverRawSchemaReservesStableTypeAndResourceNames(t *testing.T) {
	t.Parallel()

	discovery := discoverRawSchema(rawPackageSchema{
		Name: "example",
		Types: map[string]rawTypeSpec{
			"example:index:Mode": {
				Type: "string",
				Enum: []rawEnumValueSpec{{Name: "On", Value: "on"}},
			},
			"example:index:Settings": {
				Type:       "object",
				Properties: map[string]rawPropertyTypeSpec{"enabled": {Type: "boolean"}},
			},
		},
		Resources: map[string]rawResourceSpec{
			"example:index:Widget": {},
		},
	})

	require.Equal(t, []string{"example:index:Mode", "example:index:Settings"}, discovery.typeTokens)
	require.Equal(t, []string{"example:index:Widget"}, discovery.resourceTokens)
	require.Equal(t, "enum", discovery.namedTypeRefs["example:index:Mode"].Kind)
	require.Equal(t, "Settings", discovery.namedTypeRefs["example:index:Settings"].Name)
	require.Equal(t, "resource", discovery.namedTypeRefs["example:index:Widget"].Kind)
}

func TestNormalizedRawResourcesAddsDefaultProvider(t *testing.T) {
	t.Parallel()

	resources := normalizedRawResources(rawPackageSchema{
		Name: "example",
		Provider: &rawResourceSpec{
			RequiredInputs: []string{"region"},
		},
	})

	provider, ok := resources["pulumi:providers:example"]
	require.True(t, ok)
	require.True(t, provider.IsProvider)
	require.Equal(t, []string{"region"}, provider.RequiredInputs)
}
