package main

import (
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"gopkg.in/yaml.v3"
)

func localRegistryDartDependencies(providerName, outputDir string) map[string]interface{} {
	registryBytes, registryBaseDir, ok := loadDependencyRegistryContent(outputDir)
	if !ok {
		return nil
	}

	var registry struct {
		Providers map[string]struct {
			Dependencies map[string]interface{} `yaml:"dependencies"`
		} `yaml:"providers"`
	}
	if err := yaml.Unmarshal(registryBytes, &registry); err != nil {
		return nil
	}
	if len(registry.Providers) == 0 {
		return nil
	}

	providerName = strings.TrimSpace(providerName)
	if providerName == "" {
		return nil
	}

	lookupName := canonicalProviderName(providerName)
	var providerEntry struct {
		Dependencies map[string]interface{} `yaml:"dependencies"`
	}
	found := false
	for rawName, entry := range registry.Providers {
		if canonicalProviderName(rawName) != lookupName {
			continue
		}
		providerEntry = entry
		found = true
		break
	}
	if !found || len(providerEntry.Dependencies) == 0 {
		return nil
	}

	normalized := map[string]interface{}{}
	currentPackageName := codegen.ToDartPackageName("", providerName)
	for dependencyName, spec := range providerEntry.Dependencies {
		name := strings.TrimSpace(dependencyName)
		if name == "" {
			continue
		}
		if name == currentPackageName {
			continue
		}
		normalizedSpec, ok := normalizeRegistryDependencySpec(spec, registryBaseDir)
		if !ok {
			continue
		}
		normalized[name] = normalizedSpec
	}
	if len(normalized) == 0 {
		return nil
	}

	return normalized
}

func normalizeRegistryDependencySpec(spec interface{}, registryBaseDir string) (interface{}, bool) {
	switch value := spec.(type) {
	case nil:
		return nil, false
	case string:
		trimmed := strings.TrimSpace(value)
		if trimmed == "" {
			return nil, false
		}
		return trimmed, true
	case map[string]interface{}:
		normalized, ok := normalizeRegistryDependencySpecMap(value, registryBaseDir)
		if !ok {
			return nil, false
		}
		return normalized, true
	case map[interface{}]interface{}:
		converted, ok := convertInterfaceMapToStringMap(value)
		if !ok {
			return nil, false
		}
		normalizedMap, ok := normalizeRegistryDependencySpecMap(converted, registryBaseDir)
		if !ok {
			return nil, false
		}
		return normalizedMap, true
	default:
		return nil, false
	}
}

func normalizeRegistryDependencySpecMap(value map[string]interface{}, registryBaseDir string) (map[string]interface{}, bool) {
	normalized := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key := strings.TrimSpace(rawKey)
		if key == "" {
			continue
		}

		// Top-level dependency "path" entries are file system paths and should
		// resolve relative to the registry file location when needed.
		if key == "path" {
			pathValue, ok := rawValue.(string)
			if !ok {
				continue
			}
			pathValue = strings.TrimSpace(pathValue)
			if pathValue == "" {
				continue
			}
			if !filepath.IsAbs(pathValue) && registryBaseDir != "" {
				pathValue = filepath.Clean(filepath.Join(registryBaseDir, pathValue))
			}
			normalized[key] = filepath.ToSlash(pathValue)
			continue
		}

		normalizedValue, ok := normalizeRegistryDependencyValue(rawValue)
		if !ok {
			continue
		}
		normalized[key] = normalizedValue
	}
	if len(normalized) == 0 {
		return nil, false
	}
	return normalized, true
}

func normalizeRegistryDependencyValue(value interface{}) (interface{}, bool) {
	switch typed := value.(type) {
	case nil:
		return nil, false
	case string:
		trimmed := strings.TrimSpace(typed)
		if trimmed == "" {
			return nil, false
		}
		return trimmed, true
	case bool, int, int8, int16, int32, int64, uint, uint8, uint16, uint32, uint64, float32, float64:
		return typed, true
	case []interface{}:
		items := make([]interface{}, 0, len(typed))
		for _, item := range typed {
			normalizedItem, ok := normalizeRegistryDependencyValue(item)
			if !ok {
				continue
			}
			items = append(items, normalizedItem)
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
		normalizedValue, ok := normalizeRegistryDependencyValue(rawValue)
		if !ok {
			continue
		}
		normalized[key] = normalizedValue
	}
	if len(normalized) == 0 {
		return nil, false
	}
	return normalized, true
}

func convertInterfaceMapToStringMap(value map[interface{}]interface{}) (map[string]interface{}, bool) {
	converted := map[string]interface{}{}
	for rawKey, rawValue := range value {
		key, ok := rawKey.(string)
		if !ok {
			continue
		}
		trimmed := strings.TrimSpace(key)
		if trimmed == "" {
			continue
		}
		converted[trimmed] = rawValue
	}
	if len(converted) == 0 {
		return nil, false
	}
	return converted, true
}

func loadDependencyRegistryContent(outputDir string) ([]byte, string, bool) {
	if registryPath := resolveDependencyRegistryPath(outputDir); registryPath != "" {
		registryBytes, err := os.ReadFile(registryPath)
		if err == nil {
			return registryBytes, filepath.Dir(registryPath), true
		}
	}

	if registryURL := resolveDependencyRegistryURL(); registryURL != "" {
		registryBytes, ok := fetchDependencyRegistryURL(registryURL)
		if ok {
			return registryBytes, "", true
		}
	}

	return nil, "", false
}

// resolveDependencyRegistryPath resolves the dependency registry from explicit
// env override or nearest repo-root packages directory.
func resolveDependencyRegistryPath(outputDir string) string {
	if path := strings.TrimSpace(os.Getenv("PULUMI_DART_DEPENDENCY_REGISTRY")); path != "" {
		if !filepath.IsAbs(path) {
			if resolved, err := filepath.Abs(path); err == nil {
				path = resolved
			}
		}
		if info, err := os.Stat(path); err == nil && !info.IsDir() {
			return path
		}
		return ""
	}

	searchRoots := make([]string, 0, 3)
	if outputDir != "" {
		searchRoots = append(searchRoots, outputDir)
	}
	if cwd, err := os.Getwd(); err == nil && cwd != "" {
		searchRoots = append(searchRoots, cwd)
	}
	if exePath, err := os.Executable(); err == nil && exePath != "" {
		searchRoots = append(searchRoots, filepath.Dir(exePath))
	}

	for _, root := range searchRoots {
		absDir, err := filepath.Abs(root)
		if err != nil {
			continue
		}
		for {
			candidate := filepath.Join(absDir, "packages", "sdk_dependency_registry.yaml")
			if info, err := os.Stat(candidate); err == nil && !info.IsDir() {
				return candidate
			}
			parent := filepath.Dir(absDir)
			if parent == absDir {
				break
			}
			absDir = parent
		}
	}

	return ""
}

// resolveDependencyRegistryURL returns optional HTTP(S) registry URL override.
func resolveDependencyRegistryURL() string {
	return strings.TrimSpace(os.Getenv("PULUMI_DART_DEPENDENCY_REGISTRY_URL"))
}

// fetchDependencyRegistryURL retrieves registry bytes from URL with short
// timeout and basic status/body validation.
