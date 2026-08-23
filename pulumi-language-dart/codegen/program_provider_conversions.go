package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func providerPrimitiveConversion(
	expression model.Expression, target schema.Type, value string, nullable bool,
) (string, bool) {
	targetType, ok := providerPrimitiveDartType(target)
	if !ok {
		return "", false
	}
	source := model.ResolveOutputs(expression.Type())
	conversion := providerPrimitiveValueConversion(source, target, "value")
	if model.ContainsOutputs(expression.Type()) {
		if nullable {
			return fmt.Sprintf(
				"pulumi.output(%s).apply<%s?>((value) => value == null ? null : %s)",
				value, targetType, conversion,
			), true
		}
		return fmt.Sprintf("pulumi.output(%s).apply<%s>((value) => %s)", value, targetType, conversion), true
	}
	return stringsReplaceConversionValue(conversion, value), true
}

func providerPrimitiveValueConversion(source model.Type, target schema.Type, value string) string {
	switch target {
	case schema.BoolType:
		if source == model.StringType {
			return "bool.parse(" + value + ")"
		}
	case schema.IntType:
		if source == model.StringType {
			return "int.parse(" + value + ")"
		}
		if source == model.NumberType {
			return "(" + value + ").toInt()"
		}
	case schema.NumberType:
		if source == model.StringType {
			return "double.parse(" + value + ")"
		}
		return "(" + value + ").toDouble()"
	case schema.StringType:
		if source != model.StringType {
			return "(" + value + ").toString()"
		}
	}
	return value + " as " + mustProviderPrimitiveDartType(target)
}

func providerPrimitiveDartType(typ schema.Type) (string, bool) {
	switch typ {
	case schema.BoolType:
		return "bool", true
	case schema.IntType:
		return "int", true
	case schema.NumberType:
		return "double", true
	case schema.StringType:
		return "String", true
	default:
		return "", false
	}
}

func providerTypeIsOptional(typ schema.Type) bool {
	for typ != nil {
		switch wrapped := typ.(type) {
		case *schema.InputType:
			typ = wrapped.ElementType
		case *schema.OptionalType:
			return true
		default:
			return false
		}
	}
	return false
}

func mustProviderPrimitiveDartType(typ schema.Type) string {
	result, _ := providerPrimitiveDartType(typ)
	return result
}

func stringsReplaceConversionValue(expression, value string) string {
	if expression == "value as bool" || expression == "value as int" ||
		expression == "value as double" || expression == "value as String" {
		return value
	}
	// Conversion templates use `value` only as an isolated identifier.
	return replaceIdentifier(expression, "value", value)
}

func replaceIdentifier(expression, identifier, replacement string) string {
	// All templates in this file are generator-owned and contain a single value
	// placeholder, so a direct split avoids source-expression interpolation.
	parts := strings.Split(expression, identifier)
	return strings.Join(parts, replacement)
}
