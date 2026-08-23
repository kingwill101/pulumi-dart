package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) configVariable(variable *pcl.ConfigVariable) (dartProgramConfig, error) {
	name := propertyFieldName(variable.Name(), lowerer.usedNames)
	lowerer.names[variable.Name()] = name

	getter, err := dartConfigGetter(variable.Type(), variable.DefaultValue == nil)
	if err != nil {
		return dartProgramConfig{}, err
	}
	expression := fmt.Sprintf("config.%s(%s)", getter, dartStringLiteral(variable.LogicalName()))
	if variable.DefaultValue != nil {
		fallback, err := lowerer.expression(variable.DefaultValue)
		if err != nil {
			return dartProgramConfig{}, fmt.Errorf("default: %w", err)
		}
		expression += " ?? " + fallback
	}
	if variable.Type() == model.IntType {
		expression = "(" + expression + ").toInt()"
	}
	return dartProgramConfig{Name: name, Expression: expression}, nil
}

func dartConfigGetter(typ model.Type, required bool) (string, error) {
	prefix := "get"
	if required {
		prefix = "require"
	}
	if typ == model.StringType {
		if required {
			return "require", nil
		}
		return "get", nil
	}
	if typ == model.BoolType {
		return prefix + "Boolean", nil
	}
	if typ == model.IntType || typ == model.NumberType {
		return prefix + "Number", nil
	}
	switch typ.(type) {
	case *model.ListType, *model.TupleType, *model.SetType:
		return prefix + "Object<List<Object?>>", nil
	case *model.MapType, *model.ObjectType:
		return prefix + "Object<Map<String, Object?>>", nil
	default:
		return "", fmt.Errorf("unsupported config type %v", typ)
	}
}
