package main

import (
	"strings"

	semver "github.com/blang/semver"
)

func compareDiscoveredProviderVersions(left, right string) int {
	left = normalizedProviderVersion(left)
	right = normalizedProviderVersion(right)
	if left == right {
		return 0
	}
	if left == "" {
		return -1
	}
	if right == "" {
		return 1
	}
	leftVersion, leftErr := semver.ParseTolerant(left)
	rightVersion, rightErr := semver.ParseTolerant(right)
	if leftErr == nil && rightErr == nil {
		if leftVersion.GT(rightVersion) {
			return 1
		}
		return -1
	}
	if leftErr == nil {
		return 1
	}
	if rightErr == nil {
		return -1
	}
	if left > right {
		return 1
	}
	return -1
}

func normalizedProviderVersion(version string) string {
	return strings.TrimSpace(strings.TrimPrefix(strings.TrimPrefix(version, "v"), "V"))
}

func canonicalProviderName(name string) string {
	name = strings.TrimSpace(strings.ToLower(name))
	return strings.ReplaceAll(name, "_", "-")
}
