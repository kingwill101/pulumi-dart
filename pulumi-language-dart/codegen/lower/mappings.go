package lower

import (
	"fmt"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func NullGuardedExpression(sourceExpr, resultExpr string) string {
	return fmt.Sprintf(
		"(() { final guardedValue = %s; if (guardedValue == null) return null; return %s; })()",
		sourceExpr,
		resultExpr,
	)
}

func ObjectFromMapExpression(objectClass schemair.ObjectClass, property schemair.Property) string {
	sourceExpr := fmt.Sprintf("map[%s]", darttext.StringLiteral(property.Name))
	typeSpec := PropertyType(property)
	decodeSourceExpr := sourceExpr
	switch typeSpec.Kind {
	case "object", "enum":
		decodeSourceExpr = sourceExpr + "!"
	case "array", "map":
		if NeedsDecodeConversion(ElementType(typeSpec)) {
			decodeSourceExpr = sourceExpr + "!"
		}
	}
	decodedExpr := DecodeExpression(typeSpec, decodeSourceExpr)
	if objectClass.UsesInputTypes {
		if property.Required {
			return fmt.Sprintf("pulumi.Input.fromValue(%s)", decodedExpr)
		}
		optionalDecodedExpr := DecodeExpression(typeSpec, "guardedValue")
		return NullGuardedExpression(
			sourceExpr,
			fmt.Sprintf("pulumi.Input.fromValue(%s)", optionalDecodedExpr),
		)
	}
	if property.Required {
		return decodedExpr
	}
	optionalDecodedExpr := DecodeExpression(typeSpec, "guardedValue")
	return NullGuardedExpression(sourceExpr, optionalDecodedExpr)
}

func ObjectToMapExpressionFromSource(objectClass schemair.ObjectClass, property schemair.Property, sourceExpr string) string {
	typeSpec := PropertyType(property)
	if objectClass.UsesInputTypes {
		if NeedsEncodeConversion(typeSpec) {
			if property.Required {
				return fmt.Sprintf(
					"pulumi.Input.mapInputValue<%s, %s>(%s, (value) => %s)",
					typeSpec.DartType,
					WireType(typeSpec),
					sourceExpr,
					EncodeExpression(typeSpec, "value"),
				)
			}
			return fmt.Sprintf(
				"pulumi.Input.mapOptionalInputValue<%s, %s>(%s, (value) => %s)",
				typeSpec.DartType,
				WireType(typeSpec),
				sourceExpr,
				EncodeExpression(typeSpec, "value"),
			)
		}
		return sourceExpr
	}

	if NeedsEncodeConversion(typeSpec) {
		if !property.Required {
			if typeSpec.Kind == "object" {
				return fmt.Sprintf("%s?.toMap()", sourceExpr)
			}
			if typeSpec.Kind == "enum" {
				return fmt.Sprintf("%s?.wireValue", sourceExpr)
			}
			return NullGuardedExpression(
				sourceExpr,
				EncodeExpression(typeSpec, "guardedValue"),
			)
		}
		return EncodeExpression(typeSpec, sourceExpr)
	}
	return sourceExpr
}

func ObjectToMapExpression(objectClass schemair.ObjectClass, property schemair.Property) string {
	return ObjectToMapExpressionFromSource(objectClass, property, property.FieldName)
}

func ResourceOutputValueType(property schemair.Property) string {
	return NullableType(PropertyBaseType(property), property.Required)
}

func ResourceOutputDecoderExpression(property schemair.Property) string {
	typeSpec := PropertyType(property)
	if !NeedsDecodeConversion(typeSpec) {
		return ""
	}

	decodedExpr := DecodeExpression(typeSpec, "guardedValue")
	return fmt.Sprintf(
		"(raw) { final guardedValue = raw; if (guardedValue == null) return null; return %s; }",
		decodedExpr,
	)
}

func ResourceRegisterOutputExpression(property schemair.Property) string {
	outputType := ResourceOutputValueType(property)
	propertyName := darttext.StringLiteral(property.Name)
	decoderExpr := ResourceOutputDecoderExpression(property)
	if decoderExpr == "" {
		return fmt.Sprintf("registerOutput<%s>(%s)", outputType, propertyName)
	}
	return fmt.Sprintf(
		"registerOutput<%s>(%s, decoder: %s)",
		outputType,
		propertyName,
		decoderExpr,
	)
}

func ConfigPropertyGetterType(property schemair.Property) string {
	base := PropertyBaseType(property)
	if base == "dynamic" {
		return "dynamic"
	}
	return base + "?"
}

func ConfigTypeRequiresJSONDecode(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "array", "map":
		return true
	case "object":
		return true
	default:
		return false
	}
}

func ConfigPropertyParseExpression(property schemair.Property, rawExpr string) string {
	typeSpec := PropertyType(property)
	if ConfigTypeRequiresJSONDecode(typeSpec) {
		return NullGuardedExpression(
			rawExpr,
			DecodeExpression(typeSpec, "jsonDecode(guardedValue)"),
		)
	}

	if typeSpec.Kind == "enum" {
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		parseWire := "guardedValue"
		switch wireType {
		case "int":
			parseWire = "(guardedValue).toInt()"
		case "double":
			parseWire = "(guardedValue).toDouble()"
		case "bool":
			parseWire = "(guardedValue).toBool()"
		}
		return NullGuardedExpression(
			rawExpr,
			fmt.Sprintf("%s.fromValue(%s as %s)", typeSpec.ReferenceType, parseWire, wireType),
		)
	}

	switch typeSpec.DartType {
	case "String":
		return rawExpr
	case "int":
		return fmt.Sprintf("(%s).toInt()", rawExpr)
	case "double":
		return fmt.Sprintf("(%s).toDouble()", rawExpr)
	case "bool":
		return fmt.Sprintf("(%s).toBool()", rawExpr)
	default:
		return rawExpr
	}
}

func RegisterOutputAssignmentTarget(fieldName string, parameterNames ...string) string {
	for _, parameterName := range parameterNames {
		if fieldName == parameterName {
			return "this." + fieldName
		}
	}
	return fieldName
}
