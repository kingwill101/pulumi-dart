package codegen

import (
	"encoding/json"
	"net/http"
	"os"
	"path/filepath"
	"strings"
	"time"
)

const (
	defaultPulumiGitURL  = "https://github.com/pulumi/pulumi-dart.git"
	defaultPulumiGitPath = "pulumi-dart"
	defaultPulumiPubDev  = "https://pub.dev/api/packages/pulumi"
)

// defaultPulumiPubspecDependency returns the default pubspec dependency spec for package "pulumi".
//
// Precedence:
// 1. PULUMI_DART_PULUMI_DEPENDENCY_PATH
// 2. PULUMI_DART_PULUMI_DEPENDENCY_VERSION
// 3. latest pub.dev version (enabled by default, configurable)
// 4. git dependency (configurable via *_GIT_* env vars)
func defaultPulumiPubspecDependency() interface{} {
	if path := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH")); path != "" {
		return map[string]string{
			"path": filepath.ToSlash(path),
		}
	}
	if version := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION")); version != "" {
		return version
	}
	if shouldResolvePulumiVersionFromPubDev() {
		if version, ok := latestPulumiVersionFromPubDev(); ok {
			return version
		}
	}

	gitURL := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL"))
	if gitURL == "" {
		gitURL = defaultPulumiGitURL
	}
	gitPath := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH"))
	if gitPath == "" {
		gitPath = defaultPulumiGitPath
	}
	gitRef := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF"))

	gitSpec := map[string]interface{}{
		"url": gitURL,
	}
	if gitPath != "" {
		gitSpec["path"] = gitPath
	}
	if gitRef != "" {
		gitSpec["ref"] = gitRef
	}

	return map[string]interface{}{
		"git": gitSpec,
	}
}

// shouldResolvePulumiVersionFromPubDev reports whether the generator should try
// resolving the latest pulumi package version from pub.dev.
//
// It is controlled by PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV and defaults
// to true.
func shouldResolvePulumiVersionFromPubDev() bool {
	value := strings.TrimSpace(strings.ToLower(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV")))
	if value == "" {
		return true
	}
	if value == "0" || value == "false" || value == "no" {
		return false
	}
	if value == "1" || value == "true" || value == "yes" {
		return true
	}
	return true
}

// latestPulumiVersionFromPubDev returns the latest published pulumi package
// version string from pub.dev.
//
// On network or parsing failures it returns ("", false).
func latestPulumiVersionFromPubDev() (string, bool) {
	apiURL := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_PUBDEV_URL"))
	if apiURL == "" {
		apiURL = defaultPulumiPubDev
	}

	client := &http.Client{Timeout: 5 * time.Second}
	response, err := client.Get(apiURL)
	if err != nil {
		return "", false
	}
	defer response.Body.Close()

	if response.StatusCode < 200 || response.StatusCode >= 300 {
		return "", false
	}

	var payload struct {
		Latest struct {
			Version string `json:"version"`
		} `json:"latest"`
	}
	if err := json.NewDecoder(response.Body).Decode(&payload); err != nil {
		return "", false
	}

	version := strings.TrimSpace(payload.Latest.Version)
	if version == "" {
		return "", false
	}
	return version, true
}

// shouldRewriteTemplatePulumiDependency decides whether a template pulumi
// dependency should be replaced by the generator's configured default source.
//
// Example:
// - nil, "", "^1.0.0", or "any" => true
// - map{"path":"../pulumi"} => false
func shouldRewriteTemplatePulumiDependency(dep interface{}) bool {
	rewriteSetting := strings.TrimSpace(strings.ToLower(os.Getenv("PULUMI_DART_TEMPLATE_REWRITE_PULUMI")))
	if rewriteSetting == "false" || rewriteSetting == "0" || rewriteSetting == "no" {
		return false
	}

	switch value := dep.(type) {
	case nil:
		return true
	case string:
		raw := strings.TrimSpace(value)
		if raw == "" {
			return true
		}
		// path:/ git:/ sdk: already encode explicit source.
		if strings.HasPrefix(raw, "path:") || strings.HasPrefix(raw, "git:") || strings.HasPrefix(raw, "sdk:") {
			return false
		}
		// Bare constraints ("^1.0.0", "any", etc.) are likely unresolved in clean environments
		// until pulumi is published on pub.dev, so prefer configured source dependency.
		return true
	case map[string]interface{}:
		// Keep explicit source maps untouched.
		if _, ok := value["path"]; ok {
			return false
		}
		if _, ok := value["git"]; ok {
			return false
		}
		if _, ok := value["hosted"]; ok {
			return false
		}
		if _, ok := value["sdk"]; ok {
			return false
		}
		// Generic map values are rewritten to configured default for determinism.
		return true
	default:
		return true
	}
}

// isSourceDependencySpec reports whether a dependency spec explicitly declares
// a source (path/git/sdk) rather than a hosted semantic version constraint.
func isSourceDependencySpec(spec interface{}) bool {
	switch value := spec.(type) {
	case string:
		raw := strings.TrimSpace(value)
		return strings.HasPrefix(raw, "path:") || strings.HasPrefix(raw, "git:") || strings.HasPrefix(raw, "sdk:")
	case map[string]interface{}:
		if _, ok := value["path"]; ok {
			return true
		}
		if _, ok := value["git"]; ok {
			return true
		}
		if _, ok := value["sdk"]; ok {
			return true
		}
		return false
	case map[string]string:
		if _, ok := value["path"]; ok {
			return true
		}
		if _, ok := value["git"]; ok {
			return true
		}
		if _, ok := value["sdk"]; ok {
			return true
		}
		return false
	default:
		return false
	}
}

// dependencyPackageDirFromDartPackageName maps pulumi_* package names to
// provider directory names.
//
// Example:
// - "pulumi_aws_native" => "aws-native"
func dependencyPackageDirFromDartPackageName(depName string) string {
	depName = strings.TrimSpace(depName)
	if !strings.HasPrefix(depName, "pulumi_") {
		return ""
	}
	base := strings.TrimPrefix(depName, "pulumi_")
	base = strings.ReplaceAll(base, "_", "-")
	return strings.TrimSpace(base)
}

// dependencySpecPath extracts a non-empty path value from a dependency map spec.
func dependencySpecPath(spec interface{}) (string, bool) {
	switch value := spec.(type) {
	case map[string]interface{}:
		raw, ok := value["path"].(string)
		if !ok {
			return "", false
		}
		raw = strings.TrimSpace(raw)
		return raw, raw != ""
	case map[string]string:
		raw := strings.TrimSpace(value["path"])
		return raw, raw != ""
	default:
		return "", false
	}
}
