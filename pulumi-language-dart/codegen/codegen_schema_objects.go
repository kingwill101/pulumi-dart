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
			DefaultExpression: schemaDefaultInputExpression(property.DefaultValue),
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

func objectClassHasDefaults(object packageObjectClassSpec) bool {
	for _, property := range object.Properties {
		if property.DefaultExpression != "" {
			return true
		}
	}
	return false
}
