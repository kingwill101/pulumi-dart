package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"gopkg.in/yaml.v3"
)

func findNearestPubWorkspaceRoot(outputDir string) string {
	if strings.TrimSpace(outputDir) == "" {
		return ""
	}
	searchDir, err := filepath.Abs(outputDir)
	if err != nil {
		return ""
	}
	for {
		if _, err := workspaceMembersFromPubspec(filepath.Join(searchDir, "pubspec.yaml")); err == nil {
			return searchDir
		}
		parent := filepath.Dir(searchDir)
		if parent == searchDir {
			return ""
		}
		searchDir = parent
	}
}

func outputDirWithinWorkspaceMembers(workspaceRoot, outputDir string) bool {
	members, err := workspaceMembersFromPubspec(filepath.Join(workspaceRoot, "pubspec.yaml"))
	if err != nil {
		return false
	}
	for _, member := range members {
		member = strings.TrimSpace(member)
		if member == "" {
			continue
		}
		memberDirectory := filepath.Clean(filepath.Join(workspaceRoot, member))
		relative, err := filepath.Rel(memberDirectory, outputDir)
		if err == nil && pathIsWithin(relative) {
			return true
		}
	}
	return false
}

func pathIsWithin(relative string) bool {
	return relative == "." ||
		(relative != ".." && !strings.HasPrefix(relative, ".."+string(filepath.Separator)))
}

func workspaceMembersFromPubspec(pubspecPath string) ([]string, error) {
	data, err := os.ReadFile(pubspecPath)
	if err != nil {
		return nil, err
	}
	var pubspec struct {
		Workspace []string `yaml:"workspace"`
	}
	if err := yaml.Unmarshal(data, &pubspec); err != nil {
		return nil, err
	}
	if len(pubspec.Workspace) == 0 {
		return nil, fmt.Errorf("workspace field not found in %s", pubspecPath)
	}
	return pubspec.Workspace, nil
}
