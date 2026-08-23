package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
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
		return lowerer.resourceOutputTraversal(name, expression)
	}
	if _, resourceRoot := expression.Parts[0].(*pcl.ReadResource); resourceRoot {
		return lowerer.resourceOutputTraversal(name, expression)
	}
	if _, componentRoot := expression.Parts[0].(*pcl.Component); componentRoot {
		return lowerer.resourceOutputTraversal(name, expression)
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
			return name + ".apply<" + dartConfigValueType(expression.Type()) + ">((value) => " + traversed + ")", nil
		}
		return "pulumi.output(" + name + ")" + apply + "((value) => " + traversed + ")", nil
	}
	return lowerDartTraversal(name, expression.Traversal[1:], lowerer.typedObjectNames[name])
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
	if callExpression(expression.Source) != nil && !model.ContainsOutputs(expression.Source.Type()) {
		return lowerDartTraversal(source, expression.Traversal, true)
	}
	if model.ContainsOutputs(expression.Source.Type()) {
		typed := typedResultExpression(expression.Source) || expressionResultIsTypedObject(expression.Source) || expressionIndexesResource(expression.Source)
		traversed, err := lowerDartTraversal("value", expression.Traversal, typed)
		if err != nil {
			return "", err
		}
		apply := ".apply<dynamic>"
		if typed {
			return source + ".apply<" + dartConfigValueType(expression.Type()) + ">((value) => " + traversed + ")", nil
		}
		return "pulumi.output(" + source + ")" + apply + "((value) => " + traversed + ")", nil
	}
	return lowerDartTraversal(source, expression.Traversal, false)
}

func expressionIndexesResource(expression model.Expression) bool {
	index, ok := expression.(*model.IndexExpression)
	if !ok {
		return false
	}
	traversal, ok := index.Collection.(*model.ScopeTraversalExpression)
	if !ok || len(traversal.Parts) == 0 {
		return false
	}
	_, ok = traversal.Parts[0].(*pcl.Resource)
	return ok
}

func expressionResultIsTypedObject(expression model.Expression) bool {
	typ := model.ResolveOutputs(expression.Type())
	schemaType, ok := pcl.GetSchemaForType(typ)
	if !ok {
		return false
	}
	switch value := schemaType.(type) {
	case *schema.ResourceType:
		return true
	case *schema.ObjectType:
		return value.Token != ""
	default:
		return false
	}
}

func typedResultExpression(expression model.Expression) bool {
	call, ok := expression.(*model.FunctionCallExpression)
	return ok && (call.Name == pcl.Invoke || call.Name == pcl.Call)
}
