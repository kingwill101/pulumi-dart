package codegen

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
)

func enumValueName(preferred string, value any, used map[string]int) string {
	if strings.TrimSpace(preferred) == "" {
		preferred = fmt.Sprintf("value_%v", value)
	}
	return propertyFieldName(preferred, used)
}

func dartEnumLiteral(value any, typeName string) (string, bool) {
	switch typeName {
	case "String":
		value, ok := value.(string)
		if !ok {
			return "", false
		}
		return dartDoubleQuotedStringLiteral(value), true
	case "bool":
		value, ok := value.(bool)
		if !ok {
			return "", false
		}
		return strconv.FormatBool(value), true
	case "int":
		return dartIntegerLiteral(value)
	case "double":
		return dartDoubleLiteral(value)
	default:
		return "", false
	}
}

func dartIntegerLiteral(value any) (string, bool) {
	switch value := value.(type) {
	case int:
		return strconv.Itoa(value), true
	case int64:
		return strconv.FormatInt(value, 10), true
	case float64:
		if value == float64(int64(value)) {
			return strconv.FormatInt(int64(value), 10), true
		}
	}
	return "", false
}

func dartDoubleLiteral(value any) (string, bool) {
	switch value := value.(type) {
	case float64:
		return strconv.FormatFloat(value, 'f', -1, 64), true
	case int:
		return strconv.FormatFloat(float64(value), 'f', -1, 64), true
	case int64:
		return strconv.FormatFloat(float64(value), 'f', -1, 64), true
	}
	return "", false
}

func dartDoubleQuotedStringLiteral(value string) string {
	return strings.ReplaceAll(strconv.Quote(value), "$", `\$`)
}

func dartStringLiteral(value string) string { return darttext.StringLiteral(value) }
