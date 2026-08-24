package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func invokePrimitiveNeedsDynamicCast(expression model.Expression, typ schema.Type) bool {
	typ = unwrapProviderInputType(typ)
	var target model.Type
	switch typ {
	case schema.BoolType:
		target = model.BoolType
	case schema.IntType:
		target = model.IntType
	case schema.NumberType:
		target = model.NumberType
	case schema.StringType:
		target = model.StringType
	default:
		return false
	}
	containsOutputs, containsPromises := model.ContainsEventuals(expression.Type())
	return (containsOutputs || containsPromises) && model.ResolveOutputs(expression.Type()).Equals(target)
}

func typedInvokeInput(value, dartType string) string {
	if dartType == "" || dartType == "dynamic" {
		return value
	}
	nullable := strings.HasSuffix(dartType, "?")
	baseType := strings.TrimSuffix(dartType, "?")
	conversion := "value as " + baseType
	if element, ok := dartGenericArgument(baseType, "List"); ok {
		conversion = "(value as List).cast<" + element + ">()"
	} else if entries, ok := dartGenericArgument(baseType, "Map"); ok {
		parts := strings.SplitN(entries, ",", 2)
		if len(parts) == 2 {
			conversion = "(value as Map).cast<" + strings.TrimSpace(parts[0]) + ", " + strings.TrimSpace(parts[1]) + ">()"
		}
	}
	if nullable {
		conversion = "value == null ? null : " + conversion
	}
	return "pulumi.output(" + value + ").apply<" + dartType + ">((value) => " + conversion + ")"
}

func dartGenericArgument(dartType, generic string) (string, bool) {
	prefix := generic + "<"
	if !strings.HasPrefix(dartType, prefix) || !strings.HasSuffix(dartType, ">") {
		return "", false
	}
	return strings.TrimSuffix(strings.TrimPrefix(dartType, prefix), ">"), true
}
