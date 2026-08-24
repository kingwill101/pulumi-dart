package main

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
)

func localPathDependencyPlugin(pubspecPath, dependency string) (string, string) {
	path := strings.TrimPrefix(strings.TrimSpace(dependency), "path:")
	if path == dependency || path == "" {
		return "", ""
	}
	if !filepath.IsAbs(path) {
		path = filepath.Join(filepath.Dir(pubspecPath), path)
	}
	contents, err := os.ReadFile(filepath.Join(path, "pulumi-plugin.json"))
	if err != nil {
		return "", ""
	}
	var plugin struct {
		Name    string `json:"name"`
		Version string `json:"version"`
	}
	if json.Unmarshal(contents, &plugin) != nil {
		return "", ""
	}
	return strings.TrimSpace(plugin.Name), strings.TrimSpace(plugin.Version)
}
