package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func lowerMapBuiltin(
	expression *model.FunctionCallExpression, arguments []string, function string,
) (string, error) {
	if len(arguments) == 0 {
		return "", fmt.Errorf("%s expects a map argument", expression.Name)
	}
	mapValue := arguments[0]
	if model.ContainsOutputs(expression.Args[0].Type()) {
		mapValue = mapBuiltinValue("value", expression.Args[0].Type())
		callArguments := append([]string{mapValue}, arguments[1:]...)
		return "pulumi.output(" + arguments[0] + ").apply<dynamic>((value) => " +
			function + "(" + strings.Join(callArguments, ", ") + "))", nil
	}
	arguments[0] = mapBuiltinValue(mapValue, expression.Args[0].Type())
	return function + "(" + strings.Join(arguments, ", ") + ")", nil
}

func mapBuiltinValue(value string, typ model.Type) string {
	typ = model.ResolveOutputs(typ)
	schemaType, ok := pcl.GetSchemaForType(typ)
	if !ok {
		return value
	}
	for {
		switch wrapped := schemaType.(type) {
		case *schema.OptionalType:
			schemaType = wrapped.ElementType
		case *schema.InputType:
			schemaType = wrapped.ElementType
		default:
			object, isObject := schemaType.(*schema.ObjectType)
			if isObject && object.Token != "" {
				return value + ".toMap()"
			}
			return value
		}
	}
}
