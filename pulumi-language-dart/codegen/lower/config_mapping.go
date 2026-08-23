package lower

import (
	"fmt"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func ConfigPropertyGetterType(property schemair.Property) string {
	base := PropertyBaseType(property)
	if base == "dynamic" {
		return "dynamic"
	}
	return base + "?"
}

func ConfigTypeRequiresJSONDecode(typeSpec schemair.Type) bool {
	return typeSpec.Kind == "array" || typeSpec.Kind == "map" || typeSpec.Kind == "object"
}

func ConfigPropertyParseExpression(property schemair.Property, rawExpr string) string {
	typeSpec := PropertyType(property)
	if ConfigTypeRequiresJSONDecode(typeSpec) {
		return NullGuardedExpression(rawExpr, DecodeExpression(typeSpec, "jsonDecode(guardedValue)"))
	}
	if typeSpec.Kind == "enum" {
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		parseWire := scalarConfigParseExpression(wireType, "guardedValue")
		return NullGuardedExpression(rawExpr, fmt.Sprintf("%s.fromValue(%s as %s)", typeSpec.ReferenceType, parseWire, wireType))
	}
	return scalarConfigParseExpression(typeSpec.DartType, rawExpr)
}

func scalarConfigParseExpression(dartType, rawExpr string) string {
	switch dartType {
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
