package codegen

import (
	"os"
	"path/filepath"
	"strings"
)

type externalRefResolver struct {
	currentProvider string
	searchRoots     []string
	indexByProvider map[string]*externalSchemaIndex
}

// Section: external schema reference resolution
//
// These helpers keep cross-provider type/resource refs strongly typed by
// mapping refs like /aws/v7.15.0/schema.json#/resources/aws:ecr/repository:Repository
// to generated Dart symbols from package:pulumi_aws/<module>.dart.
func newExternalRefResolver(currentProvider, outputDir string) *externalRefResolver {
	roots := make([]string, 0, 3)
	if strings.TrimSpace(outputDir) != "" {
		roots = append(roots, outputDir)
	}
	if cwd, err := os.Getwd(); err == nil && cwd != "" {
		roots = append(roots, cwd)
	}

	dedup := map[string]struct{}{}
	uniqueRoots := make([]string, 0, len(roots))
	for _, root := range roots {
		if root == "" {
			continue
		}
		abs, err := filepath.Abs(root)
		if err != nil {
			continue
		}
		if _, exists := dedup[abs]; exists {
			continue
		}
		dedup[abs] = struct{}{}
		uniqueRoots = append(uniqueRoots, abs)
	}

	return &externalRefResolver{
		currentProvider: canonicalProviderName(currentProvider),
		searchRoots:     uniqueRoots,
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
