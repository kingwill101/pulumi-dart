package codegen

import (
	"sort"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

func generatedFunctionsFile(
	functions []generatedFunctionSpec,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
) []byte {
	imports := []dartir.Import{{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"}}
	typeImports := map[string]struct{}{}
	for _, function := range functions {
		for _, className := range []string{function.Function.ArgsClass, function.Function.ResultClass} {
			if className == "" {
				continue
			}
			if path, ok := resolveTypeFilePath(typeFilesByName, className, function.ModulePath); ok {
				typeImports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
		for _, reference := range referencedTypesFromProperties(function.Function.Parameters) {
			if path, ok := resolveTypeFilePath(typeFilesByName, reference, function.ModulePath); ok {
				typeImports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
	}
	importPaths := make([]string, 0, len(typeImports))
	for path := range typeImports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		imports = append(imports, dartir.Import{URI: path})
	}
	externalImports := map[string]string{}
	for _, function := range functions {
		for path, alias := range externalImportsFromProperties(function.Function.Parameters) {
			externalImports[path] = alias
		}
	}
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
			URI:    relativeDartImportPath(filePath, registrationFilePath),
			Prefix: "package_registration",
		})
	}

	invokes := make([]lower.Invoke, len(functions))
	for index, function := range functions {
		argsDocsMacro := ""
		if function.Function.ArgsClass != "" {
			argsDocsMacro = argsClassDocMacroName(function.ModulePath, function.Function.ArgsClass)
		}
		invokes[index] = lower.Invoke{
			Token:         function.Token,
			Name:          function.FuncName,
			ArgsDocsMacro: argsDocsMacro,
			Function:      function.Function,
		}
	}
	return render.FunctionsLibrary(lower.FunctionsLibrary(invokes, imports, hasPackageRegistration))
}
