package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"gopkg.in/yaml.v3"
)

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

	packagePubspec, err := readAndParsePubspec(pubspecPath)
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

	generatedPubspec, err := readAndParsePubspec(generatedPubspecPath)
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
