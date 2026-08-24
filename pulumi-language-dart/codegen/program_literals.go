package codegen

import (
	"fmt"
	"math/big"
	"strconv"

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
		number := value.AsBigFloat()
		if integer, accuracy := number.Int(nil); accuracy == big.Exact {
			if integer.IsInt64() {
				return integer.String(), nil
			}
			floatingPoint, _ := number.Float64()
			return strconv.FormatFloat(floatingPoint, 'g', -1, 64), nil
		}
		return number.Text('g', -1), nil
	}
	return "", fmt.Errorf("unsupported literal type %s", value.Type().FriendlyName())
}
