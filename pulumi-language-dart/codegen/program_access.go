package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func (lowerer programLowerer) indexExpression(expression *model.IndexExpression) (string, error) {
	collection, err := lowerer.expression(expression.Collection)
	if err != nil {
		return "", err
	}
	key, err := lowerer.expression(expression.Key)
	if err != nil {
		return "", err
	}
	return "(" + collection + ")[" + key + "]", nil
}

func (lowerer programLowerer) relativeTraversalExpression(
	expression *model.RelativeTraversalExpression,
) (string, error) {
	source, err := lowerer.expression(expression.Source)
	if err != nil {
		return "", err
	}
	return lowerDartTraversal(source, expression.Traversal, false)
}

func lowerDartTraversal(source string, traversal hcl.Traversal, properties bool) (string, error) {
	result := source
	for _, traverser := range traversal {
		switch traverser := traverser.(type) {
		case hcl.TraverseAttr:
			if properties {
				result += "." + lowerCamelIdentifier(toDartClassName(traverser.Name))
			} else {
				result += "[" + dartStringLiteral(traverser.Name) + "]"
			}
		case hcl.TraverseIndex:
			key, err := lowerDartLiteral(traverser.Key)
			if err != nil {
				return "", err
			}
			result += "[" + key + "]"
		default:
			return "", fmt.Errorf("unsupported traverser %T", traverser)
		}
	}
	return result, nil
}
