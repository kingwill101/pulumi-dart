package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"

func componentListValueConversion(target model.Type, dartType string) string {
	item := componentDynamicValueConversion(target, "item")
	return "(value as List).map<" + dartType + ">((item) => " + item + ").toList()"
}

func componentMapValueConversion(target model.Type, dartType string) string {
	item := componentDynamicValueConversion(target, "entry.value")
	return "Map<String, " + dartType + ">.fromEntries((value as Map).entries.map(" +
		"(entry) => MapEntry(entry.key.toString(), " + item + ")))"
}

func componentDynamicValueConversion(target model.Type, value string) string {
	target = model.ResolveOutputs(target)
	switch target {
	case model.BoolType:
		return value + " is String ? bool.parse(" + value + ") : " + value + " as bool"
	case model.IntType:
		return value + " is String ? int.parse(" + value + ") : (" + value + " as num).toInt()"
	case model.NumberType:
		return value + " is String ? double.parse(" + value + ") : (" + value + " as num).toDouble()"
	case model.StringType:
		return "(" + value + ").toString()"
	default:
		return value + " as " + dartComponentInputType(target)
	}
}
