package codegen

import (
	"encoding/json"
	"fmt"
	"os"

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
