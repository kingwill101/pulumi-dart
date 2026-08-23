package codegen

import (
	"fmt"
	"strings"

	"github.com/hashicorp/hcl/v2/hclsyntax"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/zclconf/go-cty/cty"
)

func lowerDartProgram(program *pcl.Program) (dartProgram, error) {
	result := dartProgram{}
	for _, node := range program.Nodes {
		output, ok := node.(*pcl.OutputVariable)
		if !ok {
			continue
		}
		expression, err := lowerDartProgramExpression(output.Value)
		if err != nil {
			return dartProgram{}, fmt.Errorf("output %q: %w", output.LogicalName(), err)
		}
		result.Outputs = append(result.Outputs, dartProgramOutput{
			Name:       output.LogicalName(),
			Expression: expression,
		})
	}
	return result, nil
}

func lowerDartProgramExpression(expression model.Expression) (string, error) {
	switch expression := expression.(type) {
	case *model.LiteralValueExpression:
		return lowerDartLiteral(expression.Value)
	case *model.TemplateExpression:
		var value strings.Builder
		for _, part := range expression.Parts {
			literal, ok := part.(*model.LiteralValueExpression)
			if !ok || literal.Value.Type() != cty.String {
				return "", fmt.Errorf("unsupported template part %T", part)
			}
			value.WriteString(literal.Value.AsString())
		}
		return dartStringLiteral(value.String()), nil
	case *model.TupleConsExpression:
		items := make([]string, len(expression.Expressions))
		for index, item := range expression.Expressions {
			lowered, err := lowerDartProgramExpression(item)
			if err != nil {
				return "", err
			}
			items[index] = lowered
		}
		return "[" + strings.Join(items, ", ") + "]", nil
	case *model.ObjectConsExpression:
		items := make([]string, len(expression.Items))
		for index, item := range expression.Items {
			key, err := lowerDartProgramExpression(item.Key)
			if err != nil {
				return "", fmt.Errorf("object key: %w", err)
			}
			value, err := lowerDartProgramExpression(item.Value)
			if err != nil {
				return "", fmt.Errorf("object value: %w", err)
			}
			items[index] = key + ": " + value
		}
		return "{" + strings.Join(items, ", ") + "}", nil
	case *model.UnaryOpExpression:
		if expression.Operation != hclsyntax.OpNegate {
			return "", fmt.Errorf("unsupported unary operation")
		}
		operand, err := lowerDartProgramExpression(expression.Operand)
		if err != nil {
			return "", err
		}
		return "-" + operand, nil
	default:
		return "", fmt.Errorf("unsupported expression %T", expression)
	}
}

func lowerDartLiteral(value cty.Value) (string, error) {
	if value.IsNull() {
		return "null", nil
	}
	switch value.Type() {
	case cty.Bool:
		return fmt.Sprintf("%t", value.True()), nil
	case cty.String:
		return dartStringLiteral(value.AsString()), nil
	case cty.Number:
		return value.AsBigFloat().Text('g', -1), nil
	}
	return "", fmt.Errorf("unsupported literal type %s", value.Type().FriendlyName())
}
