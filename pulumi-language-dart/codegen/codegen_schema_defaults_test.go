package codegen

import (
	"encoding/json"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/require"
)

func TestSchemaDefaultInputExpression(t *testing.T) {
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
			actual := schemaDefaultInputExpression(&schema.DefaultValue{Value: test.value})
			require.Equal(t, test.expected, actual)
		})
	}
}

func TestSchemaDefaultInputExpressionRejectsUnsupportedValues(t *testing.T) {
	t.Parallel()

	require.Empty(t, schemaDefaultInputExpression(&schema.DefaultValue{Value: []string{"unsupported"}}))
}
