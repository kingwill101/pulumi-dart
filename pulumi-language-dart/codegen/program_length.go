package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func lowerLengthBuiltin(expression *model.FunctionCallExpression, arguments []string) (string, error) {
	if len(arguments) != 1 {
		return "", fmt.Errorf("length expects one argument")
	}
	if model.ResolveOutputs(expression.Args[0].Type()) == model.StringType {
		return "pulumi.stringLength(" + arguments[0] + ")", nil
	}
	if model.ContainsOutputs(expression.Args[0].Type()) {
		return "pulumi.output(" + arguments[0] + ").apply<int>((value) => (value as dynamic).length as int)", nil
	}
	return "(" + arguments[0] + ").length", nil
}
