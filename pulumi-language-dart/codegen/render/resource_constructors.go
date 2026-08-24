package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func writeProviderConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	metadata := resourceMetadataArguments(declaration)
	options := resourceDefaultOptionsExpression(declaration, "CustomResourceOptions")
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(%s),\n          %s%s,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, resourceArgsMapExpression(declaration), options, metadata)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          const <String, pulumi.Input<dynamic>>{},\n          %s%s,\n        )", declaration.Name, declaration.TokenLiteral, options, metadata)
}

func writeComponentConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	metadata := resourceMetadataArguments(declaration)
	options := resourceDefaultOptionsExpression(declaration, "ComponentResourceOptions")
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(%s),\n          %s%s,\n          remote: true,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, resourceArgsMapExpression(declaration), options, metadata)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          null,\n          %s%s,\n          remote: true,\n        )", declaration.Name, declaration.TokenLiteral, options, metadata)
}

func writeCustomConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	metadata := resourceMetadataArguments(declaration)
	options := resourceDefaultOptionsExpression(declaration, "CustomResourceOptions")
	if declaration.ArgsClass != "" {
		fmt.Fprintf(b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(%s),\n          %s%s,\n        )", declaration.Name, declaration.ArgsClass, declaration.TokenLiteral, resourceArgsMapExpression(declaration), options, metadata)
		return
	}
	fmt.Fprintf(b, "  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args ?? const {}),\n          %s%s,\n        )", declaration.Name, declaration.TokenLiteral, options, metadata)
}

func resourceDefaultOptionsExpression(declaration dartir.ResourceClass, className string) string {
	if declaration.HasPackageRegistration {
		return "options ?? pulumi." + className + "()"
	}
	var fields []string
	if declaration.DefaultVersionLiteral != "" && declaration.DefaultVersionLiteral != "''" && declaration.DefaultVersionLiteral != "'0.0.0'" {
		fields = append(fields, "version: "+declaration.DefaultVersionLiteral)
	}
	if declaration.DefaultPluginDownloadURLLiteral != "" && declaration.DefaultPluginDownloadURLLiteral != "''" {
		fields = append(fields, "pluginDownloadURL: "+declaration.DefaultPluginDownloadURLLiteral)
	}
	if len(declaration.ReplaceOnChangesLiterals) > 0 {
		fields = append(fields, "replaceOnChanges: ["+strings.Join(declaration.ReplaceOnChangesLiterals, ", ")+"]")
	}
	if len(fields) == 0 {
		return "options ?? pulumi." + className + "()"
	}
	return "pulumi." + className + "(" + strings.Join(fields, ", ") + ").merge(options)"
}

func resourceArgsMapExpression(declaration dartir.ResourceClass) string {
	if declaration.HasDefaultArgs {
		return fmt.Sprintf("(args ?? %s()).toMap()", declaration.ArgsClass)
	}
	return "args?.toMap() ?? const {}"
}
