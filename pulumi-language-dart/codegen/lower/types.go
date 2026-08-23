package lower

import (
	"fmt"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func schemaType(kind, dartType string) schemair.Type {
	return schemair.Type{Kind: kind, DartType: dartType}
}

func PropertyType(property schemair.Property) schemair.Type {
	if property.TypeSpec.DartType != "" {
		return property.TypeSpec
	}
	if property.DartType != "" {
		kind := "scalar"
		if property.DartType == "dynamic" {
			kind = "dynamic"
		}
		return schemaType(kind, property.DartType)
	}
	return schemaType("dynamic", "dynamic")
}

func PropertyBaseType(property schemair.Property) string {
	return PropertyType(property).DartType
}

// NullableType appends `?` for non-required non-dynamic types.
func NullableType(base string, required bool) string {
	if required || base == "dynamic" {
		return base
	}
	return base + "?"
}

// ObjectPropertyType computes emitted field type for object class
// properties, respecting input-wrapped vs value-wrapped mode.
func ObjectPropertyType(objectClass schemair.ObjectClass, property schemair.Property) string {
	base := PropertyBaseType(property)
	if objectClass.UsesInputTypes {
		typed := fmt.Sprintf("pulumi.Input<%s>", base)
		if property.Required {
			return typed
		}
		return typed + "?"
	}
	return NullableType(base, property.Required)
}

// ElementType returns element type for array/map specs, defaulting dynamic.
func ElementType(typeSpec schemair.Type) schemair.Type {
	if typeSpec.ElementType != nil {
		return *typeSpec.ElementType
	}
	return schemaType("dynamic", "dynamic")
}

func NeedsDecodeConversion(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return NeedsDecodeConversion(ElementType(typeSpec))
	default:
		return false
	}
}

func NeedsEncodeConversion(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
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
		if typeSpec.ReferenceType != "" {
			return "Map<String, dynamic>"
		}
		return "Map<String, dynamic>"
	case "array":
		element := ElementType(typeSpec)
		return fmt.Sprintf("List<%s>", WireType(element))
	case "map":
		element := ElementType(typeSpec)
		return fmt.Sprintf("Map<String, %s>", WireType(element))
	}
	if typeSpec.DartType != "" {
		return typeSpec.DartType
	}
	return "dynamic"
}

// DecodeExpression returns a Dart expression that decodes sourceExpr
// from wire format to the requested Dart type.
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
			return fmt.Sprintf(
				"pulumi.Input.decodeList<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				DecodeExpression(element, "value"),
			)
		}
		return fmt.Sprintf("(%s as List).cast<%s>()", sourceExpr, element.DartType)
	case "map":
		element := ElementType(typeSpec)
		if NeedsDecodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.decodeMapValues<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				DecodeExpression(element, "value"),
			)
		}
		return fmt.Sprintf("(%s as Map).cast<String, %s>()", sourceExpr, element.DartType)
	case "dynamic":
		return sourceExpr
	default:
		target := typeSpec.DartType
		if target == "" || target == "dynamic" {
			return sourceExpr
		}
		return fmt.Sprintf("%s as %s", sourceExpr, target)
	}
}

// EncodeExpression returns a Dart expression that encodes sourceExpr
// from typed Dart values to wire format.
func EncodeExpression(typeSpec schemair.Type, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		return fmt.Sprintf("%s.wireValue", sourceExpr)
	case "object":
		if typeSpec.ReferenceType == "" {
			return sourceExpr
		}
		return fmt.Sprintf("%s.toMap()", sourceExpr)
	case "array":
		element := ElementType(typeSpec)
		if NeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.encodeList<%s, %s>(%s, (value) => %s)",
				element.DartType,
				WireType(element),
				sourceExpr,
				EncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	case "map":
		element := ElementType(typeSpec)
		if NeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.encodeMapValues<%s, %s>(%s, (value) => %s)",
				element.DartType,
				WireType(element),
				sourceExpr,
				EncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	default:
		return sourceExpr
	}
}

func NeedsDecodeListHelper(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "array":
		element := ElementType(typeSpec)
		return NeedsDecodeConversion(element) || NeedsDecodeListHelper(element) || NeedsDecodeMapHelper(element)
	case "map":
		element := ElementType(typeSpec)
		return NeedsDecodeListHelper(element) || NeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func NeedsDecodeMapHelper(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "map":
		element := ElementType(typeSpec)
		return NeedsDecodeConversion(element) || NeedsDecodeListHelper(element) || NeedsDecodeMapHelper(element)
	case "array":
		element := ElementType(typeSpec)
		return NeedsDecodeListHelper(element) || NeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func NeedsEncodeListHelper(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "array":
		element := ElementType(typeSpec)
		return NeedsEncodeConversion(element) || NeedsEncodeListHelper(element) || NeedsEncodeMapHelper(element)
	case "map":
		element := ElementType(typeSpec)
		return NeedsEncodeListHelper(element) || NeedsEncodeMapHelper(element)
	default:
		return false
	}
}

func NeedsEncodeMapHelper(typeSpec schemair.Type) bool {
	switch typeSpec.Kind {
	case "map":
		element := ElementType(typeSpec)
		return NeedsEncodeConversion(element) || NeedsEncodeListHelper(element) || NeedsEncodeMapHelper(element)
	case "array":
		element := ElementType(typeSpec)
		return NeedsEncodeListHelper(element) || NeedsEncodeMapHelper(element)
	default:
		return false
	}
}
