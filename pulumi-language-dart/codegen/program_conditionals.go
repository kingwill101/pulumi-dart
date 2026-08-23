package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"

func (lowerer programLowerer) conditionalExpression(expression *model.ConditionalExpression) (string, error) {
	condition, err := lowerer.expression(expression.Condition)
	if err != nil {
		return "", err
	}
	whenTrue, err := lowerer.expression(expression.TrueResult)
	if err != nil {
		return "", err
	}
	whenFalse, err := lowerer.expression(expression.FalseResult)
	if err != nil {
		return "", err
	}
	return "(" + condition + " ? " + whenTrue + " : " + whenFalse + ")", nil
}
