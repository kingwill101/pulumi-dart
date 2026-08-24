package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"

func dartComponentInputType(typ model.Type) string {
	typ = model.ResolveOutputs(typ)
	switch typ {
	case model.BoolType:
		return "bool"
	case model.IntType:
		return "int"
	case model.NumberType:
		return "double"
	case model.StringType:
		return "String"
	}
	switch value := typ.(type) {
	case *model.ListType:
		return "List<" + dartComponentInputType(value.ElementType) + ">"
	case *model.SetType:
		return "Set<" + dartComponentInputType(value.ElementType) + ">"
	case *model.MapType:
		return "Map<String, " + dartComponentInputType(value.ElementType) + ">"
	default:
		return "dynamic"
	}
}

func hasProgramOption(options []dartProgramResourceOption, name string) bool {
	for _, option := range options {
		if option.Name == name {
			return true
		}
	}
	return false
}
