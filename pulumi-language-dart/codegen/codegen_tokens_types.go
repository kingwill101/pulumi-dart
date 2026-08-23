package codegen

import (
	"fmt"
	"strings"
)

// sanitizeDartIdentifier converts arbitrary schema/provider names into
// lowercase snake_case identifiers valid for Dart packages and aliases.
func sanitizeDartIdentifier(value string) string {
	value = strings.ToLower(value)

	var b strings.Builder
	lastWasUnderscore := false
	for _, r := range value {
		isAlpha := r >= 'a' && r <= 'z'
		isDigit := r >= '0' && r <= '9'
		if isAlpha || isDigit {
			if b.Len() == 0 && isDigit {
				b.WriteString("pkg_")
			}
			b.WriteRune(r)
			lastWasUnderscore = false
			continue
		}
		if b.Len() > 0 && !lastWasUnderscore {
			b.WriteRune('_')
			lastWasUnderscore = true
		}
	}

	out := strings.Trim(b.String(), "_")
	if out == "" {
		return "pulumi_package"
	}
	if out[0] >= '0' && out[0] <= '9' {
		return "pkg_" + out
	}
	return out
}

// toDartPackageName computes a normalized Dart package name and guarantees the
// `pulumi_` prefix.
func toDartPackageName(namespace, name string) string {
	base := ""
	if namespace == "" {
		base = sanitizeDartIdentifier(name)
	} else {
		base = sanitizeDartIdentifier(namespace + "_" + name)
	}
	if namespace == "" && base == "pulumi" {
		return "pulumi"
	}
	if strings.HasPrefix(base, "pulumi_") {
		return base
	}
	return sanitizeDartIdentifier("pulumi_" + base)
}

// toDartClassName converts free-form names into PascalCase Dart type names.
func toDartClassName(name string) string {
	parts := strings.FieldsFunc(name, func(r rune) bool {
		return !((r >= 'a' && r <= 'z') || (r >= 'A' && r <= 'Z') || (r >= '0' && r <= '9'))
	})
	if len(parts) == 0 {
		return "Resource"
	}

	var b strings.Builder
	for _, part := range parts {
		if part == "" {
			continue
		}
		head := part[0]
		if head >= 'a' && head <= 'z' {
			part = string(head-'a'+'A') + part[1:]
		}
		b.WriteString(part)
	}

	result := b.String()
	if result == "" {
		return "Resource"
	}
	if result[0] >= '0' && result[0] <= '9' {
		return "Resource" + result
	}
	return result
}

// tokenElementName returns the trailing element segment from a Pulumi token.
func tokenElementName(token string) string {
	name := token
	if idx := strings.LastIndex(token, ":"); idx >= 0 && idx+1 < len(token) {
		name = token[idx+1:]
	}
	if idx := strings.LastIndex(name, "/"); idx >= 0 && idx+1 < len(name) {
		name = name[idx+1:]
	}
	return name
}

// tokenModulePath returns the normalized module segment from a Pulumi token.
func tokenModulePath(token string) string {
	first := strings.Index(token, ":")
	if first < 0 || first+1 >= len(token) {
		return "index"
	}
	rest := token[first+1:]
	last := strings.LastIndex(rest, ":")
	if last < 0 {
		return "index"
	}
	module := strings.TrimSpace(rest[:last])
	if module == "" {
		return "index"
	}
	return rewriteModulePath(module)
}

// tokenProviderName extracts the provider/package portion of a Pulumi token.
func tokenProviderName(token string) string {
	// Provider resource tokens are encoded as pulumi:providers:<pkg>.
	// Treat these as belonging to the target provider package (<pkg>) so they
	// resolve locally instead of incorrectly importing package:pulumi_pulumi.
	if strings.HasPrefix(token, "pulumi:providers:") {
		return canonicalProviderName(tokenElementName(token))
	}

	first := strings.Index(token, ":")
	if first <= 0 {
		return ""
	}
	return canonicalProviderName(token[:first])
}

// canonicalProviderName normalizes provider identifiers for token and dependency
// matching.
func canonicalProviderName(name string) string {
	name = strings.TrimSpace(strings.ToLower(name))
	if name == "" {
		return ""
	}
	return strings.ReplaceAll(name, "_", "-")
}

// Section: schema-bound external token typing
//
// The schema loader path can resolve references without preserving raw `$ref`
// strings. This helper ensures those external tokens still become typed Dart
// symbols with explicit package imports.
func externalTokenTypeSpec(
	token string,
	currentProvider string,
	refKind string,
	wireType string,
	useReferenceType bool,
	useReferenceTypes bool,
) (packageTypeSpec, bool) {
	token = strings.TrimSpace(token)
	if token == "" {
		return packageTypeSpec{}, false
	}

	providerName := tokenProviderName(token)
	if providerName == "" || providerName == canonicalProviderName(currentProvider) {
		return packageTypeSpec{}, false
	}

	if !useReferenceTypes {
		switch refKind {
		case "enum":
			if wireType != "" {
				return makePackageTypeSpec("scalar", wireType), true
			}
			return makePackageTypeSpec("scalar", "String"), true
		case "object":
			return makePackageTypeSpec("object", "Map<String, dynamic>"), true
		case "resource":
			return makePackageTypeSpec("dynamic", "dynamic"), true
		default:
			return makePackageTypeSpec("dynamic", "dynamic"), true
		}
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

	switch refKind {
	case "resource":
		return packageTypeSpec{
			Kind:           "resource",
			DartType:       qualifiedType,
			IsExternalRef:  true,
			ExternalImport: importPath,
			ExternalAlias:  importAlias,
		}, true
	case "enum":
		if wireType == "" {
			wireType = "String"
		}
		return packageTypeSpec{
			Kind:              "enum",
			DartType:          qualifiedType,
			ReferenceType:     qualifiedType,
			ReferenceWireType: wireType,
			IsExternalRef:     true,
			ExternalImport:    importPath,
			ExternalAlias:     importAlias,
		}, true
	case "object":
		if !useReferenceType {
			return makePackageTypeSpec("object", "Map<String, dynamic>"), true
		}
		return packageTypeSpec{
			Kind:              "object",
			DartType:          qualifiedType,
			ReferenceType:     qualifiedType,
			ReferenceWireType: "Map<String, dynamic>",
			IsExternalRef:     true,
			ExternalImport:    importPath,
			ExternalAlias:     importAlias,
		}, true
	default:
		return makePackageTypeSpec("dynamic", "dynamic"), true
	}
}

// rewriteModulePath normalizes provider module paths into Dart module layout.
