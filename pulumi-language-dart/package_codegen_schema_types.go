package main

import (
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func dartTypeSpecFromSchemaType(
	typ schema.Type,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	currentProvider string,
) packageTypeSpec {
	for {
		switch t := typ.(type) {
		case *schema.OptionalType:
			typ = t.ElementType
		case *schema.InputType:
			typ = t.ElementType
		default:
			goto resolved
		}
	}

resolved:
	switch t := typ.(type) {
	case nil:
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.ArrayType:
		element := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes, currentProvider)
		return packageTypeSpec{
			Kind:        "array",
			DartType:    "List<" + element.DartType + ">",
			ElementType: &element,
		}
	case *schema.MapType:
		element := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes, currentProvider)
		return packageTypeSpec{
			Kind:        "map",
			DartType:    "Map<String, " + element.DartType + ">",
			ElementType: &element,
		}
	case *schema.EnumType:
		if namedTypeRefs != nil && t.Token != "" {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              "enum",
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: namedType.UnderlyingType,
					}
				}
				return makePackageTypeSpec("scalar", namedType.UnderlyingType)
			}
		}
		if externalSpec, ok := externalTokenTypeSpec(
			t.Token,
			currentProvider,
			"enum",
			dartTypeSpecFromSchemaType(t.ElementType, nil, false, currentProvider).DartType,
			true,
			useReferenceTypes,
		); ok {
			return externalSpec
		}
		return dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, false, currentProvider)
	case *schema.UnionType:
		for _, element := range t.ElementTypes {
			if element == nil {
				continue
			}
			return dartTypeSpecFromSchemaType(element, namedTypeRefs, useReferenceTypes, currentProvider)
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.TokenType:
		if t.Token != "" {
			if namedTypeRefs != nil {
				if namedType, ok := namedTypeRefs[t.Token]; ok {
					switch namedType.Kind {
					case "enum":
						if useReferenceTypes {
							return packageTypeSpec{
								Kind:              "enum",
								DartType:          namedType.Name,
								ReferenceType:     namedType.Name,
								ReferenceWireType: namedType.UnderlyingType,
							}
						}
						return makePackageTypeSpec("scalar", namedType.UnderlyingType)
					case "object":
						if !namedType.UseReferenceType {
							return makePackageTypeSpec("object", "Map<String, dynamic>")
						}
						if useReferenceTypes {
							return packageTypeSpec{
								Kind:              "object",
								DartType:          namedType.Name,
								ReferenceType:     namedType.Name,
								ReferenceWireType: namedType.UnderlyingType,
							}
						}
						return makePackageTypeSpec("object", "Map<String, dynamic>")
					case "resource":
						if useReferenceTypes {
							return packageTypeSpec{
								Kind:              "resource",
								DartType:          namedType.Name,
								ReferenceType:     namedType.Name,
								ReferenceWireType: "dynamic",
							}
						}
						return makePackageTypeSpec("dynamic", "dynamic")
					}
				}
			}

			fallback := ""
			fallbackKind := "dynamic"
			if t.UnderlyingType != nil {
				resolved := dartTypeSpecFromSchemaType(t.UnderlyingType, namedTypeRefs, false, currentProvider)
				fallback = resolved.DartType
				fallbackKind = resolved.Kind
			}
			if externalSpec, ok := externalTokenTypeSpec(
				t.Token,
				currentProvider,
				fallbackKind,
				fallback,
				true,
				useReferenceTypes,
			); ok {
				return externalSpec
			}
		}
		if t.UnderlyingType != nil {
			return dartTypeSpecFromSchemaType(t.UnderlyingType, namedTypeRefs, useReferenceTypes, currentProvider)
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.ObjectType:
		if namedTypeRefs != nil && t.Token != "" {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if namedType.Kind == "object" && !namedType.UseReferenceType {
					return makePackageTypeSpec("object", "Map<String, dynamic>")
				}
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              namedType.Kind,
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: namedType.UnderlyingType,
					}
				}
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
		}
		if externalSpec, ok := externalTokenTypeSpec(
			t.Token,
			currentProvider,
			"object",
			"Map<String, dynamic>",
			len(t.Properties) > 0,
			useReferenceTypes,
		); ok {
			return externalSpec
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	case *schema.ResourceType:
		if namedTypeRefs != nil && t.Token != "" {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              "resource",
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: "dynamic",
					}
				}
			}
		}
		if externalSpec, ok := externalTokenTypeSpec(
			t.Token,
			currentProvider,
			"resource",
			"",
			true,
			useReferenceTypes,
		); ok {
			return externalSpec
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	}

	switch typ {
	case schema.BoolType:
		return makePackageTypeSpec("scalar", "bool")
	case schema.IntType:
		return makePackageTypeSpec("scalar", "int")
	case schema.NumberType:
		return makePackageTypeSpec("scalar", "double")
	case schema.StringType:
		return makePackageTypeSpec("scalar", "String")
	case schema.AssetType, schema.ArchiveType, schema.AnyResourceType, schema.JSONType, schema.AnyType:
		return makePackageTypeSpec("dynamic", "dynamic")
	default:
		return makePackageTypeSpec("dynamic", "dynamic")
	}
}

func makeObjectClassSpec(
	baseName string,
	modulePath string,
	classComment string,
	properties []*schema.Property,
	usedClassNames map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	currentProvider string,
	nameSuffixes ...string,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	className := uniqueQualifiedClassName(baseName, modulePath, usedClassNames, nameSuffixes...)
	return buildObjectClassSpec(
		className,
		modulePath,
		classComment,
		properties,
		namedTypeRefs,
		useReferenceTypes,
		usesInputTypes,
		currentProvider,
	)
}

func buildObjectClassSpec(
	className string,
	modulePath string,
	classComment string,
	properties []*schema.Property,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	currentProvider string,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	props := make([]*schema.Property, len(properties))
	copy(props, properties)
	sort.Slice(props, func(i, j int) bool {
		return props[i].Name < props[j].Name
	})

	usedFieldNames := map[string]int{}
	fields := make([]packagePropertySpec, 0, len(props))
	for _, property := range props {
		typeSpec := dartTypeSpecFromSchemaType(
			property.Type,
			namedTypeRefs,
			useReferenceTypes,
			currentProvider,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              property.Name,
			FieldName:         propertyFieldName(property.Name, usedFieldNames),
			Comment:           strings.TrimSpace(property.Comment),
			Required:          property.IsRequired(),
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

func makeResourceOutputPropertySpecs(
	resource *schema.Resource,
	namedTypeRefs map[string]packageNamedTypeRef,
	currentProvider string,
) []packagePropertySpec {
	if len(resource.Properties) == 0 {
		return nil
	}

	props := make([]*schema.Property, len(resource.Properties))
	copy(props, resource.Properties)
	sort.Slice(props, func(i, j int) bool {
		return props[i].Name < props[j].Name
	})

	usedFieldNames := map[string]int{
		"urn": 1,
	}
	if !resource.IsComponent {
		usedFieldNames["id"] = 1
	}

	fields := make([]packagePropertySpec, 0, len(props))
	for _, property := range props {
		if property.Name == "urn" {
			continue
		}
		if !resource.IsComponent && property.Name == "id" {
			continue
		}

		typeSpec := dartTypeSpecFromSchemaType(
			property.Type,
			namedTypeRefs,
			true,
			currentProvider,
		)
		typeSpec = coerceOutputCollectionType(typeSpec)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              property.Name,
			FieldName:         propertyFieldName(property.Name, usedFieldNames),
			Comment:           strings.TrimSpace(property.Comment),
			Required:          !resource.IsComponent && property.IsRequired(),
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	if len(fields) == 0 {
		return nil
	}
	return fields
}

func coerceOutputCollectionType(typeSpec packageTypeSpec) packageTypeSpec {
	if typeSpec.Kind != "array" || typeSpec.ElementType == nil {
		return typeSpec
	}
	if outputCollectionElementIsSupported(typeSpec.ElementType) {
		return typeSpec
	}

	return packageTypeSpec{
		Kind:     "array",
		DartType: "List<Map<String, dynamic>>",
		ElementType: &packageTypeSpec{
			Kind:     "map",
			DartType: "Map<String, dynamic>",
			ElementType: &packageTypeSpec{
				Kind:     "dynamic",
				DartType: "dynamic",
			},
		},
	}
}

func outputCollectionElementIsSupported(typeSpec *packageTypeSpec) bool {
	if typeSpec == nil {
		return false
	}
	switch typeSpec.Kind {
	case "scalar", "enum":
		return true
	default:
		return false
	}
}

func makeSchemaEnumSpec(typeName string, modulePath string, enumType *schema.EnumType, currentProvider string) *packageEnumSpec {
	if enumType == nil || len(enumType.Elements) == 0 {
		return nil
	}

	underlyingType := dartTypeSpecFromSchemaType(enumType.ElementType, nil, false, currentProvider).DartType
	values := make([]packageEnumValueSpec, 0, len(enumType.Elements))
	usedValueNames := map[string]int{}
	for _, enumValue := range enumType.Elements {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}

	return &packageEnumSpec{
		EnumName:       typeName,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(enumType.Comment),
		UnderlyingType: underlyingType,
		Values:         values,
	}
}
