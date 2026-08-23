package codegen

import (
	"fmt"
	"strings"
)

func renderDartProgramResource(resource dartProgramResource) string {
	switch resource.Type {
	case "provider":
		qualifier := resource.Package + "." + sanitizeCallableIdentifier(strings.ReplaceAll(resource.Module, "/", "_"))
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
