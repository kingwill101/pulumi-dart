package lower

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func ObjectClass(spec schemair.ObjectClass, imports []dartir.Import, docsMacro string) dartir.ObjectClass {
	properties := make([]dartir.ObjectProperty, len(spec.Properties))
	for index, property := range spec.Properties {
		properties[index] = dartir.ObjectProperty{
			NameLiteral:       darttext.StringLiteral(property.Name),
			FieldName:         property.FieldName,
			Docs:              property.Comment,
			FieldType:         ObjectPropertyType(spec, property),
			ConstructorDocs:   ConstructorParameterDocs(property),
			Required:          property.Required,
			DefaultExpression: property.DefaultExpression,
			ToMapExpression:   ObjectToMapExpression(spec, property),
			FromMapExpression: ObjectFromMapExpression(spec, property),
		}
	}
	return dartir.ObjectClass{
		Name:       spec.ClassName,
		Docs:       spec.Comment,
		DocsMacro:  docsMacro,
		Imports:    append([]dartir.Import(nil), imports...),
		Properties: properties,
	}
}
