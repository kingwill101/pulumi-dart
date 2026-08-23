package codegen

import (
	"sort"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
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
	}
	importPaths := make([]string, 0, len(typeImports))
	for path := range typeImports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		imports = append(imports, dartir.Import{URI: path})
	}
	if hasPackageRegistration {
		imports = append(imports, dartir.Import{
			URI:    relativeDartImportPath(filePath, registrationFilePath),
			Prefix: "package_registration",
		})
	}

	declarations := make([]dartir.InvokeFunction, len(functions))
	for index, function := range functions {
		argsDocsMacro := ""
		if function.Function.ArgsClass != "" {
			argsDocsMacro = argsClassDocMacroName(function.ModulePath, function.Function.ArgsClass)
		}
		declarations[index] = dartir.InvokeFunction{
			Name:                   function.FuncName,
			Docs:                   function.Function.Comment,
			ArgsDocsMacro:          argsDocsMacro,
			ArgsClass:              function.Function.ArgsClass,
			HasArgs:                function.Function.HasArgs,
			ResultClass:            function.Function.ResultClass,
			TokenLiteral:           dartStringLiteral(function.Token),
			HasPackageRegistration: hasPackageRegistration,
		}
	}
	return render.FunctionsLibrary(dartir.FunctionsLibrary{
		Imports:   imports,
		Functions: declarations,
	})
}
