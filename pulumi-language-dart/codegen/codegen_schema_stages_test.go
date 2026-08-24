package codegen

import (
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/require"
)

func TestDartTypeSpecFromSchemaTypeUnwrapsInputAndOptionalTypes(t *testing.T) {
	t.Parallel()

	typeSpec := dartTypeSpecFromSchemaType(
		&schema.InputType{ElementType: &schema.OptionalType{ElementType: schema.StringType}},
		nil,
		false,
		"example",
	)

	require.Equal(t, packageTypeSpec{Kind: "scalar", DartType: "String"}, typeSpec)
}

func TestDartTypeSpecFromSchemaTypeUsesDynamicForHeterogeneousUnion(t *testing.T) {
	t.Parallel()

	typeSpec := dartTypeSpecFromSchemaType(&schema.UnionType{
		ElementTypes: []schema.Type{schema.StringType, schema.IntType},
	}, nil, false, "example")

	require.Equal(t, packageTypeSpec{Kind: "dynamic", DartType: "dynamic"}, typeSpec)
}

func TestDartTypeSpecFromSchemaTypePreservesHomogeneousUnion(t *testing.T) {
	t.Parallel()

	typeSpec := dartTypeSpecFromSchemaType(&schema.UnionType{
		ElementTypes: []schema.Type{schema.StringType, schema.StringType},
	}, nil, false, "example")

	require.Equal(t, packageTypeSpec{Kind: "scalar", DartType: "String"}, typeSpec)
}

func TestCoerceOutputCollectionTypePreservesScalarArrays(t *testing.T) {
	t.Parallel()

	element := packageTypeSpec{Kind: "scalar", DartType: "String"}
	input := packageTypeSpec{Kind: "array", DartType: "List<String>", ElementType: &element}

	require.Equal(t, input, coerceOutputCollectionType(input))
}

func TestMakeSchemaEnumSpec(t *testing.T) {
	t.Parallel()

	spec := makeSchemaEnumSpec("Color", "paint", &schema.EnumType{
		Comment:     "Available colors.",
		ElementType: schema.StringType,
		Elements: []*schema.Enum{
			{Name: "Bright Red", Value: "red"},
		},
	}, "example")

	require.NotNil(t, spec)
	require.Equal(t, "Color", spec.EnumName)
	require.Equal(t, "String", spec.UnderlyingType)
	require.Equal(t, []packageEnumValueSpec{{Name: "brightRed", Literal: `"red"`}}, spec.Values)
}

func TestMakeSchemaEnumSpecAcceptsBoundIntegerValues(t *testing.T) {
	spec := makeSchemaEnumSpec("Permission", "index", &schema.EnumType{
		ElementType: schema.IntType,
		Elements: []*schema.Enum{
			{Name: "Read", Value: int32(101)},
			{Name: "Edit", Value: int32(102)},
		},
	}, "sample")

	require.NotNil(t, spec)
	require.Equal(t, "int", spec.UnderlyingType)
	require.Equal(t, []packageEnumValueSpec{
		{Name: "read", Literal: "101"},
		{Name: "edit", Literal: "102"},
	}, spec.Values)
}
