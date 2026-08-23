package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func (lowerer programLowerer) recoverExpression(expression *model.FunctionCallExpression) (string, error) {
	if len(expression.Args) != 2 {
		return "", fmt.Errorf("recover expects two arguments")
	}
	source, err := lowerer.expression(expression.Args[0])
	if err != nil {
		return "", fmt.Errorf("recover argument 0: %w", err)
	}
	nested := lowerer
	nested.names = make(map[string]string, len(lowerer.names)+1)
	for name, lowered := range lowerer.names {
		nested.names[name] = lowered
	}
	nested.names["error"] = "error"
	fallback, err := nested.expression(expression.Args[1])
	if err != nil {
		return "", fmt.Errorf("recover argument 1: %w", err)
	}
	return "pulumi.output(" + source + ").recover((caught, _) { " +
		"final error = caught.toString(); return pulumi.input(" + fallback + "); })", nil
}
