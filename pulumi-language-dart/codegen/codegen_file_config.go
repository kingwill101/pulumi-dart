package codegen

import (
	"sort"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

// generatedConfigFile renders the generated config accessors file for provider
// package configuration variables.
//
// The file includes only the imports needed by discovered config property
// references and external provider types.
func generatedConfigFile(
	spec *packageSchema,
	packageName string,
	filePath string,
	typeFilesByName map[string][]generatedTypeFile,
) []byte {
	if spec.Config == nil {
		return nil
	}

	_ = packageName
	imports := []dartir.Import{}
	configNeedsJSONDecode := false
	for _, property := range spec.Config.Properties {
		if configTypeRequiresJSONDecode(propertyTypeSpec(property)) {
			configNeedsJSONDecode = true
			break
		}
	}
	if configNeedsJSONDecode {
		imports = append(imports, dartir.Import{URI: "dart:convert"})
	}
	imports = append(imports, dartir.Import{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"})

	localImports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(spec.Config.Properties) {
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, "config"); ok {
			localImports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(localImports))
	for path := range localImports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		imports = append(imports, dartir.Import{URI: path})
	}
	externalImports := externalImportsFromProperties(spec.Config.Properties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		imports = append(imports, dartir.Import{URI: path, Prefix: externalImports[path]})
	}

	properties := make([]dartir.ConfigProperty, len(spec.Config.Properties))
	for index, property := range spec.Config.Properties {
		properties[index] = lowerConfigProperty(property)
	}
	return render.Config(dartir.Config{
		ClassName:  spec.Config.ClassName,
		Docs:       spec.Config.Comment,
		Imports:    imports,
		Properties: properties,
	})
}

func lowerConfigProperty(property packagePropertySpec) dartir.ConfigProperty {
	result := dartir.ConfigProperty{
		NameLiteral:     dartStringLiteral(property.Name),
		FieldName:       property.FieldName,
		Docs:            property.Comment,
		GetterType:      configPropertyGetterType(property),
		ParseExpression: configPropertyParseExpression(property, "raw"),
	}
	if property.Required {
		result.Required = &dartir.RequiredConfigAccessor{
			MethodName: "require" + toDartClassName(property.FieldName),
			ReturnType: propertyBaseDartType(property),
		}
	}
	return result
}
