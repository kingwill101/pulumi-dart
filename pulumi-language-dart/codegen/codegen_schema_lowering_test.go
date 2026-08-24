package codegen

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestRawSchemaLoweringStages(t *testing.T) {
	t.Parallel()

	rawSpec := rawPackageSchema{
		Name: "example",
		Types: map[string]rawTypeSpec{
			"example:index:Mode": {
				Type: "string",
				Enum: []rawEnumValueSpec{{Name: "On", Value: "on"}},
			},
		},
		Resources: map[string]rawResourceSpec{
			"example:index:Widget": {
				InputProperties: map[string]rawPropertyTypeSpec{
					"name": {Type: "string"},
				},
			},
		},
		Functions: map[string]rawFunctionSpec{
			"example:index:getWidget": {
				MultiArgumentInputs: []string{"name"},
				ReturnType: &rawPropertyTypeSpec{
					Type: "array", Items: &rawPropertyTypeSpec{Type: "boolean"},
				},
				Inputs: &rawObjectSpec{
					Properties: map[string]rawPropertyTypeSpec{"name": {Type: "string"}},
				},
			},
		},
	}
	discovery := discoverRawSchema(rawSpec)
	spec := &packageSchema{
		Resources: map[string]packageResourceSpec{},
		Functions: map[string]packageFunctionSpec{},
	}

	lowerRawTypeDeclarationsAndConfig(spec, rawSpec, discovery, nil)
	lowerRawResources(spec, rawSpec, discovery, nil)
	lowerRawFunctions(spec, rawSpec, discovery, nil)

	require.Len(t, spec.Enums, 1)
	require.Contains(t, spec.Resources, "example:index:Widget")
	require.NotEmpty(t, spec.Resources["example:index:Widget"].ArgsClass)
	require.Contains(t, spec.Functions, "example:index:getWidget")
	require.True(t, spec.Functions["example:index:getWidget"].HasArgs)
	require.True(t, spec.Functions["example:index:getWidget"].MultiArgumentInputs)
	require.Equal(t, "name", spec.Functions["example:index:getWidget"].Parameters[0].Name)
	require.Equal(t, "List<bool>", spec.Functions["example:index:getWidget"].ReturnType.DartType)
}
