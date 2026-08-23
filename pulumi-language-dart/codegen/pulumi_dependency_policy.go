package codegen

import (
	"os"
	"strings"
)

// shouldRewriteTemplatePulumiDependency decides whether a template dependency
// should be replaced by the generator's configured default source.
func shouldRewriteTemplatePulumiDependency(dep interface{}) bool {
	rewriteSetting := strings.TrimSpace(strings.ToLower(os.Getenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI")))
	if rewriteSetting == "false" || rewriteSetting == "0" || rewriteSetting == "no" {
		return false
	}
	switch value := dep.(type) {
	case nil:
		return true
	case string:
		return !isExplicitSourceString(value)
	case map[string]interface{}:
		return !hasExplicitDependencySource(value)
	default:
		return true
	}
}

func isSourceDependencySpec(spec interface{}) bool {
	switch value := spec.(type) {
	case string:
		return isExplicitSourceString(value)
	case map[string]interface{}:
		return hasSourceDependency(value)
	case map[string]string:
		return hasExplicitStringDependencySource(value)
	default:
		return false
	}
}

func isExplicitSourceString(value string) bool {
	raw := strings.TrimSpace(value)
	return strings.HasPrefix(raw, "path:") || strings.HasPrefix(raw, "git:") || strings.HasPrefix(raw, "sdk:")
}

func hasExplicitDependencySource(spec map[string]interface{}) bool {
	for _, key := range []string{"path", "git", "hosted", "sdk"} {
		if _, ok := spec[key]; ok {
			return true
		}
	}
	return false
}

func hasSourceDependency(spec map[string]interface{}) bool {
	for _, key := range []string{"path", "git", "sdk"} {
		if _, ok := spec[key]; ok {
			return true
		}
	}
	return false
}

func hasExplicitStringDependencySource(spec map[string]string) bool {
	for _, key := range []string{"path", "git", "sdk"} {
		if _, ok := spec[key]; ok {
			return true
		}
	}
	return false
}

func dependencyPackageDirFromDartPackageName(depName string) string {
	depName = strings.TrimSpace(depName)
	if !strings.HasPrefix(depName, "pulumi_") {
		return ""
	}
	return strings.ReplaceAll(strings.TrimPrefix(depName, "pulumi_"), "_", "-")
}

func dependencySpecPath(spec interface{}) (string, bool) {
	var raw string
	switch value := spec.(type) {
	case map[string]interface{}:
		raw, _ = value["path"].(string)
	case map[string]string:
		raw = value["path"]
	}
	raw = strings.TrimSpace(raw)
	return raw, raw != ""
}
