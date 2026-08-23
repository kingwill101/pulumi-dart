package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) configVariable(variable *pcl.ConfigVariable) (dartProgramConfig, error) {
	name := propertyFieldName(variable.Name(), lowerer.usedNames)
	lowerer.names[variable.Name()] = name

	resolvedType := model.ResolveOutputs(variable.Type())
	getter, err := dartConfigGetter(resolvedType, variable.DefaultValue == nil)
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
	if resolvedType == model.IntType {
		expression = "(" + expression + ").toInt()"
	}
	if variable.Secret {
		expression = "pulumi.secret(" + expression + ")"
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
		return prefix + "Object<List<dynamic>>", nil
	case *model.MapType, *model.ObjectType:
		return prefix + "Object<Map<String, dynamic>>", nil
	case *model.UnionType:
		return prefix + "Object<dynamic>", nil
	default:
		if typ == model.DynamicType {
			return prefix + "Object<dynamic>", nil
		}
		return "", fmt.Errorf("unsupported config type %v", typ)
	}
}
