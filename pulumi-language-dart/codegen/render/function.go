package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func FunctionsLibrary(library dartir.FunctionsLibrary) []byte {
	var b strings.Builder
	writeImports(&b, library.Imports)
	b.WriteString("\n")
	for index, function := range library.Functions {
		writeInvokeFunction(&b, function)
		if index != len(library.Functions)-1 {
			b.WriteString("\n")
		}
	}
	return []byte(b.String())
}

func writeInvokeFunction(b *strings.Builder, function dartir.InvokeFunction) {
	WriteDocComment(b, "", function.Docs)
	if function.ArgsDocsMacro != "" {
		fmt.Fprintf(b, "/// [args] Arguments passed to this invoke. {@macro %s}\n", function.ArgsDocsMacro)
	}
	if function.MultiArgumentInputs {
		for _, parameter := range function.Parameters {
			fmt.Fprintf(b, "/// [%s] Value for the `%s` invoke input.\n", parameter.Name, parameter.Name)
		}
	}
	b.WriteString("/// [options] Invoke options controlling this call.\n")

	signatureArgs := "Map<String, dynamic> args, {\n  pulumi.InvokeOptions? options,\n"
	invokeArgs := "args"
	if function.ArgsClass != "" {
		signatureArgs = fmt.Sprintf("%s args, {\n  pulumi.InvokeOptions? options,\n", function.ArgsClass)
		invokeArgs = "args.toMap()"
	} else if !function.HasArgs {
		signatureArgs = "{\n  pulumi.InvokeOptions? options,\n"
		invokeArgs = "const <String, dynamic>{}"
	}
	if function.MultiArgumentInputs {
		var signature strings.Builder
		var constructor strings.Builder
		for _, parameter := range function.Parameters {
			fmt.Fprintf(&signature, "%s %s,\n  ", parameter.DartType, parameter.Name)
			fmt.Fprintf(&constructor, "%s: %s, ", parameter.Name, parameter.Name)
		}
		signatureArgs = signature.String() + "{\n  pulumi.InvokeOptions? options,\n"
		invokeArgs = fmt.Sprintf("%s(%s).toMap()", function.ArgsClass, constructor.String())
	}

	registrationArg := ""
	if function.HasPackageRegistration {
		registrationArg = ",\n    registerPackageRequest: package_registration.registerPackageRequest"
	}
	if function.ResultClass != "" {
		fmt.Fprintf(
			b,
			"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n",
			function.ResultClass,
			function.Name,
			signatureArgs,
			function.TokenLiteral,
			invokeArgs,
			registrationArg,
			function.ResultClass,
		)
		writeInvokeOutputFunction(b, function)
		return
	}
	if function.ResultType != "" {
		fmt.Fprintf(
			b,
			"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final value = await deployment.invokeSingle<dynamic>(\n    %s,\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n  return %s;\n}\n",
			function.ResultType,
			function.Name,
			signatureArgs,
			function.TokenLiteral,
			invokeArgs,
			registrationArg,
			function.ResultDecoder,
		)
		writeInvokeOutputFunction(b, function)
		return
	}
	fmt.Fprintf(
		b,
		"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n}\n",
		function.Name,
		signatureArgs,
		function.TokenLiteral,
		invokeArgs,
		registrationArg,
	)
	writeInvokeOutputFunction(b, function)
}
