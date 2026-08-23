package codegen

import (
	"fmt"

	"github.com/zclconf/go-cty/cty"
)

func lowerDartLiteral(value cty.Value) (string, error) {
	if value.IsNull() {
		return "null", nil
	}
	switch value.Type() {
	case cty.Bool:
		return fmt.Sprintf("%t", value.True()), nil
	case cty.String:
		return dartStringLiteral(value.AsString()), nil
	case cty.Number:
		return value.AsBigFloat().Text('g', -1), nil
	}
	return "", fmt.Errorf("unsupported literal type %s", value.Type().FriendlyName())
}
