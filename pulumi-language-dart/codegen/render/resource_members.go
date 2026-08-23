package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func WriteResourceMembers(b *strings.Builder, members dartir.ResourceMembers) {
	for _, method := range members.Methods {
		writeResourceMethod(b, method)
	}
	if members.Get != nil {
		writeResourceGet(b, *members.Get)
	}
}

func writeResourceMethod(b *strings.Builder, method dartir.ResourceMethod) {
	b.WriteString("\n")
	WriteDocComment(b, "  ", method.Docs)
	if method.ArgsDocsMacro != "" {
		fmt.Fprintf(b, "  /// [args] Arguments passed to this method call. {@macro %s}\n", method.ArgsDocsMacro)
	}
	signature := "()"
	callArgs := "const <String, dynamic>{}"
	if method.ArgsClass != "" {
		signature = fmt.Sprintf("({\n    %s? args,\n  })", method.ArgsClass)
		callArgs = "args?.toMap() ?? const <String, dynamic>{}"
	}
	registrationArg := ""
	if method.HasPackageRegistration {
		registrationArg = ",\n      registerPackageRequest: package_registration.registerPackageRequest"
	}

	if method.ResultClass != "" {
		fmt.Fprintf(b, "  Future<%s> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    final result = await deployment.callWithResult<Map<String, dynamic>>(\n      %s,\n      %s,\n      self: this%s,\n    );\n    return %s.fromMap(result);\n  }\n", method.ResultClass, method.Name, signature, method.TokenLiteral, callArgs, registrationArg, method.ResultClass)
		return
	}
	if method.ReturnType != "" {
		unwrapArg := ""
		if method.ReturnPlain {
			unwrapArg = ",\n      unwrapSingleReturn: true"
		}
		fmt.Fprintf(b, "  Future<%s> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    return await deployment.callWithResult<%s>(\n      %s,\n      %s,\n      self: this%s%s,\n    );\n  }\n", method.ReturnType, method.Name, signature, method.ReturnType, method.TokenLiteral, callArgs, registrationArg, unwrapArg)
		return
	}
	if method.HasReturn {
		fmt.Fprintf(b, "  Future<Map<String, dynamic>> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    return await deployment.callWithResult<Map<String, dynamic>>(\n      %s,\n      %s,\n      self: this%s,\n    );\n  }\n", method.Name, signature, method.TokenLiteral, callArgs, registrationArg)
		return
	}
	fmt.Fprintf(b, "  Future<void> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    await deployment.call(\n      %s,\n      %s,\n      self: this%s,\n    );\n  }\n", method.Name, signature, method.TokenLiteral, callArgs, registrationArg)
}

func writeResourceGet(b *strings.Builder, get dartir.ResourceGet) {
	fmt.Fprintf(b, "\n  /// Gets an existing [%s] resource's state with the given [name] and [id].\n  static %s get(\n    String name,\n    pulumi.Input<String> id, {\n    %s? state,\n    pulumi.CustomResourceOptions? options,\n  }) {\n    return %s._get(\n      name,\n      state: state?.toMap(),\n      options: pulumi.CustomResourceOptions(id: id).merge(options),\n    );\n  }\n", get.ClassName, get.ClassName, get.StateClass, get.ClassName)
	fmt.Fprintf(b, "\n  %s._get(\n    String name, {\n    Map<String, dynamic>? state,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),\n          options ?? pulumi.CustomResourceOptions(),\n        )", get.ClassName, get.TokenLiteral)
	if len(get.OutputAssignments) == 0 {
		b.WriteString(";\n")
		return
	}
	b.WriteString(" {\n")
	for _, assignment := range get.OutputAssignments {
		fmt.Fprintf(b, "    %s = %s;\n", assignment.Target, assignment.Expression)
	}
	b.WriteString("  }\n")
}
