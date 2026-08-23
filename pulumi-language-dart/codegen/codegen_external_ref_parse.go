package codegen

import (
	"fmt"
	"net/url"
	"strings"
)

func parseExternalSchemaRef(ref string) (externalTypeRefSpec, bool) {
	ref = strings.TrimSpace(ref)
	if ref == "" || !strings.HasPrefix(ref, "/") {
		return externalTypeRefSpec{}, false
	}
	parts := strings.SplitN(ref, "#/", 2)
	if len(parts) != 2 {
		return externalTypeRefSpec{}, false
	}
	leftSegments := strings.Split(strings.TrimPrefix(strings.TrimSpace(parts[0]), "/"), "/")
	if len(leftSegments) < 3 || leftSegments[2] != "schema.json" {
		return externalTypeRefSpec{}, false
	}
	providerName := canonicalProviderName(leftSegments[0])
	versionSegment := strings.TrimSpace(leftSegments[1])
	if providerName == "" || !strings.HasPrefix(strings.ToLower(versionSegment), "v") {
		return externalTypeRefSpec{}, false
	}
	providerVersion := strings.TrimPrefix(strings.TrimPrefix(versionSegment, "v"), "V")
	rightSegments := strings.SplitN(strings.TrimSpace(parts[1]), "/", 2)
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
	className := canonicalTypeName(tokenElementName(token))
	if token == "" || className == "" {
		return externalTypeRefSpec{}, false
	}
	moduleLibrary := moduleLibraryFilePath(tokenModulePath(token))
	importPackage := toDartPackageName("", providerName)
	importAlias := sanitizeDartIdentifier(importPackage + "_" + strings.TrimSuffix(moduleLibrary, ".dart"))
	return externalTypeRefSpec{
		ProviderName: providerName, ProviderVersion: providerVersion, RefKind: refKind, Token: token,
		ImportPackage: importPackage, ImportPath: fmt.Sprintf("package:%s/%s", importPackage, moduleLibrary),
		ImportAlias: importAlias, ClassName: className, QualifiedType: fmt.Sprintf("%s.%s", importAlias, className),
	}, true
}
