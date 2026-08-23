package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/zclconf/go-cty/cty"
)

func (lowerer programLowerer) templateExpression(expression *model.TemplateExpression) (string, error) {
	parts := make([]string, len(expression.Parts))
	hasOutputs := false
	for index, part := range expression.Parts {
		if literal, ok := part.(*model.LiteralValueExpression); ok && literal.Value.Type() == cty.String {
			parts[index] = dartStringLiteral(literal.Value.AsString())
			continue
		}
		lowered, err := lowerer.expression(part)
		if err != nil {
			return "", fmt.Errorf("template part: %w", err)
		}
		parts[index] = lowered
		hasOutputs = hasOutputs || model.ContainsOutputs(part.Type())
	}
	if hasOutputs {
		return "pulumi.output([" + strings.Join(parts, ", ") + "])" +
			".apply<String>((values) => values.map((value) => value.toString()).join())", nil
	}
	for index, part := range parts {
		literal, isLiteral := expression.Parts[index].(*model.LiteralValueExpression)
		if !isLiteral || literal.Value.Type() != cty.String {
			parts[index] = "(" + part + ").toString()"
		}
	}
	return strings.Join(parts, " + "), nil
}
