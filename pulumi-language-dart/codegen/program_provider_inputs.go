package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) providerInputExpression(
	resource *pcl.Resource, name string, expression model.Expression,
) (string, error) {
	propertyType := resourceInputPropertyType(resource, name)
	propertyType = unwrapProviderInputType(propertyType)
	array, isArray := propertyType.(*schema.ArrayType)
	tuple, isTuple := expression.(*model.TupleConsExpression)
	if !isTuple || !((isArray && unwrapProviderInputType(array.ElementType) == schema.NumberType) ||
		modelNumberArrayInput(resource, name)) {
		return lowerer.expression(expression)
	}
	items := make([]string, len(tuple.Expressions))
	for index, item := range tuple.Expressions {
		value, err := lowerer.expression(item)
		if err != nil {
			return "", err
		}
		items[index] = "(" + value + ").toDouble()"
	}
	return "[" + strings.Join(items, ", ") + "]", nil
}

func modelNumberArrayInput(resource *pcl.Resource, name string) bool {
	object, ok := model.ResolveOutputs(resource.InputType).(*model.ObjectType)
	if !ok {
		return false
	}
	list, ok := model.ResolveOutputs(object.Properties[name]).(*model.ListType)
	return ok && model.ResolveOutputs(list.ElementType) == model.NumberType
}

func unwrapProviderInputType(typ schema.Type) schema.Type {
	for {
		switch wrapped := typ.(type) {
		case *schema.InputType:
			typ = wrapped.ElementType
		case *schema.OptionalType:
			typ = wrapped.ElementType
		default:
			return typ
		}
	}
}

func resourceInputPropertyType(resource *pcl.Resource, name string) schema.Type {
	if resource.Schema == nil {
		return nil
	}
	for _, property := range resource.Schema.InputProperties {
		if property.Name == name {
			return property.Type
		}
	}
	return nil
}
