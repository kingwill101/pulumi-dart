package codegen

import (
	"sort"
	"strings"
)

func rawResourceReplaceOnChanges(raw rawPackageSchema, resource rawResourceSpec) []string {
	return rawReplaceOnChangesProperties(raw, resource.InputProperties, map[string]bool{})
}

func rawReplaceOnChangesProperties(
	raw rawPackageSchema,
	properties map[string]rawPropertyTypeSpec,
	visiting map[string]bool,
) []string {
	names := make([]string, 0, len(properties))
	for name := range properties {
		names = append(names, name)
	}
	sort.Strings(names)
	var paths []string
	for _, name := range names {
		property := properties[name]
		if property.ReplaceOnChanges {
			paths = append(paths, name)
			continue
		}
		for _, child := range rawReplaceOnChangesChildren(raw, property, visiting) {
			paths = append(paths, name+child)
		}
	}
	return paths
}

func rawReplaceOnChangesChildren(
	raw rawPackageSchema,
	property rawPropertyTypeSpec,
	visiting map[string]bool,
) []string {
	if property.Items != nil {
		return prefixReplaceOnChanges("[*]", rawReplaceOnChangesChildren(raw, *property.Items, visiting))
	}
	if property.AdditionalProperties != nil {
		return prefixReplaceOnChanges(".*", rawReplaceOnChangesChildren(raw, *property.AdditionalProperties, visiting))
	}
	const typePrefix = "#/types/"
	if !strings.HasPrefix(property.Ref, typePrefix) {
		return nil
	}
	token := strings.TrimPrefix(property.Ref, typePrefix)
	if visiting[token] {
		return nil
	}
	typ, ok := raw.Types[token]
	if !ok {
		return nil
	}
	visiting[token] = true
	paths := rawReplaceOnChangesProperties(raw, typ.Properties, visiting)
	delete(visiting, token)
	return prefixReplaceOnChanges(".", paths)
}

func prefixReplaceOnChanges(prefix string, paths []string) []string {
	result := make([]string, len(paths))
	for index, path := range paths {
		result[index] = prefix + path
	}
	return result
}
