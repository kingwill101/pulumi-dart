package codegen

import (
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func collectionElementIsTypedObject(typ model.Type) bool {
	_, ok := collectionElementSchemaType(typ)
	return ok
}

func collectionContainsComponents(expression model.Expression) bool {
	traversal, ok := expression.(*model.ScopeTraversalExpression)
	if !ok || len(traversal.Parts) == 0 {
		return false
	}
	_, ok = traversal.Parts[0].(*pcl.Component)
	return ok
}

func collectionElementSchemaType(typ model.Type) (schema.Type, bool) {
	typ = model.ResolveOutputs(typ)
	switch collection := typ.(type) {
	case *model.ListType:
		typ = model.ResolveOutputs(collection.ElementType)
	case *model.SetType:
		typ = model.ResolveOutputs(collection.ElementType)
	case *model.MapType:
		typ = model.ResolveOutputs(collection.ElementType)
	case *model.TupleType:
		if len(collection.ElementTypes) == 0 {
			return nil, false
		}
		typ = model.ResolveOutputs(collection.ElementTypes[0])
	default:
		return nil, false
	}
	schemaType, ok := pcl.GetSchemaForType(typ)
	if !ok {
		return nil, false
	}
	object, ok := schemaType.(*schema.ObjectType)
	if ok && object.Token != "" {
		return schemaType, true
	}
	return nil, false
}
