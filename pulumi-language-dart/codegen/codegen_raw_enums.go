package codegen

import "strings"

func makeRawEnumSpec(typeName, modulePath string, rawType rawTypeSpec) *packageEnumSpec {
	if len(rawType.Enum) == 0 {
		return nil
	}
	underlyingType := dartTypeFromRawTypeName(rawType.Type)
	values := make([]packageEnumValueSpec, 0, len(rawType.Enum))
	usedValueNames := map[string]int{}
	for _, enumValue := range rawType.Enum {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Comment: strings.TrimSpace(enumValue.Description), Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}
	return &packageEnumSpec{
		EnumName: typeName, ModulePath: modulePath, Comment: strings.TrimSpace(rawType.Description),
		UnderlyingType: underlyingType, Values: values,
	}
}

func dartTypeFromRawTypeName(typeName string) string {
	switch typeName {
	case "boolean":
		return "bool"
	case "integer":
		return "int"
	case "number":
		return "double"
	case "string":
		return "String"
	default:
		return "String"
	}
}
