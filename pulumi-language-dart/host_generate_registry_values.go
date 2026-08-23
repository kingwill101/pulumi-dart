package main

import "strings"

func normalizeRegistryDependencyValue(value interface{}) (interface{}, bool) {
	switch typed := value.(type) {
	case nil:
		return nil, false
	case string:
		trimmed := strings.TrimSpace(typed)
		return trimmed, trimmed != ""
	case bool, int, int8, int16, int32, int64, uint, uint8, uint16, uint32, uint64, float32, float64:
		return typed, true
	case []interface{}:
		items := make([]interface{}, 0, len(typed))
		for _, item := range typed {
			if normalized, ok := normalizeRegistryDependencyValue(item); ok {
				items = append(items, normalized)
			}
		}
		return items, true
	case map[string]interface{}:
		return normalizeRegistryDependencyValueMap(typed)
	case map[interface{}]interface{}:
		converted, ok := convertInterfaceMapToStringMap(typed)
		if !ok {
			return nil, false
		}
		return normalizeRegistryDependencyValueMap(converted)
	default:
		return nil, false
	}
}

func normalizeRegistryDependencyValueMap(value map[string]interface{}) (map[string]interface{}, bool) {
	normalized := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key := strings.TrimSpace(rawKey)
		if key == "" {
			continue
		}
		if normalizedValue, ok := normalizeRegistryDependencyValue(rawValue); ok {
			normalized[key] = normalizedValue
		}
	}
	return normalized, len(normalized) > 0
}

func convertInterfaceMapToStringMap(value map[interface{}]interface{}) (map[string]interface{}, bool) {
	converted := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key, ok := rawKey.(string)
		if !ok || strings.TrimSpace(key) == "" {
			continue
		}
		converted[strings.TrimSpace(key)] = rawValue
	}
	return converted, len(converted) > 0
}
