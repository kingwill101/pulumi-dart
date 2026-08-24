package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
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
		} else {
			value = typedInvokeInput(value, function.InputTypes[name])
		}
		if err != nil {
			return "", fmt.Errorf("invoke input %q: %w", name, err)
		}
		fields[index] = propertyFieldName(name, map[string]int{}) + ": (" + value + ").input()"
	}
	qualifier := programModuleAlias(function.Package, function.Module)
	return qualifier + "." + function.ArgsClass + "(" + strings.Join(fields, ", ") + ")", nil
}

func typedInvokeInput(value, dartType string) string {
	if dartType == "" || dartType == "dynamic" {
		return value
	}
	nullable := strings.HasSuffix(dartType, "?")
	baseType := strings.TrimSuffix(dartType, "?")
	conversion := "value as " + baseType
	if element, ok := dartGenericArgument(baseType, "List"); ok {
		conversion = "(value as List).cast<" + element + ">()"
	} else if entries, ok := dartGenericArgument(baseType, "Map"); ok {
		parts := strings.SplitN(entries, ",", 2)
		if len(parts) == 2 {
			conversion = "(value as Map).cast<" + strings.TrimSpace(parts[0]) + ", " + strings.TrimSpace(parts[1]) + ">()"
		}
	}
	if nullable {
		conversion = "value == null ? null : " + conversion
	}
	return "pulumi.output(" + value + ").apply<" + dartType + ">((value) => " + conversion + ")"
}

func dartGenericArgument(dartType, generic string) (string, bool) {
	prefix := generic + "<"
	if !strings.HasPrefix(dartType, prefix) || !strings.HasSuffix(dartType, ">") {
		return "", false
	}
	return strings.TrimSuffix(strings.TrimPrefix(dartType, prefix), ">"), true
}

func invokeExpression(expression model.Expression) *model.FunctionCallExpression {
	call, ok := expression.(*model.FunctionCallExpression)
	if ok && call.Name == pcl.Invoke {
		return call
	}
	return nil
}
