package codegen

import (
	"fmt"
	"strings"
)

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
