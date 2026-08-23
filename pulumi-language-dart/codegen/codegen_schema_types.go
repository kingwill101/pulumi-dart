package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/schema"

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
