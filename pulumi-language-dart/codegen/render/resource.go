package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func Resource(declaration dartir.ResourceClass) []byte {
	var b strings.Builder
	writeImports(&b, declaration.Imports)
	b.WriteString("\n")
	WriteDocComment(&b, "", declaration.Docs)
	fmt.Fprintf(&b, "class %s extends pulumi.%s {\n", declaration.Name, resourceBaseClass(declaration.Kind))
	writeResourceOutputs(&b, declaration.Outputs)
	writeResourceConstructorDocs(&b, declaration)
	writeResourceConstructor(&b, declaration)
	WriteResourceMembers(&b, declaration.Members)
	b.WriteString("}\n")
	return []byte(b.String())
}

func resourceBaseClass(kind dartir.ResourceKind) string {
	switch kind {
	case dartir.ProviderResource:
		return "ProviderResource"
	case dartir.ComponentResource:
		return "ComponentResource"
	default:
		return "CustomResource"
	}
}

func writeResourceOutputs(b *strings.Builder, outputs []dartir.ResourceOutput) {
	for _, output := range outputs {
		WriteDocComment(b, "  ", output.Docs)
		fmt.Fprintf(b, "  late final pulumi.Output<%s> %s;\n", output.Type, output.Name)
	}
	if len(outputs) > 0 {
		b.WriteString("\n")
	}
}

func writeResourceConstructorDocs(b *strings.Builder, declaration dartir.ResourceClass) {
	fmt.Fprintf(b, "  /// Creates a new [%s].\n", declaration.Name)
	b.WriteString("  /// [name] The Pulumi resource name.\n")
	if declaration.ArgsClass != "" || declaration.Kind == dartir.CustomResource {
		fmt.Fprintf(b, "  /// [args] %s\n", declaration.ArgsDocs)
	}
	b.WriteString("  /// [options] Resource options controlling this resource's behavior.\n")
}

func writeResourceConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	switch declaration.Kind {
	case dartir.ProviderResource:
		writeProviderConstructor(b, declaration)
	case dartir.ComponentResource:
		writeComponentConstructor(b, declaration)
	default:
		writeCustomConstructor(b, declaration)
	}
	writeConstructorAssignments(b, declaration.ConstructorAssignments)
}

func writeProviderConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions(),\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          const <String, pulumi.Input<dynamic>>{},\n          options ?? pulumi.CustomResourceOptions(),\n        )", declaration.Name, declaration.TokenLiteral)
}

func writeComponentConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	registration := registrationArgument(declaration.HasPackageRegistration)
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, registration)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )", declaration.Name, declaration.TokenLiteral, registration)
}

func writeCustomConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	registration := registrationArgument(declaration.HasPackageRegistration)
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, registration)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )", declaration.Name, declaration.TokenLiteral, registration)
}

func registrationArgument(enabled bool) string {
	if !enabled {
		return ""
	}
	return ",\n          registerPackageRequest: package_registration.registerPackageRequest"
}

func writeConstructorAssignments(b *strings.Builder, assignments []dartir.Assignment) {
	if len(assignments) == 0 {
		b.WriteString(";\n")
		return
	}
	b.WriteString(" {\n")
	for _, assignment := range assignments {
		fmt.Fprintf(b, "    %s = %s;\n", assignment.Target, assignment.Expression)
	}
	b.WriteString("  }\n")
}
