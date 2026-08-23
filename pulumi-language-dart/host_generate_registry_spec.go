package main

import (
	"path/filepath"
	"strings"
)

func normalizeRegistryDependencySpec(spec interface{}, baseDirectory string) (interface{}, bool) {
	switch value := spec.(type) {
	case nil:
		return nil, false
	case string:
		trimmed := strings.TrimSpace(value)
		return trimmed, trimmed != ""
	case map[string]interface{}:
		return normalizeRegistryDependencySpecMap(value, baseDirectory)
	case map[interface{}]interface{}:
		converted, ok := convertInterfaceMapToStringMap(value)
		if !ok {
			return nil, false
		}
		return normalizeRegistryDependencySpecMap(converted, baseDirectory)
	default:
		return nil, false
	}
}

func normalizeRegistryDependencySpecMap(
	value map[string]interface{}, baseDirectory string,
) (map[string]interface{}, bool) {
	normalized := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key := strings.TrimSpace(rawKey)
		if key == "" {
			continue
		}
		if key == "path" {
			if path, ok := normalizedRegistryPath(rawValue, baseDirectory); ok {
				normalized[key] = path
			}
			continue
		}
		if normalizedValue, ok := normalizeRegistryDependencyValue(rawValue); ok {
			normalized[key] = normalizedValue
		}
	}
	return normalized, len(normalized) > 0
}

func normalizedRegistryPath(value interface{}, baseDirectory string) (string, bool) {
	path, ok := value.(string)
	if !ok {
		return "", false
	}
	path = strings.TrimSpace(path)
	if path == "" {
		return "", false
	}
	if !filepath.IsAbs(path) && baseDirectory != "" {
		path = filepath.Clean(filepath.Join(baseDirectory, path))
	}
	return filepath.ToSlash(path), true
}
