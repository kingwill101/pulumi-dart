package main

import (
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

func directoryInPubWorkspace(outputDir string) bool {
	workspaceRoot := findNearestPubWorkspaceRoot(outputDir)
	if workspaceRoot == "" {
		return false
	}
	absOutputDir, err := filepath.Abs(outputDir)
	return err == nil && outputDirWithinWorkspaceMembers(workspaceRoot, absOutputDir)
}

func applyWorkspacePulumiDependencyVersion(pubspec *codegen.PubSpec, outputDir string) bool {
	if pubspec == nil {
		return false
	}
	constraint := strings.TrimSpace(os.Getenv("PULUMI_DART_PULUMI_DEPENDENCY_CONSTRAINT"))
	if constraint == "" {
		constraint = compatiblePulumiConstraint(inferWorkspacePulumiPackageVersion(outputDir))
	}
	if constraint == "" {
		return false
	}
	if pubspec.Dependencies == nil {
		pubspec.Dependencies = map[string]interface{}{}
	}
	if current, ok := pubspec.Dependencies["pulumi"].(string); ok && strings.TrimSpace(current) == constraint {
		return false
	}
	pubspec.Dependencies["pulumi"] = constraint
	if pubspec.DependencyOverrides != nil {
		delete(pubspec.DependencyOverrides, "pulumi")
		if len(pubspec.DependencyOverrides) == 0 {
			pubspec.DependencyOverrides = nil
		}
	}
	return true
}

func compatiblePulumiConstraint(version string) string {
	version = strings.TrimSpace(strings.TrimPrefix(strings.TrimSpace(version), "v"))
	if version == "" {
		return ""
	}
	return "^" + version
}

func inferWorkspacePulumiPackageVersion(outputDir string) string {
	workspaceRoot := findNearestPubWorkspaceRoot(outputDir)
	if workspaceRoot == "" {
		return ""
	}
	members, err := workspaceMembersFromPubspec(filepath.Join(workspaceRoot, "pubspec.yaml"))
	if err != nil {
		return ""
	}
	for _, member := range members {
		member = strings.TrimSpace(member)
		if member == "" {
			continue
		}
		path := filepath.Join(workspaceRoot, member, "pubspec.yaml")
		pubspec, err := readAndParsePubspec(path)
		if err == nil && pubspec.Name == "pulumi" {
			return strings.TrimSpace(pubspec.Version)
		}
	}
	return ""
}
