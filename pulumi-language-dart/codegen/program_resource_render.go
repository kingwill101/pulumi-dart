package codegen

import "fmt"

func renderDartProgramResource(resource dartProgramResource) string {
	switch resource.Type {
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
