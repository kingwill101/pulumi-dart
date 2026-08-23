package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestDecodeExpressionForNestedObjectCollection(t *testing.T) {
	t.Parallel()

	element := schemair.Type{
		Kind:          "object",
		DartType:      "Widget",
		ReferenceType: "Widget",
	}
	typeSpec := schemair.Type{
		Kind:        "array",
		DartType:    "List<Widget>",
		ElementType: &element,
	}

	require.Equal(t,
		"pulumi.Input.decodeList<Widget>(raw, (value) => Widget.fromMap((value as Map).cast<String, dynamic>()))",
		DecodeExpression(typeSpec, "raw"),
	)
	require.True(t, NeedsDecodeListHelper(typeSpec))
}

func TestDecodeExpressionNormalizesWireNumbers(t *testing.T) {
	t.Parallel()

	require.Equal(t, "(raw as num).toInt()", DecodeExpression(schemair.Type{Kind: "scalar", DartType: "int"}, "raw"))
	require.Equal(t, "(raw as num).toDouble()", DecodeExpression(schemair.Type{Kind: "scalar", DartType: "double"}, "raw"))
}

func TestObjectPropertyTypeWrapsInputs(t *testing.T) {
	t.Parallel()

	property := schemair.Property{
		Required: true,
		TypeSpec: schemair.Type{Kind: "scalar", DartType: "String"},
	}

	require.Equal(t, "pulumi.Input<String>", ObjectPropertyType(schemair.ObjectClass{UsesInputTypes: true}, property))
	property.Required = false
	require.Equal(t, "pulumi.Input<String?>?", ObjectPropertyType(schemair.ObjectClass{UsesInputTypes: true}, property))
}

func TestConfigPropertyParseExpression(t *testing.T) {
	t.Parallel()

	property := schemair.Property{
		TypeSpec: schemair.Type{Kind: "scalar", DartType: "int"},
	}

	require.Equal(t, "(raw).toInt()", ConfigPropertyParseExpression(property, "raw"))
}

func TestResourceRegisterOutputExpressionUsesDecoder(t *testing.T) {
	t.Parallel()

	property := schemair.Property{
		Name:     "widget",
		Required: true,
		TypeSpec: schemair.Type{
			Kind:          "object",
			DartType:      "Widget",
			ReferenceType: "Widget",
		},
	}

	actual := ResourceRegisterOutputExpression(property)
	require.Contains(t, actual, "registerOutput<Widget>('widget', decoder:")
	require.Contains(t, actual, "Widget.fromMap")
}

func TestResourceRegisterOutputExpressionPreservesSchemaSecret(t *testing.T) {
	t.Parallel()

	property := schemair.Property{
		Name:     "password",
		Secret:   true,
		Required: true,
		TypeSpec: schemair.Type{Kind: "scalar", DartType: "String"},
	}

	require.Equal(t,
		"registerOutput<String>('password', isSecret: true)",
		ResourceRegisterOutputExpression(property),
	)
}

func TestRegisterOutputAssignmentTargetAvoidsConstructorShadowing(t *testing.T) {
	t.Parallel()

	require.Equal(t, "this.name", RegisterOutputAssignmentTarget("name", "name", "args", "options"))
	require.Equal(t, "this.options", RegisterOutputAssignmentTarget("options", "name", "args", "options"))
	require.Equal(t, "state", RegisterOutputAssignmentTarget("state", "name", "args", "options"))
	require.Equal(t, "this.state", RegisterOutputAssignmentTarget("state", "name", "state", "options"))
}

func TestConfigTypeRequiresJSONDecode(t *testing.T) {
	t.Parallel()

	require.True(t, ConfigTypeRequiresJSONDecode(schemair.Type{Kind: "array"}))
	require.True(t, ConfigTypeRequiresJSONDecode(schemair.Type{Kind: "map"}))
	require.True(t, ConfigTypeRequiresJSONDecode(schemair.Type{Kind: "object"}))
	require.False(t, ConfigTypeRequiresJSONDecode(schemair.Type{Kind: "string"}))
}
