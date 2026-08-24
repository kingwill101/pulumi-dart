package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/schema"

func providerTypeContainsResource(typ schema.Type) bool {
	switch typ := typ.(type) {
	case *schema.InputType:
		return providerTypeContainsResource(typ.ElementType)
	case *schema.OptionalType:
		return providerTypeContainsResource(typ.ElementType)
	case *schema.ArrayType:
		return providerTypeContainsResource(typ.ElementType)
	case *schema.MapType:
		return providerTypeContainsResource(typ.ElementType)
	case *schema.UnionType:
		for _, element := range typ.ElementTypes {
			if providerTypeContainsResource(element) {
				return true
			}
		}
	case *schema.ResourceType:
		return true
	}
	return false
}
