package codegen

import (
	"strings"
)

func toPubspecTopics(keywords []string) []string {
	topics := make([]string, 0, len(keywords))
	seen := map[string]struct{}{}

	sanitize := func(value string) string {
		value = strings.ToLower(strings.TrimSpace(value))
		if value == "" {
			return ""
		}

		var b strings.Builder
		lastDash := false
		for _, r := range value {
			isLower := r >= 'a' && r <= 'z'
			isDigit := r >= '0' && r <= '9'
			if isLower || isDigit {
				b.WriteRune(r)
				lastDash = false
				continue
			}
			if !lastDash && b.Len() > 0 {
				b.WriteRune('-')
				lastDash = true
			}
		}

		result := strings.Trim(b.String(), "-")
		if len(result) > 32 {
			result = strings.Trim(result[:32], "-")
		}
		return result
	}

	for _, keyword := range keywords {
		topic := sanitize(keyword)
		if topic == "" {
			continue
		}
		if _, ok := seen[topic]; ok {
			continue
		}
		seen[topic] = struct{}{}
		topics = append(topics, topic)
		if len(topics) == 5 {
			break
		}
	}

	return topics
}

func normalizePackageMetadataURL(value string) string {
	trimmed := strings.TrimSpace(value)
	switch trimmed {
	case "https://pulumi.io", "http://pulumi.io", "https://pulumi.com", "http://pulumi.com":
		return "https://www.pulumi.com"
	default:
		return trimmed
	}
}

// applyPackageMetadataToPubspec copies optional package metadata from schema to
// the generated pubspec.
func applyPackageMetadataToPubspec(pubspec *PubSpec, spec *packageSchema) {
	if pubspec == nil || spec == nil {
		return
	}

	if description := strings.TrimSpace(spec.Description); description != "" {
		pubspec.Description = description
	}
	if license := strings.TrimSpace(spec.License); license != "" {
		pubspec.License = license
	}
	if homepage := normalizePackageMetadataURL(spec.Homepage); homepage != "" {
		pubspec.Homepage = homepage
	}
	if repository := normalizePackageMetadataURL(spec.Repository); repository != "" {
		pubspec.Repository = repository
	}

	pubspec.Topics = toPubspecTopics(spec.Keywords)
}

// safeOutputPath resolves a relative output path under rootDir and rejects
// paths that escape the package directory.
//
// Example:
// - "lib/src/index.dart" is accepted
// - "../outside.dart" is rejected
