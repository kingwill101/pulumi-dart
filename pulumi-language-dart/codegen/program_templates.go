package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/zclconf/go-cty/cty"
)

func (lowerer programLowerer) templateExpression(expression *model.TemplateExpression) (string, error) {
	parts := make([]string, len(expression.Parts))
	for index, part := range expression.Parts {
		if literal, ok := part.(*model.LiteralValueExpression); ok && literal.Value.Type() == cty.String {
			parts[index] = dartStringLiteral(literal.Value.AsString())
			continue
		}
		lowered, err := lowerer.expression(part)
		if err != nil {
			return "", fmt.Errorf("template part: %w", err)
		}
		parts[index] = "(" + lowered + ").toString()"
	}
	return strings.Join(parts, " + "), nil
}
