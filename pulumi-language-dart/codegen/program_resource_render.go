package codegen

import (
	"fmt"
	"strings"
)

func renderDartProgramResource(resource dartProgramResource) string {
	switch resource.Type {
	case "provider":
		qualifier := programModuleAlias(resource.Package, resource.Module)
		if len(resource.Inputs) == 0 {
			return fmt.Sprintf(
				"    final %s = %s.%s(%s);\n",
				resource.Name, qualifier, resource.Class, dartStringLiteral(resource.LogicalName),
			)
		}
		var inputs strings.Builder
		for _, input := range resource.Inputs {
			fmt.Fprintf(&inputs, "%s: (%s).input(), ", input.Name, input.Expression)
		}
		return fmt.Sprintf(
			"    final %s = %s.%s(%s, args: %s.%s(%s));\n",
			resource.Name, qualifier, resource.Class, dartStringLiteral(resource.LogicalName),
			qualifier, resource.ArgsClass, inputs.String(),
		)
	case "stackReference":
		return fmt.Sprintf(
			"    final %s = pulumi.StackReference(%s, args: pulumi.StackReferenceArgs(name: (%s).input()));\n",
			resource.Name,
			dartStringLiteral(resource.LogicalName),
			resource.Input,
		)
	default:
		return fmt.Sprintf(
			"    final %s = pulumi.Stash(%s, pulumi.StashArgs(input: (%s).input()));\n",
			resource.Name,
			dartStringLiteral(resource.LogicalName),
			resource.Input,
		)
	}
}

func programPackageAlias(name string) string {
	return sanitizeCallableIdentifier(strings.ReplaceAll(name, "-", "_"))
}

func programModuleAlias(pkg, module string) string {
	module = sanitizeCallableIdentifier(strings.ReplaceAll(module, "/", "_"))
	return programPackageAlias(pkg) + "_" + module
}
