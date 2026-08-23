package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func makeSchemaEnumSpec(typeName string, modulePath string, enumType *schema.EnumType, currentProvider string) *packageEnumSpec {
	if enumType == nil || len(enumType.Elements) == 0 {
		return nil
	}

	underlyingType := dartTypeSpecFromSchemaType(enumType.ElementType, nil, false, currentProvider).DartType
	values := make([]packageEnumValueSpec, 0, len(enumType.Elements))
	usedValueNames := map[string]int{}
	for _, enumValue := range enumType.Elements {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}

	return &packageEnumSpec{
		EnumName:       typeName,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(enumType.Comment),
		UnderlyingType: underlyingType,
		Values:         values,
	}
}
