package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func lowerDartProgramExpression(expression model.Expression) (string, error) {
	return (programLowerer{names: map[string]string{}, usedNames: map[string]int{}}).expression(expression)
}

func (lowerer programLowerer) expression(expression model.Expression) (string, error) {
	switch expression := expression.(type) {
	case *model.LiteralValueExpression:
		return lowerDartLiteral(expression.Value)
	case *model.TemplateExpression:
		return lowerer.templateExpression(expression)
	case *model.TupleConsExpression:
		items := make([]string, len(expression.Expressions))
		for index, item := range expression.Expressions {
			lowered, err := lowerer.expression(item)
			if err != nil {
				return "", err
			}
			items[index] = lowered
		}
		return "[" + strings.Join(items, ", ") + "]", nil
	case *model.ObjectConsExpression:
		items := make([]string, len(expression.Items))
		for index, item := range expression.Items {
			key, err := lowerer.expression(item.Key)
			if err != nil {
				return "", fmt.Errorf("object key: %w", err)
			}
			value, err := lowerer.expression(item.Value)
			if err != nil {
				return "", fmt.Errorf("object value: %w", err)
			}
			items[index] = key + ": " + value
		}
		return "{" + strings.Join(items, ", ") + "}", nil
	case *model.UnaryOpExpression:
		return lowerer.unaryExpression(expression)
	case *model.BinaryOpExpression:
		return lowerer.binaryExpression(expression)
	case *model.FunctionCallExpression:
		return lowerer.functionCallExpression(expression)
	case *model.IndexExpression:
		return lowerer.indexExpression(expression)
	case *model.RelativeTraversalExpression:
		return lowerer.relativeTraversalExpression(expression)
	case *model.ConditionalExpression:
		return lowerer.conditionalExpression(expression)
	case *model.ForExpression:
		return lowerer.forExpression(expression)
	case *model.ScopeTraversalExpression:
		return lowerer.scopeTraversalExpression(expression)
	default:
		return "", fmt.Errorf("unsupported expression %T", expression)
	}
}
