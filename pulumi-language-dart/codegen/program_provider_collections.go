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
		if err != nil {
			return value, err
		}
		element := lowerer.providerSchemaValueDartType(pkg, elementType)
		if !model.ContainsOutputs(expression.Type()) {
			converted := "(" + value + " as List).cast<" + element + ">()"
			if element == "double" {
				converted = "(" + value + " as List).map<double>((value) => (value as num).toDouble()).toList()"
			}
			if nullable {
				return value + " == null ? null : " + converted, nil
			}
			return converted, nil
		}
		if nullable {
			if element == "double" {
				return fmt.Sprintf("pulumi.output(%s).apply<List<double>?>((value) => value == null ? null : (value as List).map<double>((item) => (item as num).toDouble()).toList())", value), nil
			}
			return fmt.Sprintf("pulumi.output(%s).apply<List<%s>?>((value) => value == null ? null : (value as List).cast<%s>())", value, element, element), nil
		}
		if element == "double" {
			return fmt.Sprintf("pulumi.output(%s).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())", value), nil
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
	element := lowerer.providerSchemaValueDartType(pkg, elementType)
	if model.ContainsOutputs(expression.Type()) {
		for index := range items {
			items[index] = "(" + items[index] + ").input()"
		}
		return "pulumi.inputList<" + element + ">(<pulumi.Input<" + element + ">>[" + strings.Join(items, ", ") + "]) as pulumi.Input<List<" + element + ">>", nil
	}
	return "<" + element + ">[" + strings.Join(items, ", ") + "]", nil
}

func (lowerer programLowerer) providerMapExpression(
	pkg string, expression model.Expression, elementType schema.Type, nullable bool,
) (string, error) {
	object, ok := expression.(*model.ObjectConsExpression)
	if !ok {
		value, err := lowerer.expression(expression)
		if err != nil {
			return value, err
		}
		element := lowerer.providerSchemaValueDartType(pkg, elementType)
		if !model.ContainsOutputs(expression.Type()) {
			converted := "Map<String, " + element + ">.from(" + value + " as Map)"
			if nullable {
				return value + " == null ? null : " + converted, nil
			}
			return converted, nil
		}
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
	element := lowerer.providerSchemaValueDartType(pkg, elementType)
	if model.ContainsOutputs(expression.Type()) {
		for index, item := range items {
			parts := strings.SplitN(item, ": ", 2)
			items[index] = parts[0] + ": (" + parts[1] + ").input()"
		}
		return "pulumi.inputMap<" + element + ">(<String, pulumi.Input<" + element + ">>{" + strings.Join(items, ", ") + "}) as pulumi.Input<Map<String, " + element + ">>", nil
	}
	return "<String, " + element + ">{" + strings.Join(items, ", ") + "}", nil
}
