package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) callExpression(expression *model.FunctionCallExpression) (string, error) {
	if len(expression.Args) != 3 {
		return "", fmt.Errorf("call expects a receiver, method name, and arguments")
	}
	methodSchema, err := callMethodSchema(expression)
	if err != nil {
		return "", err
	}
	method, ok := lowerer.methods[methodSchema.Token]
	if !ok {
		return "", fmt.Errorf("unknown resource method %q", methodSchema.Token)
	}
	lowerer.imports[method.Package+"\x00"+method.Module] = dartProgramImport{
		Package: method.Package,
		Module:  method.Module,
	}
	receiver, err := lowerer.expression(expression.Args[0])
	if err != nil {
		return "", fmt.Errorf("call receiver: %w", err)
	}
	arguments, err := lowerer.callArguments(expression.Args[2], method)
	if err != nil {
		return "", err
	}
	call := receiver + "." + method.Name + "(" + arguments + ")"
	if method.ReturnPlain {
		*lowerer.needsAsyncInitialization = true
		return "(await " + call + ")", nil
	}
	return "pulumi.output(" + call + ")", nil
}

func (lowerer programLowerer) callArguments(expression model.Expression, method programMethod) (string, error) {
	if method.ArgsClass == "" {
		return "", nil
	}
	_, object, _ := pcl.RecognizeTypedObjectCons(expression)
	if object == nil {
		object, _ = expression.(*model.ObjectConsExpression)
	}
	if object == nil {
		return "", fmt.Errorf("method %q arguments are not an object", method.Schema.Token)
	}
	fields := make([]string, len(object.Items))
	for index, item := range object.Items {
		name := pcl.LiteralValueString(item.Key)
		value, err := lowerer.expression(item.Value)
		if property := methodInputProperty(method.Schema, name); property != nil {
			value, err = lowerer.typedProviderExpression(method.Package, item.Value, property.Type)
		}
		if err != nil {
			return "", fmt.Errorf("method input %q: %w", name, err)
		}
		fields[index] = propertyFieldName(name, map[string]int{}) + ": (" + value + ").input()"
	}
	qualifier := programModuleAlias(method.Package, method.Module)
	args := qualifier + "." + method.ArgsClass + "(" + strings.Join(fields, ", ") + ")"
	return "args: " + args, nil
}

func callMethodSchema(expression *model.FunctionCallExpression) (*schema.Function, error) {
	object, ok := expression.Args[0].Type().(*model.ObjectType)
	if !ok {
		return nil, fmt.Errorf("call receiver is not a resource object")
	}
	annotation, ok := model.GetObjectTypeAnnotation[*pcl.ResourceAnnotation](object)
	if !ok || annotation.Node == nil || annotation.Node.GetSchema() == nil {
		return nil, fmt.Errorf("call receiver has no resource schema")
	}
	methodName := pcl.LiteralValueString(expression.Args[1])
	for _, method := range annotation.Node.GetSchema().Methods {
		if method.Name == methodName && method.Function != nil {
			return method.Function, nil
		}
	}
	return nil, fmt.Errorf("resource has no method %q", methodName)
}

func methodInputProperty(function *schema.Function, name string) *schema.Property {
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

func callExpression(expression model.Expression) *model.FunctionCallExpression {
	call, ok := expression.(*model.FunctionCallExpression)
	if ok && call.Name == pcl.Call {
		return call
	}
	return nil
}
