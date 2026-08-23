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
	defaultPulumiGitURL  = "https://github.com/kingwill101/pulumi-dart.git"
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
