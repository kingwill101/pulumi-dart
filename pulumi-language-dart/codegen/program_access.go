package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) scopeTraversalExpression(expression *model.ScopeTraversalExpression) (string, error) {
	if expression.RootName == "args" && len(expression.Traversal) > 1 {
		return lowerHookArgsTraversal(expression.Traversal[1:])
	}
	name, ok := lowerer.names[expression.RootName]
	if !ok {
		return "", fmt.Errorf("unknown variable %q", expression.RootName)
	}
	if _, resourceRoot := expression.Parts[0].(*pcl.Resource); resourceRoot {
		return lowerDartTraversal(name, expression.Traversal[1:], true)
	}
	if _, resourceRoot := expression.Parts[0].(*pcl.ReadResource); resourceRoot {
		return lowerDartTraversal(name, expression.Traversal[1:], true)
	}
	rootType := model.GetTraversableType(expression.Parts[0])
	if len(expression.Traversal) > 1 && model.ContainsOutputs(rootType) {
		typed := lowerer.typedObjectNames[name]
		traversed, err := lowerDartTraversal("value", expression.Traversal[1:], typed)
		if err != nil {
			return "", err
		}
		apply := ".apply<dynamic>"
		if typed {
			return name + ".apply((value) => " + traversed + ")", nil
		}
		return "pulumi.output(" + name + ")" + apply + "((value) => " + traversed + ")", nil
	}
	return lowerDartTraversal(name, expression.Traversal[1:], false)
}

func (lowerer programLowerer) indexExpression(expression *model.IndexExpression) (string, error) {
	collection, err := lowerer.expression(expression.Collection)
	if err != nil {
		return "", err
	}
	key, err := lowerer.expression(expression.Key)
	if err != nil {
		return "", err
	}
	access := "pulumi.indexValue(" + collection + ", " + key + ")"
	if model.ContainsOutputs(expression.Collection.Type()) || model.ContainsOutputs(expression.Key.Type()) {
		return "pulumi.output([" + collection + ", " + key + "]).apply<dynamic>(" +
			"(values) => pulumi.indexValue(values[0], values[1]))", nil
	}
	return access, nil
}

func (lowerer programLowerer) relativeTraversalExpression(
	expression *model.RelativeTraversalExpression,
) (string, error) {
	source, err := lowerer.expression(expression.Source)
	if err != nil {
		return "", err
	}
	if model.ContainsOutputs(expression.Source.Type()) {
		typed := invokeExpression(expression.Source) != nil
		traversed, err := lowerDartTraversal("value", expression.Traversal, typed)
		if err != nil {
			return "", err
		}
		apply := ".apply<dynamic>"
		if typed {
			return source + ".apply((value) => " + traversed + ")", nil
		}
		return "pulumi.output(" + source + ")" + apply + "((value) => " + traversed + ")", nil
	}
	return lowerDartTraversal(source, expression.Traversal, false)
}

func lowerDartTraversal(source string, traversal hcl.Traversal, properties bool) (string, error) {
	result := source
	for _, traverser := range traversal {
		switch traverser := traverser.(type) {
		case hcl.TraverseAttr:
			if properties {
				result += "." + propertyFieldName(traverser.Name, map[string]int{})
			} else {
				result = "pulumi.indexValue(" + result + ", " + dartStringLiteral(traverser.Name) + ")"
			}
		case hcl.TraverseIndex:
			key, err := lowerDartLiteral(traverser.Key)
			if err != nil {
				return "", err
			}
			result = "pulumi.indexValue(" + result + ", " + key + ")"
		default:
			return "", fmt.Errorf("unsupported traverser %T", traverser)
		}
	}
	return result, nil
}
