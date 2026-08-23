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

func TestObjectPropertyTypeWrapsInputs(t *testing.T) {
	t.Parallel()

	property := schemair.Property{
		Required: true,
		TypeSpec: schemair.Type{Kind: "scalar", DartType: "String"},
	}

	require.Equal(t, "pulumi.Input<String>", ObjectPropertyType(schemair.ObjectClass{UsesInputTypes: true}, property))
}
