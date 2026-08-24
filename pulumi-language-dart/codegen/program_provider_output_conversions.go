package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/schema"

func providerOutputPrimitiveValueConversion(target schema.Type, value string) string {
	switch target {
	case schema.BoolType:
		return value + " is String ? bool.parse((" + value + ").toString()) : " + value + " as bool"
	case schema.IntType:
		return value + " is String ? int.parse((" + value + ").toString()) : (" + value + " as num).toInt()"
	case schema.NumberType:
		return value + " is String ? double.parse((" + value + ").toString()) : (" + value + " as num).toDouble()"
	case schema.StringType:
		return "(" + value + ").toString()"
	default:
		return value
	}
}
