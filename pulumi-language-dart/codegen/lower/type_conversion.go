package lower

import (
	"fmt"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func NeedsDecodeConversion(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "enum", "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return NeedsDecodeConversion(ElementType(typeSpec))
	default:
		return false
	}
}

func NeedsEncodeConversion(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "enum", "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return NeedsEncodeConversion(ElementType(typeSpec))
	default:
		return false
	}
}

func WireType(typeSpec schemair.Type) string {
	switch typeSpec.Kind {
	case "enum":
		if typeSpec.ReferenceWireType != "" {
			return typeSpec.ReferenceWireType
		}
	case "object":
		return "Map<String, dynamic>"
	case "array":
		return fmt.Sprintf("List<%s>", WireType(ElementType(typeSpec)))
	case "map":
		return fmt.Sprintf("Map<String, %s>", WireType(ElementType(typeSpec)))
	}
	if typeSpec.DartType != "" {
		return typeSpec.DartType
	}
	return "dynamic"
}

func DecodeExpression(typeSpec schemair.Type, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		return fmt.Sprintf("%s.fromValue(%s as %s)", typeSpec.ReferenceType, sourceExpr, wireType)
	case "object":
		if typeSpec.ReferenceType == "" {
			return fmt.Sprintf("(%s as Map).cast<String, dynamic>()", sourceExpr)
		}
		return fmt.Sprintf("%s.fromMap((%s as Map).cast<String, dynamic>())", typeSpec.ReferenceType, sourceExpr)
	case "array":
		element := ElementType(typeSpec)
		if NeedsDecodeConversion(element) {
			return fmt.Sprintf("pulumi.Input.decodeList<%s>(%s, (value) => %s)", element.DartType, sourceExpr, DecodeExpression(element, "value"))
		}
		return fmt.Sprintf("(%s as List).cast<%s>()", sourceExpr, element.DartType)
	case "map":
		element := ElementType(typeSpec)
		if NeedsDecodeConversion(element) {
			return fmt.Sprintf("pulumi.Input.decodeMapValues<%s>(%s, (value) => %s)", element.DartType, sourceExpr, DecodeExpression(element, "value"))
		}
		return fmt.Sprintf("(%s as Map).cast<String, %s>()", sourceExpr, element.DartType)
	case "dynamic":
		return sourceExpr
	default:
		if typeSpec.DartType == "" || typeSpec.DartType == "dynamic" {
			return sourceExpr
		}
		return fmt.Sprintf("%s as %s", sourceExpr, typeSpec.DartType)
	}
}

func EncodeExpression(typeSpec schemair.Type, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		return fmt.Sprintf("%s.wireValue", sourceExpr)
	case "object":
		if typeSpec.ReferenceType != "" {
			return fmt.Sprintf("%s.toMap()", sourceExpr)
		}
	case "array":
		element := ElementType(typeSpec)
		if NeedsEncodeConversion(element) {
			return fmt.Sprintf("pulumi.Input.encodeList<%s, %s>(%s, (value) => %s)", element.DartType, WireType(element), sourceExpr, EncodeExpression(element, "value"))
		}
	case "map":
		element := ElementType(typeSpec)
		if NeedsEncodeConversion(element) {
			return fmt.Sprintf("pulumi.Input.encodeMapValues<%s, %s>(%s, (value) => %s)", element.DartType, WireType(element), sourceExpr, EncodeExpression(element, "value"))
		}
	}
	return sourceExpr
}
