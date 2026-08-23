package codegen

import (
	"strings"
)

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
