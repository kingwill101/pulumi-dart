package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func noArgumentBuiltin(name string, arguments []string, result string) (string, error) {
	if len(arguments) != 0 {
		return "", fmt.Errorf("%s expects no arguments", name)
	}
	return result, nil
}

func lowerOutputAwareBuiltin(
	expression *model.FunctionCallExpression, arguments []string, function string,
) (string, error) {
	value, err := oneArgumentBuiltin(expression.Name, arguments, function)
	if err != nil || !model.ContainsOutputs(expression.Args[0].Type()) {
		return value, err
	}
	return "pulumi.output(" + arguments[0] + ").apply<dynamic>((value) => " + function + "(value))", nil
}

func oneArgumentBuiltin(name string, arguments []string, function string) (string, error) {
	if len(arguments) != 1 {
		return "", fmt.Errorf("%s expects one argument", name)
	}
	return function + "(" + arguments[0] + ")", nil
}

func lowerMinMaxBuiltin(name string, arguments []string, expandFinal bool) (string, error) {
	if len(arguments) == 0 {
		return "", fmt.Errorf("%s expects at least one argument", name)
	}
	comparison := "<"
	if name == "max" {
		comparison = ">"
	}
	values := "[" + strings.Join(arguments, ", ") + "]"
	if expandFinal && len(arguments) == 1 {
		values = "(" + arguments[0] + ")"
	}
	return values + ".reduce(" +
		"(left, right) => left " + comparison + " right ? left : right)", nil
}
