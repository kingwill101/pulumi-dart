package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) providerArrayExpression(
	pkg string, expression model.Expression, elementType schema.Type,
) (string, error) {
	tuple, ok := expression.(*model.TupleConsExpression)
	if !ok {
		return lowerer.expression(expression)
	}
	items := make([]string, len(tuple.Expressions))
	for index, item := range tuple.Expressions {
		value, err := lowerer.typedProviderExpression(pkg, item, elementType)
		if err != nil {
			return "", err
		}
		items[index] = value
	}
	return "[" + strings.Join(items, ", ") + "]", nil
}

func (lowerer programLowerer) providerMapExpression(
	pkg string, expression model.Expression, elementType schema.Type,
) (string, error) {
	object, ok := expression.(*model.ObjectConsExpression)
	if !ok {
		return lowerer.expression(expression)
	}
	items := make([]string, len(object.Items))
	for index, item := range object.Items {
		key, err := lowerer.expression(item.Key)
		if err != nil {
			return "", fmt.Errorf("map key: %w", err)
		}
		value, err := lowerer.typedProviderExpression(pkg, item.Value, elementType)
		if err != nil {
			return "", fmt.Errorf("map value: %w", err)
		}
		items[index] = key + ": " + value
	}
	return "{" + strings.Join(items, ", ") + "}", nil
}
