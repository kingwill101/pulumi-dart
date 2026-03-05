package codegen

import (
	"fmt"
	"sort"
	"strings"
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
		writeGeneratedResourceMethods(&b, token, resource, hasPackageRegistration)
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
		writeGeneratedResourceMethods(&b, token, resource, hasPackageRegistration)
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
	writeGeneratedResourceMethods(&b, token, resource, hasPackageRegistration)
	if resource.StateClass != "" {
		writeGeneratedResourceGetMethod(&b, token, resource, className)
	}
	b.WriteString("}\n")
	return []byte(b.String())
}

// writeGeneratedResourceMethods emits method wrappers for schema-defined
// resource methods and maps method tokens to safe Dart identifiers.
func writeGeneratedResourceMethods(
	b *strings.Builder,
	resourceToken string,
	resource packageResourceSpec,
	hasPackageRegistration bool,
) {
	if len(resource.Methods) == 0 {
		return
	}

	usedMethodNames := map[string]int{}
	for _, method := range resource.Methods {
		if method.Name == "" && method.Token == "" {
			continue
		}

		methodNameCandidates := make([]string, 0, 3)
		if method.Name != "" {
			methodNameCandidates = append(methodNameCandidates, method.Name)
		}
		if method.Token != "" {
			methodNameCandidates = append(methodNameCandidates, functionNameCandidatesFromToken(method.Token)...)
		}
		methodName := claimUniqueIdentifierFromCandidates(methodNameCandidates, usedMethodNames)

		b.WriteString("\n")
		writeDartDocComment(b, "  ", method.Comment)
		if method.ArgsClass != "" {
			fmt.Fprintf(
				b,
				"  /// [args] Arguments passed to this method call. {@macro %s}\n",
				argsClassDocMacroName(tokenModulePath(resourceToken), method.ArgsClass),
			)
		}

		callArgs := "const <String, dynamic>{}"
		signature := ""
		if method.ArgsClass != "" {
			signature = fmt.Sprintf("({\n    %s? args,\n  })", method.ArgsClass)
			callArgs = "args?.toMap() ?? const <String, dynamic>{}"
		} else {
			signature = "()"
		}

		registerPackageArg := ""
		if hasPackageRegistration {
			registerPackageArg = ",\n      registerPackageRequest: package_registration.registerPackageRequest"
		}
		methodToken := method.Token
		if methodToken == "" {
			methodToken = method.Name
		}

		if method.ResultClass != "" {
			fmt.Fprintf(
				b,
				"  Future<%s> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    final result = await deployment.callWithResult<Map<String, dynamic>>(\n      %s,\n      %s,\n      self: this%s,\n    );\n    return %s.fromMap(result);\n  }\n",
				method.ResultClass,
				methodName,
				signature,
				dartStringLiteral(methodToken),
				callArgs,
				registerPackageArg,
				method.ResultClass,
			)
			continue
		}

		if method.HasReturn {
			fmt.Fprintf(
				b,
				"  Future<Map<String, dynamic>> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    return await deployment.callWithResult<Map<String, dynamic>>(\n      %s,\n      %s,\n      self: this%s,\n    );\n  }\n",
				methodName,
				signature,
				dartStringLiteral(methodToken),
				callArgs,
				registerPackageArg,
			)
			continue
		}

		fmt.Fprintf(
			b,
			"  Future<void> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    await deployment.call(\n      %s,\n      %s,\n      self: this%s,\n    );\n  }\n",
			methodName,
			signature,
			dartStringLiteral(methodToken),
			callArgs,
			registerPackageArg,
		)
	}
}

// writeGeneratedResourceGetMethod emits the static `get` helper and backing
// `_get` constructor for custom resources that define state types.
func writeGeneratedResourceGetMethod(
	b *strings.Builder,
	token string,
	resource packageResourceSpec,
	className string,
) {
	if resource.StateClass == "" || resource.IsProvider || resource.IsComponent {
		return
	}

	fmt.Fprintf(
		b,
		"\n  /// Gets an existing [%s] resource's state with the given [name] and [id].\n  static %s get(\n    String name,\n    pulumi.Input<String> id, {\n    %s? state,\n  }) {\n    return %s._get(\n      name,\n      state: state?.toMap(),\n      options: pulumi.CustomResourceOptions(id: id),\n    );\n  }\n",
		className,
		className,
		resource.StateClass,
		className,
	)
	fmt.Fprintf(
		b,
		"\n  %s._get(\n    String name, {\n    Map<String, dynamic>? state,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),\n          options ?? pulumi.CustomResourceOptions(),\n        )",
		className,
		dartStringLiteral(token),
	)
	if len(resource.OutputProperties) == 0 {
		b.WriteString(";\n")
		return
	}
	b.WriteString(" {\n")
	ctorParamNames := []string{"name", "state", "options"}
	for _, property := range resource.OutputProperties {
		fmt.Fprintf(
			b,
			"    %s = %s;\n",
			registerOutputAssignmentTarget(property.FieldName, ctorParamNames...),
			resourceRegisterOutputExpression(property),
		)
	}
	b.WriteString("  }\n")
}
