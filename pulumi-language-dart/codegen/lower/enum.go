package lower

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func Enum(spec schemair.Enum) []byte {
	values := make([]dartir.EnumValue, len(spec.Values))
	for index, value := range spec.Values {
		values[index] = dartir.EnumValue{
			Name:    value.Name,
			Docs:    value.Comment,
			Literal: value.Literal,
		}
	}
	return render.Enum(dartir.Enum{
		Name:           spec.EnumName,
		Docs:           spec.Comment,
		UnderlyingType: spec.UnderlyingType,
		Values:         values,
	})
}
