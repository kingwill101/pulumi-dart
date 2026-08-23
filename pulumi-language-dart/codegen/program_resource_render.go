package codegen

import (
	"fmt"
	"strings"
)

func renderDartProgramResource(resource dartProgramResource) string {
	options := renderDartProgramResourceOptions(resource)
	logicalName := dartStringLiteral(resource.LogicalName)
	if resource.PrefixLogicalName {
		logicalName = "name + " + dartStringLiteral("-"+resource.LogicalName)
	}
	switch resource.Type {
	case "read":
		qualifier := programModuleAlias(resource.Package, resource.Module)
		state := ""
		if len(resource.Inputs) > 0 {
			var fields strings.Builder
			for _, input := range resource.Inputs {
				fmt.Fprintf(&fields, "%s: (%s).input(), ", input.Name, input.Expression)
			}
			state = ", state: " + qualifier + "." + resource.StateClass + "(" + fields.String() + ")"
		}
		return fmt.Sprintf(
			"    final %s = %s.%s.get(%s, (%s).input()%s%s);\n",
			resource.Name, qualifier, resource.Class, logicalName, resource.ID, state, options,
		)
	case "provider":
		qualifier := programModuleAlias(resource.Package, resource.Module)
		if len(resource.Inputs) == 0 {
			return fmt.Sprintf(
				"    final %s = %s.%s(%s);\n",
				resource.Name, qualifier, resource.Class, logicalName+options,
			)
		}
		var inputs strings.Builder
		for _, input := range resource.Inputs {
			fmt.Fprintf(&inputs, "%s: (%s).input(), ", input.Name, input.Expression)
		}
		return fmt.Sprintf(
			"    final %s = %s.%s(%s, args: %s.%s(%s)%s);\n",
			resource.Name, qualifier, resource.Class, logicalName,
			qualifier, resource.ArgsClass, inputs.String(), options,
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

func renderDartProgramResourceOptions(resource dartProgramResource) string {
	if len(resource.Options) == 0 {
		return ""
	}
	className := resource.OptionsClass
	if className == "" {
		className = "CustomResourceOptions"
	}
	var fields strings.Builder
	for _, option := range resource.Options {
		fmt.Fprintf(&fields, "%s: %s, ", option.Name, option.Expression)
	}
	return ", options: pulumi." + className + "(" + fields.String() + ")"
}

func programPackageAlias(name string) string {
	return sanitizeCallableIdentifier(strings.ReplaceAll(name, "-", "_"))
}

func programModuleAlias(pkg, module string) string {
	module = sanitizeCallableIdentifier(strings.ReplaceAll(module, "/", "_"))
	return programPackageAlias(pkg) + "_" + module
}
