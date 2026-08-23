package codegen

import (
	"fmt"
	"strings"
)

func renderDartProgramResource(resource dartProgramResource) string {
	if resource.Range != nil {
		return renderRangedDartProgramResource(resource)
	}
	return "    final " + resource.Name + " = " + renderDartProgramResourceValue(resource, dartStringLiteral(resource.LogicalName)) + ";\n"
}

func renderDartProgramResourceValue(resource dartProgramResource, logicalName string) string {
	options := renderDartProgramResourceOptions(resource)
	if resource.PrefixLogicalName {
		logicalName = "name + " + dartStringLiteral("-") + " + (" + logicalName + ")"
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
		return fmt.Sprintf("%s.%s.get(%s, (%s).input()%s%s)", qualifier, resource.Class, logicalName, resource.ID, state, options)
	case "provider":
		qualifier := programModuleAlias(resource.Package, resource.Module)
		if len(resource.Inputs) == 0 {
			return fmt.Sprintf("%s.%s(%s)", qualifier, resource.Class, logicalName+options)
		}
		var inputs strings.Builder
		for _, input := range resource.Inputs {
			fmt.Fprintf(&inputs, "%s: pulumi.Input.asInput(%s), ", input.Name, input.Expression)
		}
		return fmt.Sprintf(
			"%s.%s(%s, args: %s.%s(%s)%s)",
			qualifier, resource.Class, logicalName,
			qualifier, resource.ArgsClass, inputs.String(), options,
		)
	case "stackReference":
		return fmt.Sprintf(
			"pulumi.StackReference(%s, args: pulumi.StackReferenceArgs(name: (%s).input()))",
			logicalName,
			resource.Input,
		)
	default:
		return fmt.Sprintf(
			"pulumi.Stash(%s, pulumi.StashArgs(input: (%s).input()))",
			logicalName,
			resource.Input,
		)
	}
}

func renderRangedDartProgramResource(resource dartProgramResource) string {
	rng := resource.Range
	name := dartStringLiteral(resource.LogicalName)
	if rng.Kind != "bool" {
		name = dartStringLiteral(resource.LogicalName+"-") + " + range.key.toString()"
	}
	value := renderDartProgramResourceValue(resource, name)
	var collection string
	switch rng.Kind {
	case "bool":
		collection = "(" + rng.Expression + ") ? " + value + " : null"
	case "map":
		collection = "{for (final range in pulumi.rangeEntries(" + rng.Expression + ")) range.key.toString(): " + value + "}"
	default:
		collection = "[for (final range in pulumi.rangeEntries(" + rng.Expression + ")) " + value + "]"
	}
	if rng.IsOutput {
		collection = strings.Replace(
			collection,
			"pulumi.rangeEntries("+rng.Expression+")",
			"await pulumi.resolveRangeEntries("+rng.Expression+")",
			1,
		)
	}
	return "    final " + resource.Name + " = " + collection + ";\n"
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
