package codegen

import (
	"sort"
	"strings"
)

func makeRawObjectClassSpec(
	baseName, modulePath, classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	usedClassNames map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes, usesInputTypes bool,
	externalRefs *externalRefResolver,
	nameSuffixes ...string,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}
	className := uniqueQualifiedClassName(baseName, modulePath, usedClassNames, nameSuffixes...)
	return buildRawObjectClassSpec(className, modulePath, classComment, properties, required, namedTypeRefs, useReferenceTypes, usesInputTypes, externalRefs)
}

func buildRawObjectClassSpec(
	className, modulePath, classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes, usesInputTypes bool,
	externalRefs *externalRefResolver,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}
	propertyNames := make([]string, 0, len(properties))
	for name := range properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)
	requiredSet := rawRequiredSet(required)
	usedFieldNames := map[string]int{}
	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		property := properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		typeSpec := dartTypeSpecFromRawPropertyType(property, namedTypeRefs, useReferenceTypes, externalRefs)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name: propertyName, FieldName: propertyFieldName(propertyName, usedFieldNames),
			Comment: strings.TrimSpace(property.Description), Required: isRequired,
			TypeSpec: typeSpec, DartType: typeSpec.DartType,
			ReferenceKind: referenceKind, ReferenceType: referenceType, ReferenceWireType: referenceWireType,
		})
	}
	return &packageObjectClassSpec{
		ClassName: className, ModulePath: modulePath, Comment: strings.TrimSpace(classComment),
		UsesInputTypes: usesInputTypes, Properties: fields,
	}
}
