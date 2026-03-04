package codegen

import (
	"fmt"
	"sort"
	"strings"
)

// writeGeneratedFunctionDefinition emits a single invoke helper function for a
// schema function token.
//
// It emits typed args/result wrappers when available and falls back to
// Map<String, dynamic> for untyped functions.
func writeGeneratedFunctionDefinition(
	b *strings.Builder,
	token string,
	function packageFunctionSpec,
	funcName string,
	hasPackageRegistration bool,
) {
	invokeRegisterPackageArg := ""
	if hasPackageRegistration {
		invokeRegisterPackageArg = ",\n    registerPackageRequest: package_registration.registerPackageRequest"
	}

	writeDartDocComment(b, "", function.Comment)
	if function.ArgsClass != "" {
		fmt.Fprintf(
			b,
			"/// [args] Arguments passed to this invoke. {@macro %s}\n",
			argsClassDocMacroName(tokenModulePath(token), function.ArgsClass),
		)
	}
	fmt.Fprintf(b, "/// [options] Invoke options controlling this call.\n")
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
			b,
			"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n",
			function.ResultClass,
			funcName,
			signatureArgs,
			dartStringLiteral(token),
			invokeArgs,
			invokeRegisterPackageArg,
			function.ResultClass,
		)
		return
	}

	fmt.Fprintf(
		b,
		"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n}\n",
		funcName,
		signatureArgs,
		dartStringLiteral(token),
		invokeArgs,
		invokeRegisterPackageArg,
	)
}

// generatedFunctionsFile renders the shared functions.dart file for all invoke
// helpers in a module.
//
// Imports are derived from function arg/result class references and sorted for
// deterministic output.
func generatedFunctionsFile(
	functions []generatedFunctionSpec,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
) []byte {
	var b strings.Builder
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")

	imports := map[string]struct{}{}
	for _, fn := range functions {
		if fn.Function.ArgsClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, fn.Function.ArgsClass, fn.ModulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
		if fn.Function.ResultClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, fn.Function.ResultClass, fn.ModulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
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
	if hasPackageRegistration {
		fmt.Fprintf(&b, "import '%s' as package_registration;\n", relativeDartImportPath(filePath, registrationFilePath))
	}
	b.WriteString("\n")

	for i, fn := range functions {
		writeGeneratedFunctionDefinition(&b, fn.Token, fn.Function, fn.FuncName, hasPackageRegistration)
		if i != len(functions)-1 {
			b.WriteString("\n")
		}
	}

	return []byte(b.String())
}
