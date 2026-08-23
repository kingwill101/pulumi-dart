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
	for _, part := range strings.Split(rewriteModuleRootSegment(clean[0]), "/") {
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

func rewriteModuleRootSegment(module string) string {
	rewrites := map[string]string{
		"s3control": "s3/control", "s3outposts": "s3/outposts", "s3tables": "s3/tables",
		"route53domains": "route53/domains", "route53recoverycontrol": "route53/recovery_control",
		"route53recoveryreadiness": "route53/recovery_readiness",
	}
	if rewritten := rewrites[module]; rewritten != "" {
		return rewritten
	}
	for _, prefix := range []string{"s3", "route53"} {
		if suffix := strings.TrimPrefix(module, prefix); suffix != module && suffix != "" {
			return prefix + "/" + suffix
		}
	}
	return module
}
