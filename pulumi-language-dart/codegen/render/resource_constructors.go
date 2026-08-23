package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func writeProviderConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	metadata := resourceMetadataArguments(declaration)
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(%s),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, resourceArgsMapExpression(declaration), metadata)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          const <String, pulumi.Input<dynamic>>{},\n          options ?? pulumi.CustomResourceOptions()%s,\n        )", declaration.Name, declaration.TokenLiteral, metadata)
}

func writeComponentConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	metadata := resourceMetadataArguments(declaration)
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(%s),\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, resourceArgsMapExpression(declaration), metadata)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions()%s,\n          remote: true,\n        )", declaration.Name, declaration.TokenLiteral, metadata)
}

func writeCustomConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	metadata := resourceMetadataArguments(declaration)
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(%s),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, resourceArgsMapExpression(declaration), metadata)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )", declaration.Name, declaration.TokenLiteral, metadata)
}

func resourceArgsMapExpression(declaration dartir.ResourceClass) string {
	if declaration.HasDefaultArgs {
		return fmt.Sprintf("(args ?? %s()).toMap()", declaration.ArgsClass)
	}
	return "args?.toMap() ?? const {}"
}
