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
		return schemaEnumTypeSpec(t, namedTypeRefs, useReferenceTypes, currentProvider)
	case *schema.UnionType:
		return dartSchemaUnionTypeSpec(t, namedTypeRefs, useReferenceTypes, currentProvider)
	case *schema.TokenType:
		return schemaTokenTypeSpec(t, namedTypeRefs, useReferenceTypes, currentProvider)
	case *schema.ObjectType:
		return schemaObjectTypeSpec(t, namedTypeRefs, useReferenceTypes, currentProvider)
	case *schema.ResourceType:
		return schemaResourceTypeSpec(t, namedTypeRefs, useReferenceTypes, currentProvider)
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

func dartSchemaUnionTypeSpec(
	union *schema.UnionType,
	named map[string]packageNamedTypeRef,
	useReferences bool,
	provider string,
) packageTypeSpec {
	var common *packageTypeSpec
	for _, element := range union.ElementTypes {
		if element == nil {
			continue
		}
		candidate := dartTypeSpecFromSchemaType(element, named, useReferences, provider)
		if common == nil {
			common = &candidate
			continue
		}
		if common.DartType != candidate.DartType || common.Kind != candidate.Kind {
			return makePackageTypeSpec("dynamic", "dynamic")
		}
	}
	if common == nil {
		return makePackageTypeSpec("dynamic", "dynamic")
	}
	return *common
}
