package codegen

import (
	"path/filepath"
	"strings"
)

func rewriteModulePath(module string) string {
	module = strings.TrimSpace(filepath.ToSlash(module))
	if module == "" {
		return "index"
	}

	parts := strings.Split(module, "/")
	cleanParts := make([]string, 0, len(parts)+1)
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			continue
		}
		cleanParts = append(cleanParts, part)
	}
	if len(cleanParts) == 0 {
		return "index"
	}

	rewrittenRoot := rewriteModuleRootSegment(cleanParts[0])
	rewrittenParts := make([]string, 0, len(cleanParts)+1)
	for _, rootPart := range strings.Split(rewrittenRoot, "/") {
		rootPart = strings.TrimSpace(rootPart)
		if rootPart == "" {
			continue
		}
		rewrittenParts = append(rewrittenParts, rootPart)
	}
	if len(cleanParts) > 1 {
		rewrittenParts = append(rewrittenParts, cleanParts[1:]...)
	}
	if len(rewrittenParts) == 0 {
		return "index"
	}

	return strings.Join(rewrittenParts, "/")
}

// rewriteModuleRootSegment applies provider-specific root-module rewrites.
func rewriteModuleRootSegment(module string) string {
	switch module {
	case "s3control":
		return "s3/control"
	case "s3outposts":
		return "s3/outposts"
	case "s3tables":
		return "s3/tables"
	case "route53domains":
		return "route53/domains"
	case "route53recoverycontrol":
		return "route53/recovery_control"
	case "route53recoveryreadiness":
		return "route53/recovery_readiness"
	}

	if strings.HasPrefix(module, "s3") && module != "s3" {
		suffix := strings.TrimPrefix(module, "s3")
		if suffix != "" {
			return "s3/" + suffix
		}
	}
	if strings.HasPrefix(module, "route53") && module != "route53" {
		suffix := strings.TrimPrefix(module, "route53")
		if suffix != "" {
			return "route53/" + suffix
		}
	}

	return module
}

// resourceClassNameFromToken returns a unique Dart class name for a resource
// token within the current module/type namespace.
func resourceClassNameFromToken(token string, used map[string]int) string {
	if isProviderResourceToken(token) {
		return uniqueQualifiedClassName("Provider", tokenModulePath(token), used, "Provider", "")
	}

	return uniqueQualifiedClassName(tokenElementName(token), tokenModulePath(token), used, "", "Resource", "Res")
}

// resourceTypeBaseNameFromToken returns the non-qualified base class name for a
// resource token.
func resourceTypeBaseNameFromToken(token string) string {
	if isProviderResourceToken(token) {
		return "Provider"
	}
	return toDartClassName(tokenElementName(token))
}

// isProviderResourceToken reports whether token denotes pulumi:providers:<pkg>.
func isProviderResourceToken(token string) bool {
	return strings.HasPrefix(strings.TrimSpace(token), "pulumi:providers:")
}

// functionNameCandidatesFromToken derives safe callable identifier candidates
// from a function token, including module-qualified fallbacks.
func functionNameCandidatesFromToken(token string) []string {
	base := tokenElementName(token)
	if base == "" {
		return []string{"invoke"}
	}

	classLike := toDartClassName(base)
	if classLike == "" {
		classLike = "Invoke"
	}

	moduleQualifier := modulePathQualifierForName(tokenModulePath(token), classLike)

	classCandidates := []string{classLike}
	if strings.HasPrefix(classLike, "Get") && len(classLike) > len("Get") {
		classCandidates = append(classCandidates, "Lookup"+classLike[len("Get"):])
	}
	if strings.HasPrefix(classLike, "New") && len(classLike) > len("New") {
		classCandidates = append(classCandidates, "Create"+classLike[len("New"):])
	}

	candidates := make([]string, 0, len(classCandidates)*2)
	seen := map[string]struct{}{}
	add := func(candidate string) {
		candidate = sanitizeCallableIdentifier(candidate)
		if candidate == "" {
			return
		}
		if _, exists := seen[candidate]; exists {
			return
		}
		seen[candidate] = struct{}{}
		candidates = append(candidates, candidate)
	}
	for _, classCandidate := range classCandidates {
		add(classCandidate)
		if moduleQualifier != "" {
			add(classCandidate + moduleQualifier)
		}
	}
	if len(candidates) == 0 {
		return []string{"invoke"}
	}
	return candidates
}

// canonicalFunctionNameFromToken returns the first normalized function name
// candidate for a token.
func canonicalFunctionNameFromToken(token string) string {
	candidates := functionNameCandidatesFromToken(token)
	if len(candidates) == 0 {
		return "invoke"
	}
	return sanitizeCallableIdentifier(candidates[0])
}

// functionNameFromToken claims a unique function name from token-derived
// candidates.
func functionNameFromToken(token string, used map[string]int) string {
	return claimUniqueIdentifierFromCandidates(functionNameCandidatesFromToken(token), used)
}

// propertyTypeSpec returns the effective type spec for a property, preferring
// fully populated TypeSpec and falling back to DartType when needed.
