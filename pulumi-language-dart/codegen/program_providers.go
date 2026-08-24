package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func (lowerer programLowerer) providersExpression(expression model.Expression) (string, error) {
	var expressions []model.Expression
	switch expression := expression.(type) {
	case *model.TupleConsExpression:
		expressions = expression.Expressions
	case *model.ObjectConsExpression:
		expressions = make([]model.Expression, len(expression.Items))
		for index, item := range expression.Items {
			expressions[index] = item.Value
		}
	default:
		return "", fmt.Errorf("providers must be a list or map, got %T", expression)
	}
	values := make([]string, len(expressions))
	for index, expression := range expressions {
		value, err := lowerer.expression(expression)
		if err != nil {
			return "", fmt.Errorf("provider %d: %w", index, err)
		}
		values[index] = value
	}
	return "[" + strings.Join(values, ", ") + "]", nil
}
