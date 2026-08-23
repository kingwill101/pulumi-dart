package codegen

import (
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func schemaObjectPropertiesFromRef(objectType *schema.ObjectType) []*schema.Property {
	if objectType == nil {
		return nil
	}
	if objectType.InputShape != nil && (objectType.IsInputShape() || len(objectType.Properties) == 0) {
		return objectType.InputShape.Properties
	}
	return objectType.Properties
}

func schemaPropertiesWithoutSelf(properties []*schema.Property) []*schema.Property {
	filtered := make([]*schema.Property, 0, len(properties))
	for _, property := range properties {
		if property != nil && property.Name != "__self__" {
			filtered = append(filtered, property)
		}
	}
	if len(filtered) == 0 {
		return nil
	}
	return filtered
}

func rawObjectSpecPropertiesWithoutSelf(properties map[string]rawPropertyTypeSpec, required []string) (map[string]rawPropertyTypeSpec, []string) {
	if len(properties) == 0 {
		return map[string]rawPropertyTypeSpec{}, nil
	}
	filtered := make(map[string]rawPropertyTypeSpec, len(properties))
	for key, value := range properties {
		if key != "__self__" {
			filtered[key] = value
		}
	}
	filteredRequired := make([]string, 0, len(required))
	for _, property := range required {
		if property != "__self__" {
			filteredRequired = append(filteredRequired, property)
		}
	}
	sort.Strings(filteredRequired)
	return filtered, filteredRequired
}
