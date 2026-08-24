package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) aliasesExpression(expression model.Expression) (string, error) {
	aliases, ok := expression.(*model.TupleConsExpression)
	if !ok {
		return "", fmt.Errorf("aliases must be a list, got %T", expression)
	}

	items := make([]string, len(aliases.Expressions))
	for index, expression := range aliases.Expressions {
		alias, err := lowerer.aliasExpression(expression)
		if err != nil {
			return "", fmt.Errorf("alias %d: %w", index, err)
		}
		items[index] = alias
	}
	return "[" + strings.Join(items, ", ") + "]", nil
}

func (lowerer programLowerer) aliasExpression(expression model.Expression) (string, error) {
	if object, ok := expression.(*model.ObjectConsExpression); ok {
		fields := make([]string, len(object.Items))
		for index, item := range object.Items {
			name := pcl.LiteralValueString(item.Key)
			value, err := lowerer.expression(item.Value)
			if err != nil {
				return "", fmt.Errorf("field %q: %w", name, err)
			}
			switch name {
			case "name", "type", "stack", "project", "parentUrn":
				value = "(" + value + ").input()"
			case "parent", "noParent":
			default:
				return "", fmt.Errorf("unknown field %q", name)
			}
			fields[index] = name + ": " + value
		}
		return "pulumi.Alias(" + strings.Join(fields, ", ") + ")", nil
	}

	urn, err := lowerer.expression(expression)
	if err != nil {
		return "", err
	}
	return "pulumi.Alias(urn: " + urn + ")", nil
}
