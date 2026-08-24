package codegen

import "strings"

func renderRangedDartComponentInstance(component dartProgramComponentInstance) string {
	rng := component.Range
	name := dartStringLiteral(component.LogicalName)
	if component.PrefixLogicalName {
		name = "name + " + dartStringLiteral("-"+component.LogicalName)
	}
	if rng.Kind != "bool" {
		name += " + '-' + range.key.toString()"
	}
	value := renderDartComponentInstanceValue(component, name)
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
		collection = strings.Replace(collection, "pulumi.rangeEntries("+rng.Expression+")", "await pulumi.resolveRangeEntries("+rng.Expression+")", 1)
	}
	return "    final " + component.Name + " = " + collection + ";\n"
}
