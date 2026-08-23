package codegen

import (
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func reserveBoundNamedTypes(pkg *schema.Package, usedNames map[string]map[string]int) (map[string]packageNamedTypeRef, []string, map[string]schema.Type) {
	tokens, typesByToken := collectBoundTypes(pkg.Types)
	named := map[string]packageNamedTypeRef{}
	for _, token := range tokens {
		modulePath := tokenModulePath(token)
		canonicalName := canonicalTypeName(tokenElementName(token))
		switch typ := typesByToken[token].(type) {
		case *schema.EnumType:
			name := uniqueQualifiedClassName(tokenElementName(token), modulePath, moduleScopedTypeNameSet(usedNames, modulePath), "", "Enum")
			named[token] = packageNamedTypeRef{Kind: "enum", Name: name, CanonicalName: canonicalName, UnderlyingType: dartTypeSpecFromSchemaType(typ.ElementType, nil, false, pkg.Name).DartType, UseReferenceType: true}
		case *schema.ObjectType:
			name := ""
			if len(typ.Properties) > 0 {
				name = uniqueQualifiedClassName(tokenElementName(token), modulePath, moduleScopedTypeNameSet(usedNames, modulePath), "", "Type")
			}
			named[token] = packageNamedTypeRef{Kind: "object", Name: name, CanonicalName: canonicalName, UnderlyingType: "Map<String, dynamic>", UseReferenceType: name != ""}
		}
	}
	return named, tokens, typesByToken
}

func collectBoundTypes(types []schema.Type) ([]string, map[string]schema.Type) {
	tokens := []string{}
	byToken := map[string]schema.Type{}
	for _, typ := range types {
		token := ""
		switch value := typ.(type) {
		case *schema.EnumType:
			token = value.Token
		case *schema.ObjectType:
			if !value.IsInputShape() {
				token = value.Token
			}
		}
		if token == "" {
			continue
		}
		if _, exists := byToken[token]; !exists {
			tokens = append(tokens, token)
		}
		byToken[token] = typ
	}
	sort.Strings(tokens)
	return tokens, byToken
}

func reserveBoundResourceTypes(pkg *schema.Package, usedNames map[string]map[string]int, named map[string]packageNamedTypeRef) {
	tokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		if resource != nil && resource.Token != "" {
			tokens = append(tokens, resource.Token)
		}
	}
	sort.Strings(tokens)
	for _, token := range tokens {
		modulePath := tokenModulePath(token)
		resource := packageNamedTypeRef{Kind: "resource", Name: resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedNames, modulePath)), CanonicalName: canonicalTypeName(tokenElementName(token)), UnderlyingType: "dynamic", UseReferenceType: true}
		named[resourceNamedTypeKey(token)] = resource
		if _, occupied := named[token]; !occupied {
			named[token] = resource
		}
	}
}

func resourceNamedTypeKey(token string) string { return "resource\x00" + token }
