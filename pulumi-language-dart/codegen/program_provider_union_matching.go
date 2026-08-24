package codegen

import (
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func providerSchemaAcceptsExpression(typ schema.Type, expression model.Expression) bool {
	typ = unwrapProviderInputType(typ)
	source := model.ResolveOutputs(expression.Type())
	if constant, ok := source.(*model.ConstType); ok {
		source = constant.Type
	}
	switch typ := typ.(type) {
	case *schema.EnumType:
		return providerSchemaAcceptsExpression(typ.ElementType, expression)
	case *schema.ObjectType:
		_, ok := expression.(*model.ObjectConsExpression)
		return ok
	case *schema.ArrayType:
		_, ok := expression.(*model.TupleConsExpression)
		return ok || isModelCollectionType(source)
	case *schema.MapType:
		_, ok := expression.(*model.ObjectConsExpression)
		return ok || isModelMapType(source)
	}
	switch typ {
	case schema.BoolType:
		return source == model.BoolType
	case schema.IntType:
		return source == model.IntType
	case schema.NumberType:
		return source == model.IntType || source == model.NumberType
	case schema.StringType:
		return source == model.StringType
	case schema.AnyType, schema.JSONType:
		return true
	default:
		return false
	}
}

func isModelCollectionType(typ model.Type) bool {
	switch typ.(type) {
	case *model.ListType, *model.SetType, *model.TupleType:
		return true
	default:
		return false
	}
}

func isModelMapType(typ model.Type) bool {
	switch typ.(type) {
	case *model.MapType, *model.ObjectType:
		return true
	default:
		return false
	}
}
