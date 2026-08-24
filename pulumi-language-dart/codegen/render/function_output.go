package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func writeInvokeOutputFunction(b *strings.Builder, function dartir.InvokeFunction) {
	signature, arguments := invokeOutputArguments(function)
	registration := ""
	if function.HasPackageRegistration {
		registration = ",\n    registerPackageRequest: package_registration.registerPackageRequest"
	}
	resultType := "Map<String, dynamic>"
	mapResult := ""
	if function.ResultClass != "" {
		resultType = function.ResultClass
		mapResult = fmt.Sprintf(".apply(%s.fromMap)", function.ResultClass)
	} else if function.ResultType != "" {
		resultType = function.ResultType
		mapResult = fmt.Sprintf(".apply<%s>((value) => %s)", function.ResultType, function.ResultDecoder)
	}
	invokeHelper := "invokeOutput<Map<String, dynamic>>"
	if function.ResultClass == "" && function.ResultType != "" {
		invokeHelper = "invokeSingleOutput<dynamic>"
	}
	fmt.Fprintf(
		b,
		"\npulumi.Output<%s> %sOutput(\n  %s}) {\n  return pulumi.%s(\n    %s,\n    %s,\n    options: options%s,\n  )%s;\n}\n",
		resultType,
		function.Name,
		signature,
		invokeHelper,
		function.TokenLiteral,
		arguments,
		registration,
		mapResult,
	)
}

func invokeOutputArguments(function dartir.InvokeFunction) (string, string) {
	signature := "Map<String, dynamic> args, {\n  pulumi.InvokeOutputOptions? options,\n"
	arguments := "pulumi.Input.mapToInputs(args)"
	if function.ArgsClass != "" {
		signature = fmt.Sprintf("%s args, {\n  pulumi.InvokeOutputOptions? options,\n", function.ArgsClass)
		arguments = "pulumi.Input.mapToInputs(args.toMap())"
	} else if !function.HasArgs {
		signature = "{\n  pulumi.InvokeOutputOptions? options,\n"
		arguments = "const <String, pulumi.Input<dynamic>>{}"
	}
	if !function.MultiArgumentInputs {
		return signature, arguments
	}
	var parameters, constructor strings.Builder
	for _, parameter := range function.Parameters {
		fmt.Fprintf(&parameters, "%s %s,\n  ", parameter.DartType, parameter.Name)
		fmt.Fprintf(&constructor, "%s: %s, ", parameter.Name, parameter.Name)
	}
	return parameters.String() + "{\n  pulumi.InvokeOutputOptions? options,\n",
		fmt.Sprintf("pulumi.Input.mapToInputs(%s(%s).toMap())", function.ArgsClass, constructor.String())
}
