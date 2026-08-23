package codegen

import (
	"fmt"
)

func propertyTypeSpec(property packagePropertySpec) packageTypeSpec {
	if property.TypeSpec.DartType != "" {
		return property.TypeSpec
	}
	if property.DartType != "" {
		kind := "scalar"
		if property.DartType == "dynamic" {
			kind = "dynamic"
		}
		return makePackageTypeSpec(kind, property.DartType)
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func propertyBaseDartType(property packagePropertySpec) string {
	return propertyTypeSpec(property).DartType
}

// nullableDartType appends `?` for non-required non-dynamic types.
func nullableDartType(base string, required bool) string {
	if required || base == "dynamic" {
		return base
	}
	return base + "?"
}

// objectClassPropertyDartType computes emitted field type for object class
// properties, respecting input-wrapped vs value-wrapped mode.
func objectClassPropertyDartType(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	base := propertyBaseDartType(property)
	if objectClass.UsesInputTypes {
		typed := fmt.Sprintf("pulumi.Input<%s>", base)
		if property.Required {
			return typed
		}
		return typed + "?"
	}
	return nullableDartType(base, property.Required)
}

// objectClassConstructorPropertyDartType computes constructor parameter type
// for object class properties.
func objectClassConstructorPropertyDartType(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	if objectClass.UsesInputTypes {
		base := propertyBaseDartType(property)
		typed := fmt.Sprintf("pulumi.Input<%s>", base)
		if property.Required {
			return typed
		}
		return typed + "?"
	}
	base := propertyBaseDartType(property)
	return nullableDartType(base, property.Required)
}

// typeSpecElement returns element type for array/map specs, defaulting dynamic.
func typeSpecElement(typeSpec packageTypeSpec) packageTypeSpec {
	if typeSpec.ElementType != nil {
		return *typeSpec.ElementType
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func typeSpecNeedsDecodeConversion(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return typeSpecNeedsDecodeConversion(typeSpecElement(typeSpec))
	default:
		return false
	}
}

func typeSpecNeedsEncodeConversion(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return typeSpecNeedsEncodeConversion(typeSpecElement(typeSpec))
	default:
		return false
	}
}

func typeSpecWireDartType(typeSpec packageTypeSpec) string {
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
		element := typeSpecElement(typeSpec)
		return fmt.Sprintf("List<%s>", typeSpecWireDartType(element))
	case "map":
		element := typeSpecElement(typeSpec)
		return fmt.Sprintf("Map<String, %s>", typeSpecWireDartType(element))
	}
	if typeSpec.DartType != "" {
		return typeSpec.DartType
	}
	return "dynamic"
}

// typeSpecDecodeExpression returns a Dart expression that decodes sourceExpr
// from wire format to the requested Dart type.
func typeSpecDecodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
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
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsDecodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.decodeList<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				typeSpecDecodeExpression(element, "value"),
			)
		}
		return fmt.Sprintf("(%s as List).cast<%s>()", sourceExpr, element.DartType)
	case "map":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsDecodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.decodeMapValues<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				typeSpecDecodeExpression(element, "value"),
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

// typeSpecEncodeExpression returns a Dart expression that encodes sourceExpr
// from typed Dart values to wire format.
func typeSpecEncodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		return fmt.Sprintf("%s.wireValue", sourceExpr)
	case "object":
		if typeSpec.ReferenceType == "" {
			return sourceExpr
		}
		return fmt.Sprintf("%s.toMap()", sourceExpr)
	case "array":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.encodeList<%s, %s>(%s, (value) => %s)",
				element.DartType,
				typeSpecWireDartType(element),
				sourceExpr,
				typeSpecEncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	case "map":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.encodeMapValues<%s, %s>(%s, (value) => %s)",
				element.DartType,
				typeSpecWireDartType(element),
				sourceExpr,
				typeSpecEncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	default:
		return sourceExpr
	}
}

func typeSpecNeedsDecodeListHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeConversion(element) || typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsDecodeMapHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeConversion(element) || typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsEncodeListHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeConversion(element) || typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsEncodeMapHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeConversion(element) || typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	default:
		return false
	}
}
