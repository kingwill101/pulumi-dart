package dartpub

import (
	"encoding/json"
	"fmt"
)

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
	FalseSecrets        []string               `yaml:"false_secrets,omitempty" json:"false_secrets,omitempty"`
	PublishTo           string                 `yaml:"publish_to,omitempty" json:"publish_to,omitempty"`
	Environment         map[string]string      `yaml:"environment,omitempty" json:"environment,omitempty"`
	Resolution          string                 `yaml:"resolution,omitempty" json:"resolution,omitempty"`
	Dependencies        map[string]interface{} `yaml:"dependencies,omitempty" json:"dependencies,omitempty"`
	DevDependencies     map[string]interface{} `yaml:"dev_dependencies,omitempty" json:"dev_dependencies,omitempty"`
	DependencyOverrides map[string]interface{} `yaml:"dependency_overrides,omitempty" json:"dependency_overrides,omitempty"`
	Platforms           []string               `yaml:"platforms,omitempty" json:"platforms,omitempty"`
	Workspace           []string               `yaml:"workspace,omitempty" json:"workspace,omitempty"`
}

func (pubspec PubSpec) String() string {
	jsonBytes, err := json.MarshalIndent(pubspec, "", "  ")
	if err != nil {
		return fmt.Sprintf("Error marshaling PubSpec: %v", err)
	}
	return string(jsonBytes)
}
