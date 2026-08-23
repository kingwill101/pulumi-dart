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
