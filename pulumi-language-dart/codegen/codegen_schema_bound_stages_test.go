package codegen

import (
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/require"
)

func TestBoundSchemaLoweringStages(t *testing.T) {
	t.Parallel()

	enumType := &schema.EnumType{
		Token:       "example:index:Mode",
		ElementType: schema.StringType,
		Elements:    []*schema.Enum{{Name: "On", Value: "on"}},
	}
	resource := &schema.Resource{Token: "example:index:Widget"}
	function := &schema.Function{Token: "example:index:getWidget"}
	pkg := &schema.Package{
		Name:      "example",
		Config:    []*schema.Property{{Name: "region", Type: schema.StringType}},
		Resources: []*schema.Resource{resource},
		Functions: []*schema.Function{function},
	}
	spec := &packageSchema{
		Resources: map[string]packageResourceSpec{},
		Functions: map[string]packageFunctionSpec{},
	}
	usedNames := map[string]map[string]int{}
	namedTypes := map[string]packageNamedTypeRef{
		enumType.Token: {
			Kind:             "enum",
			Name:             "Mode",
			CanonicalName:    "Mode",
			UnderlyingType:   "String",
			UseReferenceType: true,
		},
	}

	lowerBoundDeclarations(spec, pkg, namedTypes, []string{enumType.Token}, map[string]schema.Type{
		enumType.Token: enumType,
	})
	lowerBoundConfig(spec, pkg, usedNames, namedTypes)
	lowerBoundResources(spec, pkg, usedNames, namedTypes, []string{resource.Token}, map[string]*schema.Resource{
		resource.Token: resource,
	})
	lowerBoundFunctions(spec, pkg, usedNames, namedTypes)

	require.Len(t, spec.Enums, 1)
	require.NotNil(t, spec.Config)
	require.Contains(t, spec.Resources, resource.Token)
	require.Contains(t, spec.Functions, function.Token)
}
