package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) invokeExpression(expression *model.FunctionCallExpression) (string, error) {
	token := pcl.LiteralValueString(expression.Args[0])
	function, ok := lowerer.functions[token]
	if !ok {
		return "", fmt.Errorf("unknown invoke token %q", token)
	}
	if !pcl.IsOutputVersionInvokeCall(expression) {
		return "", fmt.Errorf("invoke %q was not bound in output form", token)
	}
	lowerer.imports[function.Package+"\x00"+function.Module] = dartProgramImport{
		Package: function.Package, Module: function.Module,
	}
	arguments, err := lowerer.invokeArguments(expression, function)
	if err != nil {
		return "", err
	}
	options, err := lowerer.invokeOptions(expression)
	if err != nil {
		return "", err
	}
	if options != "" {
		if arguments != "" {
			arguments += ", "
		}
		arguments += "options: " + options
	}
	qualifier := programModuleAlias(function.Package, function.Module)
	return qualifier + "." + function.Name + "Output(" + arguments + ")", nil
}

func (lowerer programLowerer) invokeArguments(
	expression *model.FunctionCallExpression, function programFunction,
) (string, error) {
	_, object, _ := pcl.RecognizeOutputVersionedInvoke(expression)
	if object == nil && len(expression.Args) > 1 {
		if _, converted, _ := pcl.RecognizeTypedObjectCons(expression.Args[1]); converted != nil {
			object = converted
		} else {
			object, _ = expression.Args[1].(*model.ObjectConsExpression)
		}
	}
	if object == nil || function.ArgsClass == "" {
		return "", nil
	}
	if function.Function.MultiArgumentInputs {
		return lowerer.multiArgumentInvokeArguments(object, function)
	}
	fields := make([]string, len(object.Items))
	for index, item := range object.Items {
		name := pcl.LiteralValueString(item.Key)
		property := invokeInputProperty(function.Schema, name)
		value, err := lowerer.expression(item.Value)
		if property != nil {
			value, err = lowerer.typedProviderExpression(function.Package, item.Value, property.Type)
		}
		if err != nil {
			return "", fmt.Errorf("invoke input %q: %w", name, err)
		}
		fields[index] = propertyFieldName(name, map[string]int{}) + ": (" + value + ").input()"
	}
	qualifier := programModuleAlias(function.Package, function.Module)
	return qualifier + "." + function.ArgsClass + "(" + strings.Join(fields, ", ") + ")", nil
}

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
	for _, property := range function.Inputs.InputShape.Properties {
		if property.Name == name {
			return property
		}
	}
	return nil
}

func invokeExpression(expression model.Expression) *model.FunctionCallExpression {
	call, ok := expression.(*model.FunctionCallExpression)
	if ok && call.Name == pcl.Invoke {
		return call
	}
	return nil
}
