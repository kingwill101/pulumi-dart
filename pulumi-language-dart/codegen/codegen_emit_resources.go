package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

func generatedResourceFile(
	token string,
	resource packageResourceSpec,
	className string,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
) []byte {
	modulePath := tokenModulePath(token)
	imports := lowerResourceImports(
		resource,
		modulePath,
		filePath,
		hasPackageRegistration,
		typeFilesByName,
		registrationFilePath,
	)
	kind := dartir.CustomResource
	tokenValue := token
	if resource.IsProvider {
		kind = dartir.ProviderResource
		tokenValue = tokenProviderName(token)
		if tokenValue == "" {
			tokenValue = strings.TrimSpace(token)
		}
	} else if resource.IsComponent {
		kind = dartir.ComponentResource
	}

	argsDocs := ""
	if resource.ArgsClass != "" {
		argsDocs = fmt.Sprintf(
			"Arguments used to configure this [%s]. {@macro %s}",
			className,
			argsClassDocMacroName(modulePath, resource.ArgsClass),
		)
	} else if kind == dartir.CustomResource {
		argsDocs = "The raw input arguments for this resource."
	}
	return render.Resource(lower.ResourceClass(lower.Resource{
		Token:                  token,
		RegistrationToken:      tokenValue,
		ClassName:              className,
		Kind:                   kind,
		ArgsDocs:               argsDocs,
		Imports:                imports,
		Methods:                planResourceMethods(token, resource.Methods),
		HasPackageRegistration: hasPackageRegistration,
		Schema:                 resource,
	}))
}

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
	if hasPackageRegistration && !resource.IsComponent {
		imports = append(imports, dartir.Import{
			URI:    relativeDartImportPath(filePath, registrationFilePath),
			Prefix: "package_registration",
		})
	}
	return imports
}
