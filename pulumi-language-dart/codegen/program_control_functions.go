package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func lowerControlBuiltin(
	expression *model.FunctionCallExpression, arguments []string,
) (string, error, bool) {
	name := expression.Name
	switch name {
	case "lookup":
		if len(arguments) != 3 {
			return "", fmt.Errorf("lookup expects three arguments"), true
		}
		value, err := lowerMapBuiltin(expression, arguments, "pulumi.mapLookup")
		return value, err, true
	case "can":
		if len(arguments) != 1 {
			return "", fmt.Errorf("can expects one argument"), true
		}
		return "pulumi.canValue(() => " + arguments[0] + ")", nil, true
	case "try":
		if len(arguments) != 2 {
			return "", fmt.Errorf("try expects two arguments"), true
		}
		return "pulumi.tryValue(() => " + arguments[0] + ", () => " + arguments[1] + ")", nil, true
	default:
		return "", nil, false
	}
}
