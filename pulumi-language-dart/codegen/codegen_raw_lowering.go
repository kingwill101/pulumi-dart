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
	if token := rawRefToken(typ.Ref); token != "" {
		if namedType, ok := namedTypeRefs[token]; ok {
			if namedType.Kind == "object" && !namedType.UseReferenceType {
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
			if useReferenceTypes {
				kind := namedType.Kind
				if kind == "" {
					kind = "dynamic"
				}
				return packageTypeSpec{
					Kind:              kind,
					DartType:          namedType.Name,
					ReferenceType:     namedType.Name,
					ReferenceWireType: namedType.UnderlyingType,
				}
			}
			if namedType.Kind == "enum" {
				return makePackageTypeSpec("scalar", namedType.UnderlyingType)
			}
			if namedType.Kind == "resource" {
				return makePackageTypeSpec("dynamic", "dynamic")
			}
			return makePackageTypeSpec("object", "Map<String, dynamic>")
		}

		if externalRef, typeInfo, ok := externalRefs.resolve(typ.Ref); ok {
			switch typeInfo.Kind {
			case "resource":
				return packageTypeSpec{
					Kind:           "resource",
					DartType:       externalRef.QualifiedType,
					IsExternalRef:  true,
					ExternalImport: externalRef.ImportPath,
					ExternalAlias:  externalRef.ImportAlias,
				}
			case "enum":
				wireType := typeInfo.WireType
				if wireType == "" {
					wireType = "String"
				}
				return packageTypeSpec{
					Kind:              "enum",
					DartType:          externalRef.QualifiedType,
					ReferenceType:     externalRef.QualifiedType,
					ReferenceWireType: wireType,
					IsExternalRef:     true,
					ExternalImport:    externalRef.ImportPath,
					ExternalAlias:     externalRef.ImportAlias,
				}
			case "object":
				if !typeInfo.UseReferenceType {
					return makePackageTypeSpec("object", "Map<String, dynamic>")
				}
				return packageTypeSpec{
					Kind:              "object",
					DartType:          externalRef.QualifiedType,
					ReferenceType:     externalRef.QualifiedType,
					ReferenceWireType: "Map<String, dynamic>",
					IsExternalRef:     true,
					ExternalImport:    externalRef.ImportPath,
					ExternalAlias:     externalRef.ImportAlias,
				}
			case "scalar":
				if typeInfo.DartType != "" {
					return makePackageTypeSpec("scalar", typeInfo.DartType)
				}
			}
		}

		return makePackageTypeSpec("dynamic", "dynamic")
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

	if len(typ.OneOf) > 0 {
		for _, candidate := range typ.OneOf {
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes, externalRefs)
			if typeSpec.DartType != "dynamic" {
				return typeSpec
			}
		}
	}

	if len(typ.AnyOf) > 0 {
		for _, candidate := range typ.AnyOf {
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes, externalRefs)
			if typeSpec.DartType != "dynamic" {
				return typeSpec
			}
		}
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}
