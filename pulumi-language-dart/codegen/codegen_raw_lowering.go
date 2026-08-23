package codegen

import (
	"fmt"
	"sort"
	"strings"
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

func makeRawObjectClassSpec(
	baseName string,
	modulePath string,
	classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	usedClassNames map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	externalRefs *externalRefResolver,
	nameSuffixes ...string,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	className := uniqueQualifiedClassName(baseName, modulePath, usedClassNames, nameSuffixes...)
	return buildRawObjectClassSpec(
		className,
		modulePath,
		classComment,
		properties,
		required,
		namedTypeRefs,
		useReferenceTypes,
		usesInputTypes,
		externalRefs,
	)
}

func buildRawObjectClassSpec(
	className string,
	modulePath string,
	classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	externalRefs *externalRefResolver,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	propertyNames := make([]string, 0, len(properties))
	for name := range properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)

	requiredSet := rawRequiredSet(required)
	usedFieldNames := map[string]int{}
	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		property := properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		typeSpec := dartTypeSpecFromRawPropertyType(
			property,
			namedTypeRefs,
			useReferenceTypes,
			externalRefs,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              propertyName,
			FieldName:         propertyFieldName(propertyName, usedFieldNames),
			Comment:           strings.TrimSpace(property.Description),
			Required:          isRequired,
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	return &packageObjectClassSpec{
		ClassName:      className,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(classComment),
		UsesInputTypes: usesInputTypes,
		Properties:     fields,
	}
}

func makeRawEnumSpec(
	typeName string,
	modulePath string,
	rawType rawTypeSpec,
) *packageEnumSpec {
	if len(rawType.Enum) == 0 {
		return nil
	}

	underlyingType := dartTypeFromRawTypeName(rawType.Type)
	values := make([]packageEnumValueSpec, 0, len(rawType.Enum))
	usedValueNames := map[string]int{}
	for _, enumValue := range rawType.Enum {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Comment: strings.TrimSpace(enumValue.Description),
			Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}

	return &packageEnumSpec{
		EnumName:       typeName,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(rawType.Description),
		UnderlyingType: underlyingType,
		Values:         values,
	}
}

func dartTypeFromRawTypeName(typeName string) string {
	switch typeName {
	case "boolean":
		return "bool"
	case "integer":
		return "int"
	case "number":
		return "double"
	case "string":
		return "String"
	default:
		return "String"
	}
}
