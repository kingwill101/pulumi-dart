package codegen

import (
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"
)

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
		if typeSpecUsesPulumiCore(property.TypeSpec) {
			return true
		}
		typeSpec := lower.PropertyType(property)
		if lower.NeedsDecodeListHelper(typeSpec) || lower.NeedsDecodeMapHelper(typeSpec) {
			return true
		}
		if lower.NeedsEncodeListHelper(typeSpec) || lower.NeedsEncodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}

func typeSpecUsesPulumiCore(typeSpec packageTypeSpec) bool {
	if strings.Contains(typeSpec.DartType, "pulumi.") || strings.Contains(typeSpec.ReferenceType, "pulumi.") {
		return true
	}
	return typeSpec.ElementType != nil && typeSpecUsesPulumiCore(*typeSpec.ElementType)
}

func configNeedsObjectHelpers(configSpec packageConfigSpec) bool {
	for _, property := range configSpec.Properties {
		typeSpec := lower.PropertyType(property)
		if lower.NeedsDecodeListHelper(typeSpec) || lower.NeedsDecodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}
