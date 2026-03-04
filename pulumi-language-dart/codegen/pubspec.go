package codegen

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"gopkg.in/yaml.v3"
)

// PubSpec represents the structure of a Dart package's pubspec.yaml file.
// It contains information about the package, such as its name, version, dependencies, and more.
type PubSpec struct {
	Name                string                 `yaml:"name" json:"name"`
	Description         string                 `yaml:"description,omitempty" json:"description,omitempty"`
	Version             string                 `yaml:"version,omitempty" json:"version,omitempty"`
	License             string                 `yaml:"license,omitempty" json:"license,omitempty"`
	Homepage            string                 `yaml:"homepage,omitempty" json:"homepage,omitempty"`
	Repository          string                 `yaml:"repository,omitempty" json:"repository,omitempty"`
	IssueTracker        string                 `yaml:"issue_tracker,omitempty" json:"issue_tracker,omitempty"`
	Documentation       string                 `yaml:"documentation,omitempty" json:"documentation,omitempty"`
	Topics              []string               `yaml:"topics,omitempty" json:"topics,omitempty"`
	PublishTo           string                 `yaml:"publish_to,omitempty" json:"publish_to,omitempty"`
	Environment         map[string]string      `yaml:"environment,omitempty" json:"environment,omitempty"`
	Resolution          string                 `yaml:"resolution,omitempty" json:"resolution,omitempty"`
	Dependencies        map[string]interface{} `yaml:"dependencies,omitempty" json:"dependencies,omitempty"`
	DevDependencies     map[string]interface{} `yaml:"dev_dependencies,omitempty" json:"dev_dependencies,omitempty"`
	DependencyOverrides map[string]interface{} `yaml:"dependency_overrides,omitempty" json:"dependency_overrides,omitempty"`
	Platforms           []string               `yaml:"platforms,omitempty" json:"platforms,omitempty"`
	Workspace           []string               `yaml:"workspace,omitempty" json:"workspace,omitempty"`
}

// String returns a JSON-formatted string representation of the PubSpec struct.
// This is useful for debugging and logging purposes.
func (p PubSpec) String() string {
	jsonBytes, err := json.MarshalIndent(p, "", "  ")
	if err != nil {
		return fmt.Sprintf("Error marshaling PubSpec: %v", err)
	}
	return string(jsonBytes)
}

// ReadAndParsePubspec reads the pubspec.yaml file at the given path and parses it into a PubSpec struct.
// If there is an error reading or parsing the file, it returns an error.
func ReadAndParsePubspec(path string) (*PubSpec, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, fmt.Errorf("failed to read pubspec.yaml at %s: %v", path, err)
	}

	var pubspec PubSpec
	err = yaml.Unmarshal(data, &pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to parse pubspec.yaml at %s: %v", path, err)
	}

	return &pubspec, nil
}

// DeterminePulumiPackages scans dependency specs and returns discovered Pulumi
// package pairs as [name, version].
//
// Example:
//
//	{"pulumi":"^3.0.0","pulumi_aws":"^7.20.0","http":"^1.2.0"}
//
// becomes:
//
//	[["pulumi","^3.0.0"],["pulumi_aws","^7.20.0"]]
func DeterminePulumiPackages(deps map[string]interface{}) [][]string {
	var packages [][]string

	for name, spec := range deps {
		if name == "pulumi" || strings.HasPrefix(name, "pulumi_") {
			version := getDependencyVersion(spec)
			packages = append(packages, []string{name, version})
		}
	}
	return packages
}

// getDependencyVersion takes a dependency specification and returns the version string.
// The dependency specification can be a simple version string, a path, a Git repository URL,
// an SDK reference, or a hosted package version.
func getDependencyVersion(dep interface{}) string {
	switch v := dep.(type) {
	case string:
		return v
	case map[string]interface{}:
		if path, ok := v["path"].(string); ok {
			return "path:" + path
		}
		if git, ok := v["git"].(map[string]interface{}); ok {
			if url, ok := git["url"].(string); ok {
				gitVersion := "git:" + url
				if ref, ok := git["ref"].(string); ok {
					gitVersion += "#" + ref
				}
				return gitVersion
			}
		}
		if sdk, ok := v["sdk"].(string); ok {
			return "sdk:" + sdk
		}
		if hosted, ok := v["hosted"].(map[string]interface{}); ok {
			if version, ok := hosted["version"].(string); ok {
				return version
			}
		}
		if version, ok := v["version"].(string); ok {
			return version
		}
	}
	return ""
}

// findPubspecYaml searches for the pubspec.yaml file starting from the given directory and
// recursively searching up the directory tree. It returns the absolute path to the pubspec.yaml
// file if found, or an error if it is not found.
func findPubspecYaml(startDir string) (string, error) {
	dir, err := filepath.Abs(startDir)
	if err != nil {
		return "", err
	}

	for {
		path := filepath.Join(dir, "pubspec.yaml")
		if _, err := os.Stat(path); err == nil {
			return path, nil
		}

		parentDir := filepath.Dir(dir)
		if parentDir == dir {
			break
		}
		dir = parentDir
	}

	return "", fmt.Errorf("pubspec.yaml not found in %s or any parent directory", startDir)
}
