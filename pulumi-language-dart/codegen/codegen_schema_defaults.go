package codegen

import (
	"encoding/json"
	"fmt"
	"math"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func schemaDefaultInputExpression(value *schema.DefaultValue) string {
	if value == nil || value.Value == nil {
		return ""
	}
	literal, ok := dartSchemaDefaultLiteral(value.Value)
	if !ok {
		return ""
	}
	return "pulumi.Input.fromValue(" + literal + ")"
}

func dartSchemaDefaultLiteral(value any) (string, bool) {
	switch value := value.(type) {
	case bool:
		return fmt.Sprint(value), true
	case string:
		return dartStringLiteral(value), true
	case int:
		return fmt.Sprint(value), true
	case int8, int16, int32:
		return fmt.Sprint(value), true
	case int64:
		return fmt.Sprint(value), true
	case uint, uint8, uint16, uint32, uint64:
		return fmt.Sprint(value), true
	case float32:
		return fmt.Sprint(value), true
	case float64:
		if math.IsNaN(value) || math.IsInf(value, 0) {
			return "", false
		}
		return fmt.Sprint(value), true
	case json.Number:
		return value.String(), true
	default:
		return "", false
	}
}
