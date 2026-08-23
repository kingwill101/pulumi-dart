package codegen

import (
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

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
