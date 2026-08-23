package main

import (
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
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

// directoryInPubWorkspace reports whether outputDir is under any member of the
// nearest pub workspace root.
func directoryInPubWorkspace(outputDir string) bool {
	workspaceRoot := findNearestPubWorkspaceRoot(outputDir)
	if workspaceRoot == "" {
		return false
	}

	absOutputDir, err := filepath.Abs(outputDir)
	if err != nil {
		return false
	}

	return outputDirWithinWorkspaceMembers(workspaceRoot, absOutputDir)
}

// applyWorkspacePulumiDependencyVersion pins the generated pulumi dependency to
// the workspace pulumi package version when discoverable.
func applyWorkspacePulumiDependencyVersion(pubspec *codegen.PubSpec, outputDir string) bool {
	if pubspec == nil {
		return false
	}

	pulumiVersion := inferWorkspacePulumiPackageVersion(outputDir)
	if strings.TrimSpace(pulumiVersion) == "" {
		return false
	}

	if pubspec.Dependencies == nil {
		pubspec.Dependencies = map[string]interface{}{}
	}

	if current, ok := pubspec.Dependencies["pulumi"].(string); ok && strings.TrimSpace(current) == pulumiVersion {
		return false
	}

	pubspec.Dependencies["pulumi"] = pulumiVersion
	if pubspec.DependencyOverrides != nil {
		delete(pubspec.DependencyOverrides, "pulumi")
		if len(pubspec.DependencyOverrides) == 0 {
			pubspec.DependencyOverrides = nil
		}
	}

	return true
}

// inferWorkspacePulumiPackageVersion scans workspace members for the local
// pulumi package and returns its version.
func inferWorkspacePulumiPackageVersion(outputDir string) string {
	workspaceRoot := findNearestPubWorkspaceRoot(outputDir)
	if workspaceRoot == "" {
		return ""
	}

	workspaceMembers, err := workspaceMembersFromPubspec(filepath.Join(workspaceRoot, "pubspec.yaml"))
	if err != nil {
		return ""
	}

	for _, memberPath := range workspaceMembers {
		memberPath = strings.TrimSpace(memberPath)
		if memberPath == "" {
			continue
		}
		memberDir := filepath.Clean(filepath.Join(workspaceRoot, memberPath))
		memberPubspec, err := readAndParsePubspec(filepath.Join(memberDir, "pubspec.yaml"))
		if err != nil || memberPubspec == nil {
			continue
		}
		if memberPubspec.Name == "pulumi" {
			return strings.TrimSpace(memberPubspec.Version)
		}
	}

	return ""
}

// defaultGeneratedExtraFiles returns default scaffold files emitted for a new
// generated provider package.
func defaultGeneratedExtraFiles(packageName, packagePath, packageVersion string) map[string][]byte {
	return map[string][]byte{
		"README.md": codegen.GeneratedPackageReadme(
			packageName,
			packagePath,
			os.Getenv("PULUMI_DART_SDK_GIT_URL"),
			os.Getenv("PULUMI_DART_SDK_GIT_REF"),
		),
		"CHANGELOG.md":          codegen.GeneratedPackageChangelog(packageVersion),
		"analysis_options.yaml": codegen.GeneratedPackageAnalysisOptions(),
		"example/main.dart":     codegen.GeneratedPackageExampleMain(packageName),
	}
}

// findNearestPubWorkspaceRoot walks up from outputDir to find a pubspec that
// declares a workspace section.
