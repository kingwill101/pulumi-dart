package lower

import (
	"fmt"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func ObjectFromMapExpression(objectClass schemair.ObjectClass, property schemair.Property) string {
	sourceExpr := fmt.Sprintf("map[%s]", darttext.StringLiteral(property.Name))
	typeSpec := PropertyType(property)
	decodeSourceExpr := sourceExpr
	if typeSpec.Kind == "object" || typeSpec.Kind == "enum" ||
		((typeSpec.Kind == "array" || typeSpec.Kind == "map") && NeedsDecodeConversion(ElementType(typeSpec))) {
		decodeSourceExpr += "!"
	}
	decodedExpr := DecodeExpression(typeSpec, decodeSourceExpr)
	if objectClass.UsesInputTypes {
		if property.Required {
			return fmt.Sprintf("pulumi.Input.fromValue(%s)", decodedExpr)
		}
		return NullGuardedExpression(sourceExpr, fmt.Sprintf("pulumi.Input.fromValue(%s)", DecodeExpression(typeSpec, "guardedValue")))
	}
	if property.Required {
		return decodedExpr
	}
	return NullGuardedExpression(sourceExpr, DecodeExpression(typeSpec, "guardedValue"))
}

func ObjectToMapExpressionFromSource(objectClass schemair.ObjectClass, property schemair.Property, sourceExpr string) string {
	typeSpec := PropertyType(property)
	if objectClass.UsesInputTypes {
		if !NeedsEncodeConversion(typeSpec) {
			return sourceExpr
		}
		mapping := "mapOptionalInputValue"
		if property.Required {
			mapping = "mapInputValue"
		}
		return fmt.Sprintf("pulumi.Input.%s<%s, %s>(%s, (value) => %s)", mapping, typeSpec.DartType, WireType(typeSpec), sourceExpr, EncodeExpression(typeSpec, "value"))
	}
	if !NeedsEncodeConversion(typeSpec) {
		return sourceExpr
	}
	if property.Required {
		return EncodeExpression(typeSpec, sourceExpr)
	}
	switch typeSpec.Kind {
	case "object":
		return fmt.Sprintf("%s?.toMap()", sourceExpr)
	case "enum":
		return fmt.Sprintf("%s?.wireValue", sourceExpr)
	default:
		return NullGuardedExpression(sourceExpr, EncodeExpression(typeSpec, "guardedValue"))
	}
}

func ObjectToMapExpression(objectClass schemair.ObjectClass, property schemair.Property) string {
	return ObjectToMapExpressionFromSource(objectClass, property, property.FieldName)
}
