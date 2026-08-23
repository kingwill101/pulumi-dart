package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func (lowerer programLowerer) functionCallExpression(expression *model.FunctionCallExpression) (string, error) {
	arguments := make([]string, len(expression.Args))
	for index, argument := range expression.Args {
		lowered, err := lowerer.expression(argument)
		if err != nil {
			return "", fmt.Errorf("%s argument %d: %w", expression.Name, index, err)
		}
		arguments[index] = lowered
	}
	switch expression.Name {
	case "length":
		if len(arguments) != 1 {
			return "", fmt.Errorf("length expects one argument")
		}
		if model.ResolveOutputs(expression.Args[0].Type()) == model.StringType {
			return "pulumi.stringLength(" + arguments[0] + ")", nil
		}
		return "(" + arguments[0] + ").length", nil
	case "toJSON":
		if len(arguments) != 1 {
			return "", fmt.Errorf("toJSON expects one argument")
		}
		return "pulumi.jsonStringify(" + arguments[0] + ")", nil
	case "split":
		if len(arguments) != 2 {
			return "", fmt.Errorf("split expects two arguments")
		}
		return "(" + arguments[1] + ").split(" + arguments[0] + ")", nil
	case "join":
		if len(arguments) != 2 {
			return "", fmt.Errorf("join expects two arguments")
		}
		return "(" + arguments[1] + ").join(" + arguments[0] + ")", nil
	case "min", "max":
		if len(arguments) == 0 {
			return "", fmt.Errorf("%s expects at least one argument", expression.Name)
		}
		comparison := "<"
		if expression.Name == "max" {
			comparison = ">"
		}
		return "[" + strings.Join(arguments, ", ") + "].reduce(" +
			"(left, right) => left " + comparison + " right ? left : right)", nil
	default:
		return "", fmt.Errorf("unsupported function %q", expression.Name)
	}
}
