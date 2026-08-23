package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) providerInputExpression(
	resource *pcl.Resource, defaultPackage, name string, expression model.Expression,
) (string, error) {
	property := resourceInputProperty(resource, name)
	propertyType := schema.Type(nil)
	if property != nil {
		propertyType = property.Type
	}
	if propertyType != nil {
		value, err := lowerer.typedProviderExpression(defaultPackage, expression, propertyType)
		if err != nil {
			return "", err
		}
		if property.Secret {
			value = "pulumi.secretInput((" + value + ").input())"
		}
		return value, nil
	}
	if modelNumberArrayInput(resource, name) {
		return lowerer.numberTupleExpression(expression)
	}
	return lowerer.expression(expression)
}

func (lowerer programLowerer) typedProviderExpression(
	defaultPackage string, expression model.Expression, typ schema.Type,
) (string, error) {
	nullable := providerTypeIsOptional(typ)
	typ = unwrapProviderInputType(typ)
	switch typ := typ.(type) {
	case *schema.ObjectType:
		return lowerer.providerObjectExpression(defaultPackage, expression, typ)
	case *schema.ArrayType:
		return lowerer.providerArrayExpression(defaultPackage, expression, typ.ElementType, nullable)
	case *schema.MapType:
		return lowerer.providerMapExpression(defaultPackage, expression, typ.ElementType, nullable)
	default:
		value, err := lowerer.expression(expression)
		if err != nil {
			return "", err
		}
		if converted, ok := providerPrimitiveConversion(expression, typ, value, nullable); ok {
			return converted, nil
		}
		return value, nil
	}
}

func (lowerer programLowerer) numberTupleExpression(expression model.Expression) (string, error) {
	tuple, ok := expression.(*model.TupleConsExpression)
	if !ok {
		return lowerer.expression(expression)
	}
	items := make([]string, len(tuple.Expressions))
	for index, item := range tuple.Expressions {
		value, err := lowerer.expression(item)
		if err != nil {
			return "", err
		}
		items[index] = fmt.Sprintf("(%s).toDouble()", value)
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
		case *schema.UnionType:
			if wrapped.DefaultType != nil {
				typ = wrapped.DefaultType
				continue
			}
			if len(wrapped.ElementTypes) == 0 {
				return typ
			}
			typ = wrapped.ElementTypes[0]
		default:
			return typ
		}
	}
}

func resourceInputProperty(resource *pcl.Resource, name string) *schema.Property {
	if resource.Schema == nil {
		return nil
	}
	for _, property := range resource.Schema.InputProperties {
		if property.Name == name {
			return property
		}
	}
	return nil
}
