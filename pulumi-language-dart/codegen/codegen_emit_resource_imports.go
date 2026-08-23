package codegen

import (
	"sort"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func lowerResourceImports(
	resource packageResourceSpec,
	modulePath string,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
) []dartir.Import {
	imports := []dartir.Import{{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"}}
	typeImports := map[string]struct{}{}
	classNames := []string{resource.ArgsClass, resource.StateClass}
	for _, method := range resource.Methods {
		classNames = append(classNames, method.ArgsClass, method.ResultClass)
	}
	for _, className := range classNames {
		if className == "" {
			continue
		}
		if path, ok := resolveTypeFilePath(typeFilesByName, className, modulePath); ok {
			typeImports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	for _, reference := range referencedTypesFromProperties(resource.OutputProperties) {
		if path, ok := resolveTypeFilePath(typeFilesByName, reference, modulePath); ok {
			typeImports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	paths := make([]string, 0, len(typeImports))
	for path := range typeImports {
		paths = append(paths, path)
	}
	sort.Strings(paths)
	for _, path := range paths {
		imports = append(imports, dartir.Import{URI: path})
	}
	externalImports := externalImportsFromProperties(resource.OutputProperties)
	externalPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalPaths = append(externalPaths, path)
	}
	sort.Strings(externalPaths)
	for _, path := range externalPaths {
		imports = append(imports, dartir.Import{URI: path, Prefix: externalImports[path]})
	}
	if hasPackageRegistration {
		imports = append(imports, dartir.Import{
			URI: relativeDartImportPath(filePath, registrationFilePath), Prefix: "package_registration",
		})
	}
	return imports
}
