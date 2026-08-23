package main

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

func configuredPulumiDependency() interface{} {
	if path := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_PATH")); path != "" {
		return map[string]string{"path": filepath.ToSlash(path)}
	}
	if version := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_VERSION")); version != "" {
		return version
	}
	if environmentFlag("PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV", true) {
		if version, ok := latestPulumiVersionFromPubDev(); ok {
			return version
		}
	}
	return configuredPulumiGitDependency()
}

func configuredPulumiGitDependency() interface{} {
	gitURL := environmentValue("PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL", defaultPulumiGitURL)
	gitPath := environmentValue("PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH", defaultPulumiGitPath)
	gitRef := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF"))
	gitSpec := map[string]interface{}{"url": gitURL}
	if gitPath != "" {
		gitSpec["path"] = gitPath
	}
	if gitRef != "" {
		gitSpec["ref"] = gitRef
	}
	return map[string]interface{}{"git": gitSpec}
}

func latestPulumiVersionFromPubDev() (string, bool) {
	apiURL := environmentValue("PULUMI_DART_PULUMI_DEPENDENCY_PUBDEV_URL", defaultPulumiPubDev)
	response, err := (&http.Client{Timeout: 5 * time.Second}).Get(apiURL)
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
	return version, version != ""
}

func environmentValue(name, fallback string) string {
	if value := strings.TrimSpace(os.Getenv(name)); value != "" {
		return value
	}
	return fallback
}

func environmentFlag(name string, fallback bool) bool {
	switch strings.ToLower(strings.TrimSpace(os.Getenv(name))) {
	case "0", "false", "no", "off":
		return false
	case "1", "true", "yes", "on":
		return true
	default:
		return fallback
	}
}
