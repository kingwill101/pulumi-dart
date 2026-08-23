package lower

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func Config(
	spec schemair.Config,
	imports []dartir.Import,
	requiredMethodNames map[string]string,
) []byte {
	properties := make([]dartir.ConfigProperty, len(spec.Properties))
	for index, property := range spec.Properties {
		properties[index] = configProperty(property, requiredMethodNames[property.FieldName])
	}
	return render.Config(dartir.Config{
		ClassName:  spec.ClassName,
		Docs:       spec.Comment,
		Imports:    append([]dartir.Import(nil), imports...),
		Properties: properties,
	})
}

func configProperty(property schemair.Property, requiredMethodName string) dartir.ConfigProperty {
	result := dartir.ConfigProperty{
		NameLiteral:     darttext.StringLiteral(property.Name),
		FieldName:       property.FieldName,
		Docs:            property.Comment,
		GetterType:      ConfigPropertyGetterType(property),
		ParseExpression: ConfigPropertyParseExpression(property, "raw"),
	}
	if property.Required {
		result.Required = &dartir.RequiredConfigAccessor{
			MethodName: requiredMethodName,
			ReturnType: PropertyBaseType(property),
		}
	}
	return result
}
