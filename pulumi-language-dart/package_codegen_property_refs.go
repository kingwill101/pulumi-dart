package main

import (
	"sort"
	"strings"
)

func toSnakeCaseIdentifier(value string) string {
	if value == "" {
		return "generated"
	}

	var out []rune
	var prev rune
	for i, r := range value {
		isUpper := r >= 'A' && r <= 'Z'
		isLower := r >= 'a' && r <= 'z'
		isDigit := r >= '0' && r <= '9'
		if isUpper {
			if i > 0 && (prev >= 'a' && prev <= 'z' || prev >= '0' && prev <= '9') {
				out = append(out, '_')
			}
			out = append(out, r-'A'+'a')
		} else if isLower || isDigit {
			out = append(out, r)
		} else if len(out) > 0 && out[len(out)-1] != '_' {
			out = append(out, '_')
		}
		prev = r
	}

	result := strings.Trim(strings.TrimSpace(string(out)), "_")
	if result == "" {
		return "generated"
	}
	return result
}

func collectReferenceTypes(typeSpec packageTypeSpec, refs map[string]struct{}) {
	if typeSpec.ReferenceType != "" && !typeSpec.IsExternalRef {
		refs[typeSpec.ReferenceType] = struct{}{}
	}
	if typeSpec.ElementType != nil {
		collectReferenceTypes(*typeSpec.ElementType, refs)
	}
}

func collectExternalImports(typeSpec packageTypeSpec, imports map[string]string) {
	if typeSpec.ExternalImport != "" && typeSpec.ExternalAlias != "" {
		imports[typeSpec.ExternalImport] = typeSpec.ExternalAlias
	}
	collectProviderAliasImport(typeSpec.DartType, imports)
	collectProviderAliasImport(typeSpec.ReferenceType, imports)
	if typeSpec.ElementType != nil {
		collectExternalImports(*typeSpec.ElementType, imports)
	}
}

func collectProviderAliasImport(qualifiedType string, imports map[string]string) {
	qualifiedType = strings.TrimSpace(qualifiedType)
	if qualifiedType == "" {
		return
	}
	dot := strings.IndexRune(qualifiedType, '.')
	if dot <= 0 {
		return
	}
	alias := qualifiedType[:dot]
	if !strings.HasSuffix(alias, "_providers") {
		return
	}
	providerPkg := strings.TrimSuffix(alias, "_providers")
	if providerPkg == "" || !strings.HasPrefix(providerPkg, "pulumi_") {
		return
	}
	imports["package:"+providerPkg+"/providers.dart"] = alias
}

func externalImportsFromProperties(properties []packagePropertySpec) map[string]string {
	imports := map[string]string{}
	for _, property := range properties {
		collectExternalImports(property.TypeSpec, imports)
	}
	return imports
}

func referencedTypesFromProperties(properties []packagePropertySpec) []string {
	refs := map[string]struct{}{}
	for _, property := range properties {
		collectReferenceTypes(property.TypeSpec, refs)
	}
	names := make([]string, 0, len(refs))
	for name := range refs {
		names = append(names, name)
	}
	sort.Strings(names)
	return names
}

func objectClassNeedsObjectHelpers(objectClass packageObjectClassSpec) bool {
	if objectClass.UsesInputTypes {
		return true
	}
	for _, property := range objectClass.Properties {
		typeSpec := propertyTypeSpec(property)
		if typeSpecNeedsDecodeListHelper(typeSpec) || typeSpecNeedsDecodeMapHelper(typeSpec) {
			return true
		}
		if typeSpecNeedsEncodeListHelper(typeSpec) || typeSpecNeedsEncodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}

func configNeedsObjectHelpers(configSpec packageConfigSpec) bool {
	for _, property := range configSpec.Properties {
		typeSpec := propertyTypeSpec(property)
		if typeSpecNeedsDecodeListHelper(typeSpec) || typeSpecNeedsDecodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}
