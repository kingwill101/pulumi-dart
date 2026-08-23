package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
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

	outputs := make([]dartir.ResourceOutput, len(resource.OutputProperties))
	assignments := make([]dartir.Assignment, len(resource.OutputProperties))
	constructorNames := resourceConstructorParameterNames(kind, resource.ArgsClass != "")
	for index, property := range resource.OutputProperties {
		outputs[index] = dartir.ResourceOutput{
			Name: property.FieldName,
			Docs: property.Comment,
			Type: resourceOutputValueType(property),
		}
		assignments[index] = dartir.Assignment{
			Target:     registerOutputAssignmentTarget(property.FieldName, constructorNames...),
			Expression: resourceRegisterOutputExpression(property),
		}
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
	return render.Resource(dartir.ResourceClass{
		Name:                   className,
		Docs:                   resource.Comment,
		Kind:                   kind,
		Imports:                imports,
		ArgsClass:              resource.ArgsClass,
		ArgsDocs:               argsDocs,
		TokenLiteral:           dartStringLiteral(tokenValue),
		HasPackageRegistration: hasPackageRegistration,
		Outputs:                outputs,
		ConstructorAssignments: assignments,
		Members:                lowerResourceMembers(token, resource, className, hasPackageRegistration),
	})
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

func resourceConstructorParameterNames(kind dartir.ResourceKind, hasArgsClass bool) []string {
	if kind == dartir.ProviderResource || kind == dartir.ComponentResource {
		if !hasArgsClass {
			return []string{"name", "options"}
		}
	}
	return []string{"name", "args", "options"}
}
