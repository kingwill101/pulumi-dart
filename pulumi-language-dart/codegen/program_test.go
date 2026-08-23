package codegen

import (
	"testing"

	"github.com/hashicorp/hcl/v2/hclsyntax"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"github.com/zclconf/go-cty/cty"
)

func TestGenerateDartProgramBooleanOutput(t *testing.T) {
	t.Parallel()

	program := &pcl.Program{Nodes: []pcl.Node{
		&pcl.OutputVariable{
			Value: &model.LiteralValueExpression{Value: cty.True},
		},
	}}
	// OutputVariable's names are populated by the PCL binder, so exercise the
	// renderer separately here and leave binding coverage to conformance tests.
	result, err := lowerDartProgramExpression(program.Nodes[0].(*pcl.OutputVariable).Value)
	require.NoError(t, err)
	assert.Equal(t, "true", result)
}

func TestLowerDartProgramExpressionOperators(t *testing.T) {
	t.Parallel()

	expression := &model.BinaryOpExpression{
		LeftOperand:  &model.LiteralValueExpression{Value: cty.NumberIntVal(40)},
		Operation:    hclsyntax.OpAdd,
		RightOperand: &model.LiteralValueExpression{Value: cty.NumberIntVal(2)},
	}
	result, err := lowerDartProgramExpression(expression)
	require.NoError(t, err)
	assert.Equal(t, "(40 + 2)", result)
}

func TestLowerDartProgramInterpolatedTemplate(t *testing.T) {
	t.Parallel()

	expression := &model.TemplateExpression{Parts: []model.Expression{
		&model.LiteralValueExpression{Value: cty.StringVal("answer: ")},
		&model.LiteralValueExpression{Value: cty.NumberIntVal(42)},
	}}
	result, err := lowerDartProgramExpression(expression)
	require.NoError(t, err)
	assert.Equal(t, "'answer: ' + (42).toString()", result)
}
