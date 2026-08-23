package codegen

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
)

func (r *externalRefResolver) indexForProvider(providerName string) *externalSchemaIndex {
	providerName = canonicalProviderName(providerName)
	if providerName == "" {
		return nil
	}
	if index, exists := r.indexByProvider[providerName]; exists {
		return index
	}
	schemaPath := resolveExternalSchemaPath(providerName, r.searchRoots)
	if schemaPath == "" {
		return r.cacheMissingProvider(providerName)
	}
	schemaBytes, err := os.ReadFile(schemaPath)
	if err != nil {
		return r.cacheMissingProvider(providerName)
	}
	var rawSpec rawPackageSchema
	if err := json.Unmarshal(schemaBytes, &rawSpec); err != nil {
		return r.cacheMissingProvider(providerName)
	}
	index := buildExternalSchemaIndex(rawSpec)
	r.indexByProvider[providerName] = index
	return index
}

func (r *externalRefResolver) cacheMissingProvider(providerName string) *externalSchemaIndex {
	r.indexByProvider[providerName] = nil
	return nil
}

func buildExternalSchemaIndex(rawSpec rawPackageSchema) *externalSchemaIndex {
	index := &externalSchemaIndex{TypeInfoByToken: map[string]externalSchemaTypeInfo{}}
	for token, rawType := range rawSpec.Types {
		info := externalSchemaTypeInfo{}
		switch {
		case len(rawType.Enum) > 0:
			info = externalSchemaTypeInfo{Kind: "enum", WireType: dartTypeFromRawTypeName(rawType.Type), UseReferenceType: true}
		case rawType.Type == "object":
			info = externalSchemaTypeInfo{Kind: "object", WireType: "Map<String, dynamic>", UseReferenceType: len(rawType.Properties) > 0}
		case rawType.Type == "boolean" || rawType.Type == "integer" || rawType.Type == "number" || rawType.Type == "string":
			info = externalSchemaTypeInfo{Kind: "scalar", DartType: dartTypeFromRawTypeName(rawType.Type)}
		default:
			info.Kind = "dynamic"
		}
		index.TypeInfoByToken[token] = info
	}
	return index
}

func resolveExternalSchemaPath(providerName string, roots []string) string {
	providerName = canonicalProviderName(providerName)
	if providerName == "" {
		return ""
	}
	if envDir := strings.TrimSpace(os.Getenv("PULUMI_DART_SCHEMAS_DIR")); envDir != "" {
		if candidate := existingSchemaFile(filepath.Join(envDir, providerName+".schema.json")); candidate != "" {
			return candidate
		}
	}
	for _, root := range roots {
		for dir := root; ; dir = filepath.Dir(dir) {
			if candidate := existingSchemaFile(filepath.Join(dir, "packages", "schemas", providerName+".schema.json")); candidate != "" {
				return candidate
			}
			if filepath.Dir(dir) == dir {
				break
			}
		}
	}
	return ""
}

func existingSchemaFile(path string) string {
	if info, err := os.Stat(path); err == nil && !info.IsDir() {
		return path
	}
	return ""
}
