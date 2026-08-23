package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"gopkg.in/yaml.v3"
)

func findNearestPubWorkspaceRoot(outputDir string) string {
	if strings.TrimSpace(outputDir) == "" {
		return ""
	}

	absOutputDir, err := filepath.Abs(outputDir)
	if err != nil {
		return ""
	}

	for searchDir := absOutputDir; ; searchDir = filepath.Dir(searchDir) {
		pubspecPath := filepath.Join(searchDir, "pubspec.yaml")
		if _, err := workspaceMembersFromPubspec(pubspecPath); err == nil {
			return searchDir
		}

		parent := filepath.Dir(searchDir)
		if parent == searchDir {
			return ""
		}
	}
}

// outputDirWithinWorkspaceMembers reports whether absOutputDir is equal to or
// nested under any declared workspace member.
func outputDirWithinWorkspaceMembers(workspaceRoot, absOutputDir string) bool {
	workspaceMembers, err := workspaceMembersFromPubspec(filepath.Join(workspaceRoot, "pubspec.yaml"))
	if err != nil {
		return false
	}

	for _, member := range workspaceMembers {
		memberPath := strings.TrimSpace(member)
		if memberPath == "" {
			continue
		}
		absMemberDir := filepath.Clean(filepath.Join(workspaceRoot, memberPath))
		rel, err := filepath.Rel(absMemberDir, absOutputDir)
		if err != nil {
			continue
		}
		if rel == "." || (rel != ".." && !strings.HasPrefix(rel, ".."+string(filepath.Separator))) {
			return true
		}
	}

	return false
}

// workspaceMembersFromPubspec loads workspace members from pubspec.yaml.
func workspaceMembersFromPubspec(pubspecPath string) ([]string, error) {
	pubspecData, err := os.ReadFile(pubspecPath)
	if err != nil {
		return nil, err
	}

	var pubspec struct {
		Workspace []string `yaml:"workspace"`
	}
	if err := yaml.Unmarshal(pubspecData, &pubspec); err != nil {
		return nil, err
	}
	if len(pubspec.Workspace) == 0 {
		return nil, fmt.Errorf("workspace field not found in %s", pubspecPath)
	}

	return pubspec.Workspace, nil
}

// syncGeneratedCodeToWorkspaceMember mirrors generated lib sources into an
// existing workspace package when package identity matches.
func syncGeneratedCodeToWorkspaceMember(generatedDir, packageName string) error {
	absGeneratedDir, err := filepath.Abs(generatedDir)
	if err != nil {
		return fmt.Errorf("failed to get absolute path of generated directory: %w", err)
	}

	parentDir := filepath.Dir(absGeneratedDir)
	parentDirName := filepath.Base(parentDir)

	grandparentDir := filepath.Dir(parentDir)
	grandparentDirName := filepath.Base(grandparentDir)

	var providerDir string
	if grandparentDirName == "sdks" {
		providerDir = parentDir
	} else if parentDirName == "sdks" {
		providerDir = absGeneratedDir
	} else {
		return nil
	}

	providerName := strings.TrimPrefix(packageName, "pulumi_")
	packagesDir := filepath.Dir(filepath.Dir(providerDir))
	workspaceMemberDir := filepath.Join(packagesDir, providerName)
	pubspecPath := filepath.Join(workspaceMemberDir, "pubspec.yaml")
	if _, err := os.Stat(pubspecPath); err != nil {
		return nil
	}

	packagePubspec, err := codegen.ReadAndParsePubspec(pubspecPath)
	if err != nil {
		return nil
	}

	expectedPackageName := codegen.ToDartPackageName("", packageName)
	if packagePubspec.Name != expectedPackageName {
		return nil
	}

	generatedPubspecPath := filepath.Join(absGeneratedDir, "pubspec.yaml")
	_, err = os.ReadFile(generatedPubspecPath)
	if err != nil {
		return nil
	}

	generatedPubspec, err := codegen.ReadAndParsePubspec(generatedPubspecPath)
	if err != nil {
		return nil
	}

	didMutate := applyGeneratedPulumiDependency(packagePubspec, generatedPubspec)
	didMutate = applyLocalPathPublishPolicy(packagePubspec) || didMutate

	missingDependencies := missingRequiredDependencies(packagePubspec, generatedPubspec.Dependencies)
	if len(missingDependencies) > 0 {
		if shouldUpdateExistingPubspec() {
			didMutate = true
			if packagePubspec.Dependencies == nil {
				packagePubspec.Dependencies = map[string]interface{}{}
			}
			for _, name := range missingDependencies {
				packagePubspec.Dependencies[name] = generatedPubspec.Dependencies[name]
			}
		}
	}

	if didMutate {
		updatedPubspecBytes, err := yaml.Marshal(packagePubspec)
		if err != nil {
			return fmt.Errorf("failed to marshal updated workspace member pubspec.yaml: %w", err)
		}
		if err := os.WriteFile(pubspecPath, updatedPubspecBytes, 0o600); err != nil {
			return fmt.Errorf("failed to update workspace member pubspec.yaml: %w", err)
		}
	}

	targetLibDir := filepath.Join(workspaceMemberDir, "lib")
	if err := os.MkdirAll(targetLibDir, 0o700); err != nil {
		return fmt.Errorf("failed to create target lib directory: %w", err)
	}

	generatedLibDir := filepath.Join(absGeneratedDir, "lib")
	if _, err := os.Stat(generatedLibDir); err != nil {
		return nil
	}

	if err := copyDirContents(generatedLibDir, targetLibDir); err != nil {
		return fmt.Errorf("failed to copy generated lib to workspace member: %w", err)
	}

	return nil
}

// copyDirContents recursively copies directory contents from src to dst.
func copyDirContents(src, dst string) error {
	entries, err := os.ReadDir(src)
	if err != nil {
		return err
	}

	for _, entry := range entries {
		srcPath := filepath.Join(src, entry.Name())
		dstPath := filepath.Join(dst, entry.Name())

		if entry.IsDir() {
			if err := os.MkdirAll(dstPath, 0o700); err != nil {
				return err
			}
			if err := copyDirContents(srcPath, dstPath); err != nil {
				return err
			}
		} else {
			data, err := os.ReadFile(srcPath)
			if err != nil {
				return err
			}
			if err := os.WriteFile(dstPath, data, 0o600); err != nil {
				return err
			}
		}
	}

	return nil
}
