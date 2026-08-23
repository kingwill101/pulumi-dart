package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) providerArrayExpression(
	pkg string, expression model.Expression, elementType schema.Type, nullable bool,
) (string, error) {
	tuple, ok := expression.(*model.TupleConsExpression)
	if !ok {
		value, err := lowerer.expression(expression)
		if err != nil || !model.ContainsOutputs(expression.Type()) {
			return value, err
		}
		element := providerSchemaValueDartType(elementType)
		if nullable {
			return fmt.Sprintf("pulumi.output(%s).apply<List<%s>?>((value) => value == null ? null : (value as List).cast<%s>())", value, element, element), nil
		}
		return fmt.Sprintf("pulumi.output(%s).apply<List<%s>>((value) => (value as List).cast<%s>())", value, element, element), nil
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
	pkg string, expression model.Expression, elementType schema.Type, nullable bool,
) (string, error) {
	object, ok := expression.(*model.ObjectConsExpression)
	if !ok {
		value, err := lowerer.expression(expression)
		if err != nil || !model.ContainsOutputs(expression.Type()) {
			return value, err
		}
		element := providerSchemaValueDartType(elementType)
		if nullable {
			return fmt.Sprintf("pulumi.output(%s).apply<Map<String, %s>?>((value) => value == null ? null : (value as Map).cast<String, %s>())", value, element, element), nil
		}
		return fmt.Sprintf("pulumi.output(%s).apply<Map<String, %s>>((value) => (value as Map).cast<String, %s>())", value, element, element), nil
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

func providerSchemaValueDartType(typ schema.Type) string {
	typ = unwrapProviderInputType(typ)
	if primitive, ok := providerPrimitiveDartType(typ); ok {
		return primitive
	}
	switch typ := typ.(type) {
	case *schema.ArrayType:
		return "List<" + providerSchemaValueDartType(typ.ElementType) + ">"
	case *schema.MapType:
		return "Map<String, " + providerSchemaValueDartType(typ.ElementType) + ">"
	default:
		return "dynamic"
	}
}
