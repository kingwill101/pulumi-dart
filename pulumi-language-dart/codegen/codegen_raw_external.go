package codegen

type externalSchemaIndexLoader func(providerName string) *externalSchemaIndex

type externalRefResolver struct {
	currentProvider string
	loadIndex       externalSchemaIndexLoader
	indexByProvider map[string]*externalSchemaIndex
}

// Section: external schema reference resolution
//
// These helpers keep cross-provider type/resource refs strongly typed by
// mapping refs like /aws/v7.15.0/schema.json#/resources/aws:ecr/repository:Repository
// to generated Dart symbols from package:pulumi_aws/<module>.dart.
func newExternalRefResolver(currentProvider string, loadIndex externalSchemaIndexLoader) *externalRefResolver {
	return &externalRefResolver{
		currentProvider: canonicalProviderName(currentProvider),
		loadIndex:       loadIndex,
		indexByProvider: map[string]*externalSchemaIndex{},
	}
}

func (r *externalRefResolver) resolve(ref string) (externalTypeRefSpec, externalSchemaTypeInfo, bool) {
	if r == nil {
		return externalTypeRefSpec{}, externalSchemaTypeInfo{}, false
	}

	externalRef, ok := parseExternalSchemaRef(ref)
	if !ok {
		return externalTypeRefSpec{}, externalSchemaTypeInfo{}, false
	}
	if externalRef.ProviderName == "" || externalRef.ProviderName == r.currentProvider {
		return externalTypeRefSpec{}, externalSchemaTypeInfo{}, false
	}

	// Resources are always class references in provider SDKs.
	if externalRef.RefKind == "resources" {
		return externalRef, externalSchemaTypeInfo{Kind: "resource", UseReferenceType: true}, true
	}

	typeInfo := externalSchemaTypeInfo{
		Kind:             "object",
		WireType:         "Map<String, dynamic>",
		UseReferenceType: true,
	}
	if index := r.indexForProvider(externalRef.ProviderName); index != nil {
		if resolvedInfo, exists := index.TypeInfoByToken[externalRef.Token]; exists {
			typeInfo = resolvedInfo
		}
	}

	return externalRef, typeInfo, true
}
