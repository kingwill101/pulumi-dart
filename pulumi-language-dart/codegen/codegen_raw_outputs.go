package codegen

import (
	"sort"
	"strings"
)

func makeRawResourceOutputPropertySpecs(resource rawResourceSpec, named map[string]packageNamedTypeRef, external *externalRefResolver) []packagePropertySpec {
	propertyNames := make([]string, 0, len(resource.Properties))
	for name := range resource.Properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)
	required := rawRequiredSet(resource.Required)
	usedNames := map[string]int{"urn": 1}
	if !resource.IsComponent {
		usedNames["id"] = 1
	}
	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		if propertyName == "urn" || (!resource.IsComponent && propertyName == "id") {
			continue
		}
		property := resource.Properties[propertyName]
		_, isRequired := required[propertyName]
		if resource.IsComponent {
			isRequired = false
		}
		typeSpec := coerceOutputCollectionType(dartTypeSpecFromRawPropertyType(property, named, false, external))
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name: propertyName, FieldName: propertyFieldName(propertyName, usedNames),
			Comment: strings.TrimSpace(property.Description), Required: isRequired, Secret: property.Secret,
			TypeSpec: typeSpec, DartType: typeSpec.DartType,
			ReferenceKind: referenceKind, ReferenceType: referenceType, ReferenceWireType: referenceWireType,
		})
	}
	if len(fields) == 0 {
		return nil
	}
	return fields
}
