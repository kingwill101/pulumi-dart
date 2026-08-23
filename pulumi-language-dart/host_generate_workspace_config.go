package main

import (
	"os"
	"strings"
)

func shouldUpdateExistingPubspec() bool {
	value := strings.TrimSpace(os.Getenv("PULUMI_DART_UPDATE_EXISTING_PUBSPEC"))
	return strings.EqualFold(value, "1") ||
		strings.EqualFold(value, "true") ||
		strings.EqualFold(value, "yes")
}

// shouldUseWorkspaceResolution decides whether generated pubspec should include
// `resolution: workspace`.
func shouldUseWorkspaceResolution(outputDir string) bool {
	if value, ok := parseTruthyFalseyEnv("PULUMI_DART_WORKSPACE_RESOLUTION"); ok {
		return value
	}
	return directoryInPubWorkspace(outputDir)
}

// parseTruthyFalseyEnv parses common boolean env encodings and reports whether
// the value was explicitly set.
func parseTruthyFalseyEnv(name string) (bool, bool) {
	value := strings.TrimSpace(os.Getenv(name))
	if value == "" {
		return false, false
	}
	if strings.EqualFold(value, "1") ||
		strings.EqualFold(value, "true") ||
		strings.EqualFold(value, "yes") {
		return true, true
	}
	if strings.EqualFold(value, "0") ||
		strings.EqualFold(value, "false") ||
		strings.EqualFold(value, "no") {
		return false, true
	}
	return false, false
}
