package codegen

import (
	"encoding/json"
	"fmt"
	"sort"
	"strings"

	"github.com/pkg/errors"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

// makeRawResourceOutputPropertySpecs builds deterministic output property
// descriptors for a raw resource schema while applying output-type coercions.
func makeRawResourceOutputPropertySpecs(
	resource rawResourceSpec,
	namedTypeRefs map[string]packageNamedTypeRef,
	externalRefs *externalRefResolver,
) []packagePropertySpec {
	if len(resource.Properties) == 0 {
		return nil
	}

	propertyNames := make([]string, 0, len(resource.Properties))
	for name := range resource.Properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)

	requiredSet := rawRequiredSet(resource.Required)
	usedFieldNames := map[string]int{
		"urn": 1,
	}
	if !resource.IsComponent {
		usedFieldNames["id"] = 1
	}

	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		if propertyName == "urn" {
			continue
		}
		if !resource.IsComponent && propertyName == "id" {
			continue
		}

		property := resource.Properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		if resource.IsComponent {
			isRequired = false
		}
		typeSpec := dartTypeSpecFromRawPropertyType(
			property,
			namedTypeRefs,
			false,
			externalRefs,
		)
		typeSpec = coerceOutputCollectionType(typeSpec)
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

	if len(fields) == 0 {
		return nil
	}
	return fields
}

// schemaObjectPropertiesFromRef returns the canonical property set for a schema
// object, preferring input-shape properties when the object represents inputs.
func schemaObjectPropertiesFromRef(objectType *schema.ObjectType) []*schema.Property {
	if objectType == nil {
		return nil
	}
	if objectType.InputShape != nil && (objectType.IsInputShape() || len(objectType.Properties) == 0) {
		return objectType.InputShape.Properties
	}
	return objectType.Properties
}

// schemaPropertiesWithoutSelf removes the synthetic "__self__" marker property
// used by provider schemas.
func schemaPropertiesWithoutSelf(properties []*schema.Property) []*schema.Property {
	if len(properties) == 0 {
		return nil
	}
	filtered := make([]*schema.Property, 0, len(properties))
	for _, property := range properties {
		if property == nil || property.Name == "__self__" {
			continue
		}
		filtered = append(filtered, property)
	}
	if len(filtered) == 0 {
		return nil
	}
	return filtered
}

// rawObjectSpecPropertiesWithoutSelf removes "__self__" from raw property and
// required collections and returns a stable required-order slice.
func rawObjectSpecPropertiesWithoutSelf(properties map[string]rawPropertyTypeSpec, required []string) (map[string]rawPropertyTypeSpec, []string) {
	if len(properties) == 0 {
		return map[string]rawPropertyTypeSpec{}, nil
	}

	filteredProperties := make(map[string]rawPropertyTypeSpec, len(properties))
	filteredRequired := make([]string, 0, len(required))
	for key, value := range properties {
		if key == "__self__" {
			continue
		}
		filteredProperties[key] = value
	}
	for _, property := range required {
		if property != "__self__" {
			filteredRequired = append(filteredRequired, property)
		}
	}
	sort.Strings(filteredRequired)
	return filteredProperties, filteredRequired
}

// parsePackageSchema parses a provider schema JSON document into the normalized
// packageSchema model used by Dart code generation.
func parsePackageSchema(schemaJSON, outputDir string) (*packageSchema, error) {
	var rawSpec rawPackageSchema
	if err := json.Unmarshal([]byte(schemaJSON), &rawSpec); err != nil {
		return nil, fmt.Errorf("failed to parse package schema: %w", err)
	}
	if rawSpec.Name == "" {
		return nil, errors.New("package schema is missing name")
	}

	spec := &packageSchema{
		Name:          rawSpec.Name,
		Namespace:     rawSpec.Namespace,
		Version:       rawSpec.Version,
		Description:   strings.TrimSpace(rawSpec.Description),
		License:       strings.TrimSpace(rawSpec.License),
		Homepage:      strings.TrimSpace(rawSpec.Homepage),
		Repository:    strings.TrimSpace(rawSpec.Repository),
		Keywords:      append([]string(nil), rawSpec.Keywords...),
		Resources:     map[string]packageResourceSpec{},
		Functions:     map[string]packageFunctionSpec{},
		Config:        nil,
		Enums:         []packageEnumSpec{},
		ObjectClasses: []packageObjectClassSpec{},
	}

	discovery := discoverRawSchema(rawSpec)
	externalRefs := newExternalRefResolver(rawSpec.Name, outputDir)
	lowerRawTypeDeclarationsAndConfig(spec, rawSpec, discovery, externalRefs)
	lowerRawResources(spec, rawSpec, discovery, externalRefs)
	lowerRawFunctions(spec, rawSpec, discovery, externalRefs)
	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec, nil
}
