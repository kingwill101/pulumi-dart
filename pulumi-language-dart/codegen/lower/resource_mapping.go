package lower

import (
	"fmt"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func ResourceOutputValueType(property schemair.Property) string {
	return NullableType(PropertyBaseType(property), property.Required)
}

func ResourceOutputDecoderExpression(property schemair.Property) string {
	typeSpec := PropertyType(property)
	if !NeedsDecodeConversion(typeSpec) {
		return ""
	}
	return fmt.Sprintf("(raw) { final guardedValue = raw; if (guardedValue == null) return null; return %s; }", DecodeExpression(typeSpec, "guardedValue"))
}

func ResourceRegisterOutputExpression(property schemair.Property) string {
	outputType := ResourceOutputValueType(property)
	propertyName := darttext.StringLiteral(property.Name)
	decoderExpr := ResourceOutputDecoderExpression(property)
	if decoderExpr == "" {
		return fmt.Sprintf("registerOutput<%s>(%s)", outputType, propertyName)
	}
	return fmt.Sprintf("registerOutput<%s>(%s, decoder: %s)", outputType, propertyName, decoderExpr)
}

func RegisterOutputAssignmentTarget(fieldName string, parameterNames ...string) string {
	for _, parameterName := range parameterNames {
		if fieldName == parameterName {
			return "this." + fieldName
		}
	}
	return fieldName
}
