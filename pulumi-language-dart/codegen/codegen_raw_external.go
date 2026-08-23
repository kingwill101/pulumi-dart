package codegen

import (
	"encoding/json"
	"fmt"
	"net/url"
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

func parseExternalSchemaRef(ref string) (externalTypeRefSpec, bool) {
	ref = strings.TrimSpace(ref)
	if ref == "" || !strings.HasPrefix(ref, "/") {
		return externalTypeRefSpec{}, false
	}

	parts := strings.SplitN(ref, "#/", 2)
	if len(parts) != 2 {
		return externalTypeRefSpec{}, false
	}
	left := strings.TrimSpace(parts[0])
	right := strings.TrimSpace(parts[1])

	leftSegments := strings.Split(strings.TrimPrefix(left, "/"), "/")
	if len(leftSegments) < 3 {
		return externalTypeRefSpec{}, false
	}
	if leftSegments[2] != "schema.json" {
		return externalTypeRefSpec{}, false
	}

	providerName := canonicalProviderName(leftSegments[0])
	versionSegment := strings.TrimSpace(leftSegments[1])
	if providerName == "" || !strings.HasPrefix(strings.ToLower(versionSegment), "v") {
		return externalTypeRefSpec{}, false
	}
	providerVersion := strings.TrimPrefix(versionSegment, "v")
	providerVersion = strings.TrimPrefix(providerVersion, "V")

	rightSegments := strings.SplitN(right, "/", 2)
	if len(rightSegments) != 2 {
		return externalTypeRefSpec{}, false
	}
	refKind := strings.ToLower(strings.TrimSpace(rightSegments[0]))
	if refKind != "types" && refKind != "resources" {
		return externalTypeRefSpec{}, false
	}

	token, err := url.PathUnescape(rightSegments[1])
	if err != nil {
		token = rightSegments[1]
	}
	token = strings.TrimSpace(token)
	if token == "" {
		return externalTypeRefSpec{}, false
	}

	className := canonicalTypeName(tokenElementName(token))
	if className == "" {
		return externalTypeRefSpec{}, false
	}

	modulePath := tokenModulePath(token)
	moduleLibrary := moduleLibraryFilePath(modulePath)
	importPackage := toDartPackageName("", providerName)
	importPath := fmt.Sprintf("package:%s/%s", importPackage, moduleLibrary)
	importAlias := sanitizeDartIdentifier(importPackage + "_" + strings.TrimSuffix(moduleLibrary, ".dart"))
	qualifiedType := fmt.Sprintf("%s.%s", importAlias, className)

	return externalTypeRefSpec{
		ProviderName:    providerName,
		ProviderVersion: providerVersion,
		RefKind:         refKind,
		Token:           token,
		ImportPackage:   importPackage,
		ImportPath:      importPath,
		ImportAlias:     importAlias,
		ClassName:       className,
		QualifiedType:   qualifiedType,
	}, true
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
		r.indexByProvider[providerName] = nil
		return nil
	}

	schemaBytes, err := os.ReadFile(schemaPath)
	if err != nil {
		r.indexByProvider[providerName] = nil
		return nil
	}

	var rawSpec rawPackageSchema
	if err := json.Unmarshal(schemaBytes, &rawSpec); err != nil {
		r.indexByProvider[providerName] = nil
		return nil
	}

	index := &externalSchemaIndex{TypeInfoByToken: map[string]externalSchemaTypeInfo{}}
	for token, rawType := range rawSpec.Types {
		info := externalSchemaTypeInfo{}
		switch {
		case len(rawType.Enum) > 0:
			info.Kind = "enum"
			info.WireType = dartTypeFromRawTypeName(rawType.Type)
			info.UseReferenceType = true
		case rawType.Type == "object":
			info.Kind = "object"
			info.WireType = "Map<String, dynamic>"
			info.UseReferenceType = len(rawType.Properties) > 0
		case rawType.Type == "boolean" || rawType.Type == "integer" || rawType.Type == "number" || rawType.Type == "string":
			info.Kind = "scalar"
			info.DartType = dartTypeFromRawTypeName(rawType.Type)
		default:
			info.Kind = "dynamic"
		}
		index.TypeInfoByToken[token] = info
	}

	r.indexByProvider[providerName] = index
	return index
}

func resolveExternalSchemaPath(providerName string, roots []string) string {
	providerName = canonicalProviderName(providerName)
	if providerName == "" {
		return ""
	}

	if envDir := strings.TrimSpace(os.Getenv("PULUMI_DART_SCHEMAS_DIR")); envDir != "" {
		candidate := filepath.Join(envDir, providerName+".schema.json")
		if info, err := os.Stat(candidate); err == nil && !info.IsDir() {
			return candidate
		}
	}

	for _, root := range roots {
		dir := root
		for {
			candidate := filepath.Join(dir, "packages", "schemas", providerName+".schema.json")
			if info, err := os.Stat(candidate); err == nil && !info.IsDir() {
				return candidate
			}

			parent := filepath.Dir(dir)
			if parent == dir {
				break
			}
			dir = parent
		}
	}

	return ""
}
