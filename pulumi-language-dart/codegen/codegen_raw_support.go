package codegen

import "strings"

func rawRequiredSet(required []string) map[string]struct{} {
	result := make(map[string]struct{}, len(required))
	for _, property := range required {
		result[property] = struct{}{}
	}
	return result
}

func mergeRawPropertySpecs(base, extra map[string]rawPropertyTypeSpec) map[string]rawPropertyTypeSpec {
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

func appendDistinctStringSet(base, extras []string) []string {
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

func mergeRawMethods(base, extra map[string]string) map[string]string {
	merged := make(map[string]string, len(base)+len(extra))
	for key, value := range base {
		merged[key] = value
	}
	for key, value := range extra {
		merged[key] = value
	}
	return merged
}

func rawRefToken(ref string) string {
	for _, prefix := range []string{"#/types/", "#/resources/"} {
		if strings.HasPrefix(ref, prefix) {
			return strings.TrimPrefix(ref, prefix)
		}
	}
	return ref
}
