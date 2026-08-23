package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func componentConfigExpression(expression model.Expression) bool {
	traversal, ok := expression.(*model.ScopeTraversalExpression)
	if !ok || len(traversal.Parts) == 0 {
		return false
	}
	_, ok = traversal.Parts[0].(*pcl.ConfigVariable)
	return ok
}

func containsComponentConfigExpression(expression model.Expression) bool {
	found := false
	_, _ = model.VisitExpression(expression, func(node model.Expression) (model.Expression, hcl.Diagnostics) {
		if componentConfigExpression(node) {
			found = true
		}
		return node, nil
	}, nil)
	return found
}

func componentInputConversion(source, target model.Type, value string) string {
	source, target = model.ResolveOutputs(source), model.ResolveOutputs(target)
	if target == nil {
		return value
	}
	targetType := dartComponentInputType(target)
	conversion := "value as " + targetType
	switch typed := target.(type) {
	case *model.ListType:
		element := dartComponentInputType(typed.ElementType)
		conversion = "(value as List).cast<" + element + ">()"
		if element == "double" {
			conversion = "(value as List).map<double>((item) => (item as num).toDouble()).toList()"
		}
	case *model.MapType:
		element := dartComponentInputType(typed.ElementType)
		conversion = "(value as Map).cast<String, " + element + ">()"
	default:
		conversion = componentPrimitiveValueConversion(source, target, "value")
	}
	return fmt.Sprintf("pulumi.output(%s).apply<%s>((value) => %s)", value, targetType, conversion)
}

func componentPrimitiveValueConversion(source, target model.Type, value string) string {
	if target == model.BoolType && source == model.StringType {
		return "bool.parse(" + value + ")"
	}
	if target == model.IntType && source == model.StringType {
		return "int.parse(" + value + ")"
	}
	if target == model.NumberType {
		if source == model.StringType {
			return "double.parse(" + value + ")"
		}
		return "(" + value + " as num).toDouble()"
	}
	if target == model.StringType && source != model.StringType {
		return "(" + value + ").toString()"
	}
	return value + " as " + dartComponentInputType(target)
}

func (lowerer programLowerer) componentConfigProviderExpression(
	pkg string, typ schema.Type, value string, nullable bool,
) (string, error) {
	if targetType, ok := providerPrimitiveDartType(typ); ok {
		conversion := providerOutputPrimitiveValueConversion(typ, "value")
		if nullable {
			return fmt.Sprintf("pulumi.output(%s).apply<%s?>((value) => value == null ? null : %s)",
				value, targetType, conversion), nil
		}
		return fmt.Sprintf("pulumi.output(%s).apply<%s>((value) => %s)", value, targetType, conversion), nil
	}
	switch collection := typ.(type) {
	case *schema.ArrayType:
		element := lowerer.providerSchemaValueDartType(pkg, collection.ElementType)
		conversion := fmt.Sprintf("(value as List).cast<%s>()", element)
		if element == "double" {
			conversion = "(value as List).map<double>((item) => (item as num).toDouble()).toList()"
		}
		return fmt.Sprintf("pulumi.output(%s).apply<List<%s>>((value) => %s)", value, element, conversion), nil
	case *schema.MapType:
		element := lowerer.providerSchemaValueDartType(pkg, collection.ElementType)
		return fmt.Sprintf("pulumi.output(%s).apply<Map<String, %s>>((value) => (value as Map).cast<String, %s>())",
			value, element, element), nil
	default:
		return value, nil
	}
}
