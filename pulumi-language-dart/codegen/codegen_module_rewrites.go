package codegen

import (
	"path/filepath"
	"strings"
)

type moduleLayoutPolicy struct {
	exactRootRewrites map[string]string
	groupedPrefixes   []string
}

var moduleLayoutsByProvider = map[string]moduleLayoutPolicy{
	// Preserve the established pulumi_aws public libraries while keeping this
	// provider-specific convention out of generic token normalization.
	"aws": {
		exactRootRewrites: map[string]string{
			"s3control": "s3/control", "s3outposts": "s3/outposts", "s3tables": "s3/tables",
			"route53domains": "route53/domains", "route53recoverycontrol": "route53/recovery_control",
			"route53recoveryreadiness": "route53/recovery_readiness",
		},
		groupedPrefixes: []string{"s3", "route53"},
	},
}

func rewriteModulePath(provider, module string) string {
	module = strings.TrimSpace(filepath.ToSlash(module))
	if module == "" {
		return "index"
	}
	parts := strings.Split(module, "/")
	clean := make([]string, 0, len(parts)+1)
	for _, part := range parts {
		if part = strings.TrimSpace(part); part != "" {
			clean = append(clean, part)
		}
	}
	if len(clean) == 0 {
		return "index"
	}
	rewritten := make([]string, 0, len(clean)+1)
	for _, part := range strings.Split(rewriteModuleRootSegment(provider, clean[0]), "/") {
		if part = strings.TrimSpace(part); part != "" {
			rewritten = append(rewritten, part)
		}
	}
	if len(clean) > 1 {
		rewritten = append(rewritten, clean[1:]...)
	}
	if len(rewritten) == 0 {
		return "index"
	}
	return strings.Join(rewritten, "/")
}

func rewriteModuleRootSegment(provider, module string) string {
	layout, ok := moduleLayoutsByProvider[canonicalProviderName(provider)]
	if !ok {
		return module
	}
	if rewritten := layout.exactRootRewrites[module]; rewritten != "" {
		return rewritten
	}
	for _, prefix := range layout.groupedPrefixes {
		if suffix := strings.TrimPrefix(module, prefix); suffix != module && suffix != "" {
			return prefix + "/" + suffix
		}
	}
	return module
}
