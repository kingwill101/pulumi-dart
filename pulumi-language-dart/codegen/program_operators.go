package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2/hclsyntax"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func (lowerer programLowerer) unaryExpression(expression *model.UnaryOpExpression) (string, error) {
	operator := map[*hclsyntax.Operation]string{
		hclsyntax.OpNegate:     "-",
		hclsyntax.OpLogicalNot: "!",
	}[expression.Operation]
	if operator == "" {
		return "", fmt.Errorf("unsupported unary operation")
	}
	operand, err := lowerer.expression(expression.Operand)
	if err != nil {
		return "", err
	}
	if model.ContainsOutputs(expression.Type()) || lowerer.componentMode && containsComponentConfigExpression(expression.Operand) {
		return "pulumi.output(" + operand + ").apply<" + dartConfigValueType(expression.Type()) +
			">((value) => " + operator + "(value))", nil
	}
	return operator + "(" + operand + ")", nil
}

func (lowerer programLowerer) binaryExpression(expression *model.BinaryOpExpression) (string, error) {
	operator := map[*hclsyntax.Operation]string{
		hclsyntax.OpAdd: "+", hclsyntax.OpSubtract: "-", hclsyntax.OpMultiply: "*",
		hclsyntax.OpDivide: "/", hclsyntax.OpModulo: "%", hclsyntax.OpEqual: "==",
		hclsyntax.OpNotEqual: "!=", hclsyntax.OpLessThan: "<", hclsyntax.OpLessThanOrEqual: "<=",
		hclsyntax.OpGreaterThan: ">", hclsyntax.OpGreaterThanOrEqual: ">=",
		hclsyntax.OpLogicalAnd: "&&", hclsyntax.OpLogicalOr: "||",
	}[expression.Operation]
	if operator == "" {
		return "", fmt.Errorf("unsupported binary operation")
	}
	left, err := lowerer.expression(expression.LeftOperand)
	if err != nil {
		return "", err
	}
	right, err := lowerer.expression(expression.RightOperand)
	if err != nil {
		return "", err
	}
	if model.ContainsOutputs(expression.Type()) || lowerer.componentMode &&
		(containsComponentConfigExpression(expression.LeftOperand) || containsComponentConfigExpression(expression.RightOperand)) {
		return "pulumi.output([" + left + ", " + right + "]).apply<dynamic>(" +
			"(values) => (values[0] " + operator + " values[1]))", nil
	}
	return "(" + left + " " + operator + " " + right + ")", nil
}
