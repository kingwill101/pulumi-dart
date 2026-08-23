package codegen

import (
	"fmt"

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
		return "(" + arguments[0] + ").length", nil
	case "toJSON":
		if len(arguments) != 1 {
			return "", fmt.Errorf("toJSON expects one argument")
		}
		return "pulumi.jsonStringify(" + arguments[0] + ")", nil
	default:
		return "", fmt.Errorf("unsupported function %q", expression.Name)
	}
}
