package codegen

import (
	"strings"
)

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
	return rewriteModulePath(canonicalProviderName(token[:first]), module)
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
