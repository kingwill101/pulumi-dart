package codegen

import "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"

func propertyTypeSpec(property packagePropertySpec) packageTypeSpec {
	return lower.PropertyType(property)
}

func propertyBaseDartType(property packagePropertySpec) string {
	return lower.PropertyBaseType(property)
}

func nullableDartType(base string, required bool) string {
	return lower.NullableType(base, required)
}

func objectClassPropertyDartType(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	return lower.ObjectPropertyType(objectClass, property)
}

func typeSpecElement(typeSpec packageTypeSpec) packageTypeSpec {
	return lower.ElementType(typeSpec)
}

func typeSpecNeedsDecodeConversion(typeSpec packageTypeSpec) bool {
	return lower.NeedsDecodeConversion(typeSpec)
}

func typeSpecNeedsEncodeConversion(typeSpec packageTypeSpec) bool {
	return lower.NeedsEncodeConversion(typeSpec)
}

func typeSpecWireDartType(typeSpec packageTypeSpec) string {
	return lower.WireType(typeSpec)
}

func typeSpecDecodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	return lower.DecodeExpression(typeSpec, sourceExpr)
}

func typeSpecEncodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	return lower.EncodeExpression(typeSpec, sourceExpr)
}

func typeSpecNeedsDecodeListHelper(typeSpec packageTypeSpec) bool {
	return lower.NeedsDecodeListHelper(typeSpec)
}

func typeSpecNeedsDecodeMapHelper(typeSpec packageTypeSpec) bool {
	return lower.NeedsDecodeMapHelper(typeSpec)
}

func typeSpecNeedsEncodeListHelper(typeSpec packageTypeSpec) bool {
	return lower.NeedsEncodeListHelper(typeSpec)
}

func typeSpecNeedsEncodeMapHelper(typeSpec packageTypeSpec) bool {
	return lower.NeedsEncodeMapHelper(typeSpec)
}
