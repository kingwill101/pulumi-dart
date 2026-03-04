package codegen

import (
	"fmt"
	"sort"
	"strings"
)

func generatedPackageLibrary(spec *packageSchema, packageName string) []byte {
	var b strings.Builder
	_ = packageName
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n\n")

	resourceTokens := make([]string, 0, len(spec.Resources))
	for token := range spec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)
	functionTokens := make([]string, 0, len(spec.Functions))
	for token := range spec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)
	hasPackageRegistration := spec.Parameterization != nil &&
		spec.Parameterization.PluginName != "" &&
		spec.Parameterization.PluginVersion != "" &&
		spec.Parameterization.PackageVersion != ""
	usesDeploymentModels := len(functionTokens) > 0 || hasPackageRegistration
	hasConfig := spec.Config != nil
	configNeedsJSONDecode := false
	hasInputReferenceMappings := false
	needsDecodeListHelper := false
	needsDecodeMapHelper := false
	needsEncodeListHelper := false
	needsEncodeMapHelper := false
	for _, objectClass := range spec.ObjectClasses {
		for _, property := range objectClass.Properties {
			typeSpec := propertyTypeSpec(property)
			if objectClass.UsesInputTypes && typeSpecNeedsEncodeConversion(typeSpec) {
				hasInputReferenceMappings = true
			}
			if typeSpecNeedsDecodeListHelper(typeSpec) {
				needsDecodeListHelper = true
			}
			if typeSpecNeedsDecodeMapHelper(typeSpec) {
				needsDecodeMapHelper = true
			}
			if typeSpecNeedsEncodeListHelper(typeSpec) {
				needsEncodeListHelper = true
			}
			if typeSpecNeedsEncodeMapHelper(typeSpec) {
				needsEncodeMapHelper = true
			}
		}
	}
	if hasConfig {
		for _, property := range spec.Config.Properties {
			typeSpec := propertyTypeSpec(property)
			if configTypeRequiresJSONDecode(typeSpec) {
				configNeedsJSONDecode = true
			}
			if typeSpecNeedsDecodeListHelper(typeSpec) {
				needsDecodeListHelper = true
			}
			if typeSpecNeedsDecodeMapHelper(typeSpec) {
				needsDecodeMapHelper = true
			}
		}
	}
	if configNeedsJSONDecode {
		b.WriteString("import 'dart:convert';\n\n")
	}

	if usesDeploymentModels {
		b.WriteString("import 'package:pulumi/src/deployment/models.dart' as deployment_models;\n\n")
	}

	if len(resourceTokens) > 0 {
		b.WriteString(`pulumi.Inputs _mapToInputs(Map<String, dynamic> args) {
  final mapped = <String, pulumi.Input<dynamic>>{};
  for (final entry in args.entries) {
    final value = entry.value;
    if (value is pulumi.Input<dynamic>) {
      mapped[entry.key] = value;
    } else {
      mapped[entry.key] = pulumi.Input.fromValue(value);
    }
  }
  return mapped;
}

`)
	}

	if hasInputReferenceMappings {
		b.WriteString(`pulumi.Input<U> _mapInputValue<T, U>(pulumi.Input<T> input, U Function(T value) mapper) {
  return pulumi.Input.fromOutput(input.toOutput().apply((value) => mapper(value as T)));
}

pulumi.Input<U>? _mapOptionalInputValue<T, U>(pulumi.Input<T>? input, U Function(T value) mapper) {
  if (input == null) {
    return null;
  }
  return _mapInputValue<T, U>(input, mapper);
}

`)
	}

	if needsDecodeListHelper {
		b.WriteString(`List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

`)
	}

	if needsDecodeMapHelper {
		b.WriteString(`Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

`)
	}

	if needsEncodeListHelper {
		b.WriteString(`List<U> _encodeList<T, U>(List<T> value, U Function(T value) encoder) {
  return value.map((item) => encoder(item)).toList(growable: false);
}

`)
	}

	if needsEncodeMapHelper {
		b.WriteString(`Map<String, U> _encodeMapValues<T, U>(Map<String, T> value, U Function(T value) encoder) {
  return value.map((key, item) => MapEntry(key, encoder(item)));
}

`)
	}

	if len(functionTokens) > 0 {
		b.WriteString(`deployment_models.InvokeOptions? _toDeploymentInvokeOptions(pulumi.InvokeOptions? options) {
  if (options == null) {
    return null;
  }

  return deployment_models.InvokeOptions(
    parent: options.parent,
    provider: options.provider,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
  );
}

`)
	}

	if hasPackageRegistration {
		downloadURLLine := ""
		if spec.Parameterization.DownloadURL != "" {
			downloadURLLine = fmt.Sprintf("\n  downloadUrl: %q,", spec.Parameterization.DownloadURL)
		}
		fmt.Fprintf(
			&b,
			`final deployment_models.RegisterPackageRequest _registerPackageRequest = deployment_models.RegisterPackageRequest(
  name: %q,
  version: %q,%s
  parameterization: deployment_models.Parameterization(
    name: %q,
    version: %q,
    value: %s,
  ),
);

`,
			spec.Parameterization.PluginName,
			spec.Parameterization.PluginVersion,
			downloadURLLine,
			spec.Parameterization.PackageName,
			spec.Parameterization.PackageVersion,
			dartByteListLiteral(spec.Parameterization.Value),
		)
	}

	if len(resourceTokens) == 0 &&
		len(functionTokens) == 0 &&
		!hasConfig &&
		len(spec.Enums) == 0 &&
		len(spec.ObjectClasses) == 0 {
		b.WriteString("// This package schema did not define resources or functions.\n")
		return []byte(b.String())
	}

	if len(spec.Enums) > 0 {
		for _, enumSpec := range spec.Enums {
			writeGeneratedEnumClass(&b, enumSpec)
		}
	}

	if len(spec.ObjectClasses) > 0 {
		for _, objectClass := range spec.ObjectClasses {
			writeGeneratedObjectClass(&b, objectClass)
		}
	}

	if hasConfig {
		writeGeneratedConfigClass(&b, *spec.Config)
	}

	usedClassNames := map[string]int{}
	resourceRegisterPackageArg := ""
	if hasPackageRegistration {
		resourceRegisterPackageArg = ",\n          registerPackageRequest: _registerPackageRequest"
	}
	for _, token := range resourceTokens {
		resource := spec.Resources[token]
		className := resourceClassNameFromToken(token, usedClassNames)
		writeDartDocComment(&b, "", resource.Comment)

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

			signature := "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )"
			if resource.ArgsClass != "" {
				signature = "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )"
				fmt.Fprintf(&b, signature, className, resource.ArgsClass, dartStringLiteral(token), resourceRegisterPackageArg)
			} else {
				fmt.Fprintf(&b, signature, className, dartStringLiteral(token), resourceRegisterPackageArg)
			}

			if len(resource.OutputProperties) == 0 {
				b.WriteString(";\n}\n\n")
			} else {
				b.WriteString(" {\n")
				ctorParamNames := []string{"name", "options"}
				if resource.ArgsClass != "" {
					ctorParamNames = []string{"name", "args", "options"}
				}
				for _, property := range resource.OutputProperties {
					fmt.Fprintf(
						&b,
						"    %s = registerOutput<%s>(%s);\n",
						registerOutputAssignmentTarget(property.FieldName, ctorParamNames...),
						resourceOutputValueType(property),
						dartStringLiteral(property.Name),
					)
				}
				b.WriteString("  }\n}\n\n")
			}
			continue
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
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
				className,
				resource.ArgsClass,
				dartStringLiteral(token),
				resourceRegisterPackageArg,
			)
		} else {
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          _mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
				className,
				dartStringLiteral(token),
				resourceRegisterPackageArg,
			)
		}
		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n}\n\n")
			continue
		}
		b.WriteString(" {\n")
		ctorParamNames := []string{"name", "args", "options"}
		for _, property := range resource.OutputProperties {
			fmt.Fprintf(
				&b,
				"    %s = registerOutput<%s>(%s);\n",
				registerOutputAssignmentTarget(property.FieldName, ctorParamNames...),
				resourceOutputValueType(property),
				dartStringLiteral(property.Name),
			)
		}
		b.WriteString("  }\n}\n\n")
	}

	usedFunctionNames := map[string]int{}
	invokeRegisterPackageArg := ""
	if hasPackageRegistration {
		invokeRegisterPackageArg = ",\n    registerPackageRequest: _registerPackageRequest"
	}
	for _, token := range functionTokens {
		funcName := functionNameFromToken(token, usedFunctionNames)
		function := spec.Functions[token]
		writeDartDocComment(&b, "", function.Comment)

		signatureArgs := "Map<String, dynamic> args, {\n  pulumi.InvokeOptions? options,\n"
		invokeArgs := "args"
		if function.ArgsClass != "" {
			signatureArgs = fmt.Sprintf("%s args, {\n  pulumi.InvokeOptions? options,\n", function.ArgsClass)
			invokeArgs = "args.toMap()"
		} else if !function.HasArgs {
			signatureArgs = "{\n  pulumi.InvokeOptions? options,\n"
			invokeArgs = "const <String, dynamic>{}"
		}

		if function.ResultClass != "" {
			fmt.Fprintf(
				&b,
				"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n\n",
				function.ResultClass,
				funcName,
				signatureArgs,
				dartStringLiteral(token),
				invokeArgs,
				invokeRegisterPackageArg,
				function.ResultClass,
			)
			continue
		}

		fmt.Fprintf(
			&b,
			"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n}\n\n",
			funcName,
			signatureArgs,
			dartStringLiteral(token),
			invokeArgs,
			invokeRegisterPackageArg,
		)
	}

	return []byte(b.String())
}
