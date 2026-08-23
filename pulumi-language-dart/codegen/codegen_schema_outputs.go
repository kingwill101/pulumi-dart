package codegen

import (
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func makeResourceOutputPropertySpecs(resource *schema.Resource, named map[string]packageNamedTypeRef, provider string) []packagePropertySpec {
	props := append([]*schema.Property(nil), resource.Properties...)
	sort.Slice(props, func(i, j int) bool { return props[i].Name < props[j].Name })
	usedNames := map[string]int{"urn": 1}
	if !resource.IsComponent {
		usedNames["id"] = 1
	}
	fields := make([]packagePropertySpec, 0, len(props))
	for _, property := range props {
		if property.Name == "urn" || (!resource.IsComponent && property.Name == "id") {
			continue
		}
		typeSpec := coerceOutputCollectionType(dartTypeSpecFromSchemaType(property.Type, named, true, provider))
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name: property.Name, FieldName: propertyFieldName(property.Name, usedNames),
			Comment: strings.TrimSpace(property.Comment), Required: !resource.IsComponent && property.IsRequired(),
			TypeSpec: typeSpec, DartType: typeSpec.DartType,
			ReferenceKind: referenceKind, ReferenceType: referenceType, ReferenceWireType: referenceWireType,
		})
	}
	if len(fields) == 0 {
		return nil
	}
	return fields
}

func coerceOutputCollectionType(typeSpec packageTypeSpec) packageTypeSpec {
	if typeSpec.Kind != "array" || typeSpec.ElementType == nil || outputCollectionElementIsSupported(typeSpec.ElementType) {
		return typeSpec
	}
	dynamicType := packageTypeSpec{Kind: "dynamic", DartType: "dynamic"}
	mapType := packageTypeSpec{Kind: "map", DartType: "Map<String, dynamic>", ElementType: &dynamicType}
	return packageTypeSpec{Kind: "array", DartType: "List<Map<String, dynamic>>", ElementType: &mapType}
}

func outputCollectionElementIsSupported(typeSpec *packageTypeSpec) bool {
	return typeSpec != nil && (typeSpec.Kind == "scalar" || typeSpec.Kind == "enum")
}
