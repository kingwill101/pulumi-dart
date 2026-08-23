package codegen

import (
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/require"
	"github.com/zclconf/go-cty/cty"
)

func TestSelectProviderUnionTypeMatchesPrimitiveExpression(t *testing.T) {
	t.Parallel()
	union := &schema.UnionType{ElementTypes: []schema.Type{schema.StringType, schema.IntType}}
	expression := &model.LiteralValueExpression{Value: cty.NumberIntVal(42)}

	require.Equal(t, schema.IntType, selectProviderUnionType(expression, union))
}

func TestSelectProviderUnionTypeUsesDiscriminatorMapping(t *testing.T) {
	t.Parallel()
	variantOne := &schema.ObjectType{Token: "example:index:VariantOne"}
	variantTwo := &schema.ObjectType{Token: "example:index:VariantTwo"}
	union := &schema.UnionType{
		ElementTypes:  []schema.Type{variantOne, variantTwo},
		Discriminator: "kind",
		Mapping: map[string]string{
			"one": "#/types/example:index:VariantOne",
			"two": "#/types/example:index:VariantTwo",
		},
	}
	expression := &model.ObjectConsExpression{Items: []model.ObjectConsItem{{
		Key:   &model.LiteralValueExpression{Value: cty.StringVal("kind")},
		Value: &model.LiteralValueExpression{Value: cty.StringVal("two")},
	}}}

	require.Same(t, variantTwo, selectProviderUnionType(expression, union))
}
