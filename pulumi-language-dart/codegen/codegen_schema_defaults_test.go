package codegen

import (
	"encoding/json"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/require"
)

func TestSchemaDefaultExpression(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name     string
		value    any
		expected string
	}{
		{name: "boolean", value: false, expected: "pulumi.Input.fromValue(false)"},
		{name: "integer", value: json.Number("42"), expected: "pulumi.Input.fromValue(42)"},
		{name: "number", value: 3.14, expected: "pulumi.Input.fromValue(3.14)"},
		{name: "string", value: "it's Dart", expected: "pulumi.Input.fromValue('it\\'s Dart')"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			actual := schemaDefaultExpression(&schema.DefaultValue{Value: test.value}, packageTypeSpec{}, true)
			require.Equal(t, test.expected, actual)
		})
	}
}

func TestSchemaDefaultExpressionRejectsUnsupportedValues(t *testing.T) {
	t.Parallel()

	require.Empty(t, schemaDefaultExpression(&schema.DefaultValue{Value: []string{"unsupported"}}, packageTypeSpec{}, true))
}

func TestSchemaDefaultExpressionUsesPlainAndEnumTypes(t *testing.T) {
	t.Parallel()

	value := &schema.DefaultValue{Value: "primary"}
	enumType := packageTypeSpec{Kind: "enum", ReferenceType: "KeyType"}
	require.Equal(t, "KeyType.fromValue('primary')", schemaDefaultExpression(value, enumType, false))
	require.Equal(t, "pulumi.Input.fromValue(KeyType.fromValue('primary'))", schemaDefaultExpression(value, enumType, true))
}
