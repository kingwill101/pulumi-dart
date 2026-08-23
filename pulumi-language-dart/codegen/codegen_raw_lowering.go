package codegen

import (
	"fmt"
)

func directReferenceInfo(typeSpec packageTypeSpec) (referenceKind string, referenceType string, referenceWireType string) {
	switch typeSpec.Kind {
	case "enum":
		return "enum", typeSpec.ReferenceType, typeSpec.ReferenceWireType
	case "object":
		return "object", typeSpec.ReferenceType, "Map<String, dynamic>"
	default:
		return "", "", ""
	}
}

func makePackageTypeSpec(kind, dartType string) packageTypeSpec {
	return packageTypeSpec{
		Kind:     kind,
		DartType: dartType,
	}
}

func dartTypeSpecFromRawPropertyType(
	typ rawPropertyTypeSpec,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	externalRefs *externalRefResolver,
) packageTypeSpec {
	if typ.Ref != "" {
		return rawReferenceTypeSpec(typ.Ref, namedTypeRefs, useReferenceTypes, externalRefs)
	}

	switch typ.Type {
	case "boolean":
		return makePackageTypeSpec("scalar", "bool")
	case "integer":
		return makePackageTypeSpec("scalar", "int")
	case "number":
		return makePackageTypeSpec("scalar", "double")
	case "string":
		return makePackageTypeSpec("scalar", "String")
	case "array":
		elementSpec := makePackageTypeSpec("dynamic", "dynamic")
		if typ.Items != nil {
			elementSpec = dartTypeSpecFromRawPropertyType(*typ.Items, namedTypeRefs, useReferenceTypes, externalRefs)
		}
		return packageTypeSpec{
			Kind:        "array",
			DartType:    fmt.Sprintf("List<%s>", elementSpec.DartType),
			ElementType: &elementSpec,
		}
	case "object":
		if typ.AdditionalProperties != nil {
			valueSpec := dartTypeSpecFromRawPropertyType(*typ.AdditionalProperties, namedTypeRefs, useReferenceTypes, externalRefs)
			return packageTypeSpec{
				Kind:        "map",
				DartType:    fmt.Sprintf("Map<String, %s>", valueSpec.DartType),
				ElementType: &valueSpec,
			}
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	}

	for _, candidates := range [][]rawPropertyTypeSpec{typ.OneOf, typ.AnyOf} {
		if resolved, ok := firstConcreteRawType(candidates, namedTypeRefs, useReferenceTypes, externalRefs); ok {
			return resolved
		}
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func firstConcreteRawType(candidates []rawPropertyTypeSpec, named map[string]packageNamedTypeRef, useRefs bool, external *externalRefResolver) (packageTypeSpec, bool) {
	for _, candidate := range candidates {
		resolved := dartTypeSpecFromRawPropertyType(candidate, named, useRefs, external)
		if resolved.DartType != "dynamic" {
			return resolved, true
		}
	}
	return packageTypeSpec{}, false
}
