package codegen

import (
	"fmt"
	"strings"
)

// externalTokenTypeSpec maps schema-bound external tokens to typed Dart
// symbols. The schema loader path does not preserve their original `$ref`.
func externalTokenTypeSpec(token, currentProvider, refKind, wireType string, useReferenceType, useReferenceTypes bool) (packageTypeSpec, bool) {
	token = strings.TrimSpace(token)
	if token == "" {
		return packageTypeSpec{}, false
	}
	providerName := tokenProviderName(token)
	if providerName == "" || providerName == canonicalProviderName(currentProvider) {
		return packageTypeSpec{}, false
	}
	if !useReferenceTypes {
		return unreferencedExternalType(refKind, wireType), true
	}

	importPackage := toDartPackageName("", providerName)
	moduleLibrary := moduleLibraryFilePath(tokenModulePath(token))
	importPath := fmt.Sprintf("package:%s/%s", importPackage, moduleLibrary)
	importAlias := sanitizeDartIdentifier(importPackage + "_" + strings.TrimSuffix(moduleLibrary, ".dart"))
	className := canonicalTypeName(tokenElementName(token))
	if isProviderResourceToken(token) {
		className = uniqueQualifiedClassName("Provider", tokenModulePath(token), map[string]int{}, "Provider", "")
	}
	qualifiedType := fmt.Sprintf("%s.%s", importAlias, className)
	return referencedExternalType(refKind, wireType, useReferenceType, qualifiedType, importPath, importAlias), true
}

func unreferencedExternalType(refKind, wireType string) packageTypeSpec {
	switch refKind {
	case "enum":
		if wireType == "" {
			wireType = "String"
		}
		return makePackageTypeSpec("scalar", wireType)
	case "object":
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	default:
		return makePackageTypeSpec("dynamic", "dynamic")
	}
}

func referencedExternalType(refKind, wireType string, useReferenceType bool, qualifiedType, importPath, importAlias string) packageTypeSpec {
	spec := packageTypeSpec{Kind: refKind, DartType: qualifiedType, IsExternalRef: true, ExternalImport: importPath, ExternalAlias: importAlias}
	switch refKind {
	case "resource":
		return spec
	case "enum":
		if wireType == "" {
			wireType = "String"
		}
		spec.ReferenceType, spec.ReferenceWireType = qualifiedType, wireType
		return spec
	case "object":
		if !useReferenceType {
			return makePackageTypeSpec("object", "Map<String, dynamic>")
		}
		spec.ReferenceType, spec.ReferenceWireType = qualifiedType, "Map<String, dynamic>"
		return spec
	default:
		return makePackageTypeSpec("dynamic", "dynamic")
	}
}
