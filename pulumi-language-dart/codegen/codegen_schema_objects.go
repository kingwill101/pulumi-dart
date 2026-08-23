package codegen

import (
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

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
