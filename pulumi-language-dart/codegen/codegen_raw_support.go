package codegen

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
)

func rawRequiredSet(required []string) map[string]struct{} {
	requiredSet := make(map[string]struct{}, len(required))
	for _, property := range required {
		requiredSet[property] = struct{}{}
	}
	return requiredSet
}

func mergeRawPropertySpecs(base map[string]rawPropertyTypeSpec, extra map[string]rawPropertyTypeSpec) map[string]rawPropertyTypeSpec {
	merged := make(map[string]rawPropertyTypeSpec, len(base)+len(extra))
	for key, value := range base {
		merged[key] = value
	}
	for key, value := range extra {
		if _, exists := merged[key]; !exists {
			merged[key] = value
		}
	}
	return merged
}

func appendDistinctStringSet(base []string, extras []string) []string {
	existing := make(map[string]struct{}, len(base))
	for _, item := range base {
		existing[item] = struct{}{}
	}
	merged := append([]string{}, base...)
	for _, item := range extras {
		if _, seen := existing[item]; seen {
			continue
		}
		existing[item] = struct{}{}
		merged = append(merged, item)
	}
	return merged
}

func mergeRawMethods(base map[string]string, extra map[string]string) map[string]string {
	merged := make(map[string]string, len(base)+len(extra))
	for key, value := range base {
		merged[key] = value
	}
	for key, value := range extra {
		merged[key] = value
	}
	return merged
}

func enumValueName(preferred string, value any, used map[string]int) string {
	candidate := preferred
	if strings.TrimSpace(candidate) == "" {
		candidate = fmt.Sprintf("value_%v", value)
	}
	return propertyFieldName(candidate, used)
}

func dartEnumLiteral(value any, typeName string) (string, bool) {
	switch typeName {
	case "String":
		v, ok := value.(string)
		if !ok {
			return "", false
		}
		return dartDoubleQuotedStringLiteral(v), true
	case "bool":
		v, ok := value.(bool)
		if !ok {
			return "", false
		}
		if v {
			return "true", true
		}
		return "false", true
	case "int":
		switch v := value.(type) {
		case int:
			return strconv.Itoa(v), true
		case int64:
			return strconv.FormatInt(v, 10), true
		case float64:
			if v == float64(int64(v)) {
				return strconv.FormatInt(int64(v), 10), true
			}
		}
		return "", false
	case "double":
		switch v := value.(type) {
		case float64:
			return strconv.FormatFloat(v, 'f', -1, 64), true
		case int:
			return strconv.FormatFloat(float64(v), 'f', -1, 64), true
		case int64:
			return strconv.FormatFloat(float64(v), 'f', -1, 64), true
		}
		return "", false
	default:
		return "", false
	}
}

func dartDoubleQuotedStringLiteral(value string) string {
	quoted := strconv.Quote(value)
	return strings.ReplaceAll(quoted, "$", `\$`)
}

func dartStringLiteral(value string) string {
	return darttext.StringLiteral(value)
}

func rawRefToken(ref string) string {
	if ref == "" {
		return ""
	}
	const typesPrefix = "#/types/"
	if strings.HasPrefix(ref, typesPrefix) {
		return strings.TrimPrefix(ref, typesPrefix)
	}
	const resourcesPrefix = "#/resources/"
	if strings.HasPrefix(ref, resourcesPrefix) {
		return strings.TrimPrefix(ref, resourcesPrefix)
	}
	return ref
}
