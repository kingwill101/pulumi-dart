package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

// generatedResourceFile renders a Dart resource class source file for provider,
// custom, or component resources, including imports, constructors, outputs, and
// optional package registration wiring.
func generatedResourceFile(
	token string,
	resource packageResourceSpec,
	className string,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
) []byte {
	var b strings.Builder
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")

	imports := map[string]struct{}{}
	modulePath := tokenModulePath(token)
	if resource.ArgsClass != "" {
		if path, ok := resolveTypeFilePath(typeFilesByName, resource.ArgsClass, modulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	if resource.StateClass != "" {
		if path, ok := resolveTypeFilePath(typeFilesByName, resource.StateClass, modulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	for _, method := range resource.Methods {
		if method.ArgsClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, method.ArgsClass, modulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
		if method.ResultClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, method.ResultClass, modulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
	}
	for _, ref := range referencedTypesFromProperties(resource.OutputProperties) {
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, modulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	externalImports := externalImportsFromProperties(resource.OutputProperties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		fmt.Fprintf(&b, "import '%s' as %s;\n", path, externalImports[path])
	}
	if hasPackageRegistration && !resource.IsComponent {
		fmt.Fprintf(&b, "import '%s' as package_registration;\n", relativeDartImportPath(filePath, registrationFilePath))
	}
	b.WriteString("\n")

	writeDartDocComment(&b, "", resource.Comment)
	if resource.IsProvider {
		providerPackageName := tokenProviderName(token)
		if providerPackageName == "" {
			providerPackageName = strings.TrimSpace(token)
		}
		fmt.Fprintf(&b, "class %s extends pulumi.ProviderResource {\n", className)
		for _, property := range resource.OutputProperties {
			writeDartDocComment(&b, "  ", property.Comment)
			fmt.Fprintf(
				&b,
				"  late final pulumi.Output<%s> %s;\n",
				resourceOutputValueType(property),
				property.FieldName,
			)
		}
		if len(resource.OutputProperties) > 0 {
			b.WriteString("\n")
		}

		if resource.ArgsClass != "" {
			writeGeneratedResourceConstructorDoc(
				&b,
				"  ",
				className,
				"args",
				fmt.Sprintf(
					"Arguments used to configure this [%s]. {@macro %s}",
					className,
					argsClassDocMacroName(modulePath, resource.ArgsClass),
				),
			)
		} else {
			writeGeneratedResourceConstructorDoc(&b, "  ", className, "", "")
		}

		if resource.ArgsClass != "" {
			fmt.Fprintf(&b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions(),\n        )", className, resource.ArgsClass, dartStringLiteral(providerPackageName))
		} else {
			fmt.Fprintf(&b, "  %s(\n    String name, {\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          const <String, pulumi.Input<dynamic>>{},\n          options ?? pulumi.CustomResourceOptions(),\n        )", className, dartStringLiteral(providerPackageName))
		}

		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n")
		} else {
			b.WriteString(" {\n")
			ctorParamNames := []string{"name", "options"}
			if resource.ArgsClass != "" {
				ctorParamNames = []string{"name", "args", "options"}
			}
			for _, property := range resource.OutputProperties {
				fmt.Fprintf(
					&b,
					"    %s = %s;\n",
					registerOutputAssignmentTarget(property.FieldName, ctorParamNames...),
					resourceRegisterOutputExpression(property),
				)
			}
			b.WriteString("  }\n")
		}
		render.WriteResourceMembers(&b, lowerResourceMembers(token, resource, className, hasPackageRegistration))
		b.WriteString("}\n")

		return []byte(b.String())
	}

	resourceRegisterPackageArg := ""
	if hasPackageRegistration {
		resourceRegisterPackageArg = ",\n          registerPackageRequest: package_registration.registerPackageRequest"
	}

	if resource.IsComponent {
		fmt.Fprintf(&b, "class %s extends pulumi.ComponentResource {\n", className)
		for _, property := range resource.OutputProperties {
			writeDartDocComment(&b, "  ", property.Comment)
			fmt.Fprintf(
				&b,
				"  late final pulumi.Output<%s> %s;\n",
				resourceOutputValueType(property),
				property.FieldName,
			)
		}
		if len(resource.OutputProperties) > 0 {
			b.WriteString("\n")
		}

		if resource.ArgsClass != "" {
			writeGeneratedResourceConstructorDoc(
				&b,
				"  ",
				className,
				"args",
				fmt.Sprintf(
					"Arguments used to configure this [%s]. {@macro %s}",
					className,
					argsClassDocMacroName(modulePath, resource.ArgsClass),
				),
			)
		} else {
			writeGeneratedResourceConstructorDoc(&b, "  ", className, "", "")
		}

		signature := "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )"
		if resource.ArgsClass != "" {
			signature = "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )"
			fmt.Fprintf(&b, signature, className, resource.ArgsClass, dartStringLiteral(token), resourceRegisterPackageArg)
		} else {
			fmt.Fprintf(&b, signature, className, dartStringLiteral(token), resourceRegisterPackageArg)
		}

		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n")
		} else {
			b.WriteString(" {\n")
			ctorParamNames := []string{"name", "options"}
			if resource.ArgsClass != "" {
				ctorParamNames = []string{"name", "args", "options"}
			}
			for _, property := range resource.OutputProperties {
				fmt.Fprintf(
					&b,
					"    %s = %s;\n",
					registerOutputAssignmentTarget(property.FieldName, ctorParamNames...),
					resourceRegisterOutputExpression(property),
				)
			}
			b.WriteString("  }\n")
		}
		render.WriteResourceMembers(&b, lowerResourceMembers(token, resource, className, hasPackageRegistration))
		b.WriteString("}\n")
		return []byte(b.String())
	}

	fmt.Fprintf(&b, "class %s extends pulumi.CustomResource {\n", className)
	for _, property := range resource.OutputProperties {
		writeDartDocComment(&b, "  ", property.Comment)
		fmt.Fprintf(
			&b,
			"  late final pulumi.Output<%s> %s;\n",
			resourceOutputValueType(property),
			property.FieldName,
		)
	}
	if len(resource.OutputProperties) > 0 {
		b.WriteString("\n")
	}

	if resource.ArgsClass != "" {
		writeGeneratedResourceConstructorDoc(
			&b,
			"  ",
			className,
			"args",
			fmt.Sprintf(
				"Arguments used to configure this [%s]. {@macro %s}",
				className,
				argsClassDocMacroName(modulePath, resource.ArgsClass),
			),
		)
	} else {
		writeGeneratedResourceConstructorDoc(
			&b,
			"  ",
			className,
			"args",
			"The raw input arguments for this resource.",
		)
	}

	if resource.ArgsClass != "" {
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
			className,
			resource.ArgsClass,
			dartStringLiteral(token),
			resourceRegisterPackageArg,
		)
	} else {
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
			className,
			dartStringLiteral(token),
			resourceRegisterPackageArg,
		)
	}

	if len(resource.OutputProperties) == 0 {
		b.WriteString(";\n")
	} else {
		b.WriteString(" {\n")
		ctorParamNames := []string{"name", "args", "options"}
		for _, property := range resource.OutputProperties {
			fmt.Fprintf(
				&b,
				"    %s = %s;\n",
				registerOutputAssignmentTarget(property.FieldName, ctorParamNames...),
				resourceRegisterOutputExpression(property),
			)
		}
		b.WriteString("  }\n")
	}
	render.WriteResourceMembers(&b, lowerResourceMembers(token, resource, className, hasPackageRegistration))
	b.WriteString("}\n")
	return []byte(b.String())
}

// writeGeneratedResourceMethods emits method wrappers for schema-defined
// resource methods and maps method tokens to safe Dart identifiers.
