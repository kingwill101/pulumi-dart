package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) multiArgumentInvokeArguments(
	object *model.ObjectConsExpression, function programFunction,
) (string, error) {
	values := map[string]model.Expression{}
	for _, item := range object.Items {
		values[pcl.LiteralValueString(item.Key)] = item.Value
	}
	arguments := make([]string, len(function.Function.Parameters))
	for index, parameter := range function.Function.Parameters {
		expression, ok := values[parameter.Name]
		if !ok {
			arguments[index] = "null"
			continue
		}
		value, err := lowerer.expression(expression)
		if property := invokeInputProperty(function.Schema, parameter.Name); property != nil {
			value, err = lowerer.typedProviderExpression(function.Package, expression, property.Type)
		}
		if err != nil {
			return "", fmt.Errorf("invoke input %q: %w", parameter.Name, err)
		}
		arguments[index] = "(" + value + ").input()"
	}
	return strings.Join(arguments, ", "), nil
}

func invokeInputProperty(function *schema.Function, name string) *schema.Property {
	if function == nil || function.Inputs == nil {
		return nil
	}
	properties := function.Inputs.Properties
	if function.Inputs.InputShape != nil {
		properties = function.Inputs.InputShape.Properties
	}
	for _, property := range properties {
		if property.Name == name {
			return property
		}
	}
	return nil
}
