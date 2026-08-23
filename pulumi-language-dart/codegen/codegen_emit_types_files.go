package codegen

import (
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

func generatedObjectClassFile(
	objectClass packageObjectClassSpec,
	filePath string,
	typeFilesByName map[string][]generatedTypeFile,
) []byte {
	imports := []dartir.Import{}
	if objectClass.UsesInputTypes || objectClassNeedsObjectHelpers(objectClass) {
		imports = append(imports, dartir.Import{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"})
	}

	internalImports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(objectClass.Properties) {
		if ref == objectClass.ClassName {
			continue
		}
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, objectClass.ModulePath); ok {
			internalImports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(internalImports))
	for path := range internalImports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		imports = append(imports, dartir.Import{URI: path})
	}
	externalImports := externalImportsFromProperties(objectClass.Properties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		imports = append(imports, dartir.Import{URI: path, Prefix: externalImports[path]})
	}

	properties := make([]dartir.ObjectProperty, len(objectClass.Properties))
	for index, property := range objectClass.Properties {
		properties[index] = dartir.ObjectProperty{
			NameLiteral:       dartStringLiteral(property.Name),
			FieldName:         property.FieldName,
			Docs:              property.Comment,
			FieldType:         objectClassPropertyDartType(objectClass, property),
			ConstructorDocs:   constructorParameterDoc(property),
			Required:          property.Required,
			ToMapExpression:   objectClassToMapExpression(objectClass, property),
			FromMapExpression: objectClassFromMapExpression(objectClass, property),
		}
	}
	docsMacro := ""
	if strings.HasSuffix(objectClass.ClassName, "Args") {
		docsMacro = argsClassDocMacroName(objectClass.ModulePath, objectClass.ClassName)
	}
	return render.ObjectClass(dartir.ObjectClass{
		Name:       objectClass.ClassName,
		Docs:       objectClass.Comment,
		DocsMacro:  docsMacro,
		Imports:    imports,
		Properties: properties,
	})
}

func generatedEnumFile(enumSpec packageEnumSpec) []byte {
	return lower.Enum(enumSpec)
}
