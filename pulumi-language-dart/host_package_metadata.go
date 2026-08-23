package main

import (
	"encoding/json"
	"net/url"
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

type dartPluginMetadata struct {
	Resource bool   `json:"resource"`
	Name     string `json:"name"`
	Version  string `json:"version"`
	Server   string `json:"server"`
}

func readDartPluginMetadata(pubspecPath, dependency string, spec any) (dartPluginMetadata, bool) {
	root := dependencyPackageRoot(pubspecPath, dependency, spec)
	if root == "" {
		return dartPluginMetadata{}, false
	}
	contents, err := os.ReadFile(filepath.Join(root, "pulumi-plugin.json"))
	if err != nil {
		return dartPluginMetadata{}, false
	}
	var metadata dartPluginMetadata
	if json.Unmarshal(contents, &metadata) != nil || !metadata.Resource || strings.TrimSpace(metadata.Name) == "" {
		return dartPluginMetadata{}, false
	}
	metadata.Name = strings.TrimSpace(metadata.Name)
	metadata.Version = strings.TrimSpace(metadata.Version)
	metadata.Server = strings.TrimSpace(metadata.Server)
	return metadata, true
}

func dependencyPackageRoot(pubspecPath, dependency string, spec any) string {
	if path, ok := codegen.DependencySpecPath(spec); ok {
		if !filepath.IsAbs(path) {
			path = filepath.Join(filepath.Dir(pubspecPath), filepath.FromSlash(path))
		}
		return filepath.Clean(path)
	}
	configPath := filepath.Join(filepath.Dir(pubspecPath), ".dart_tool", "package_config.json")
	contents, err := os.ReadFile(configPath)
	if err != nil {
		return ""
	}
	var config struct {
		Packages []struct {
			Name, RootURI string
		} `json:"packages"`
	}
	if json.Unmarshal(contents, &config) != nil {
		return ""
	}
	for _, pkg := range config.Packages {
		if pkg.Name == dependency {
			return packageRootFromURI(filepath.Dir(configPath), pkg.RootURI)
		}
	}
	return ""
}

func packageRootFromURI(base, raw string) string {
	if parsed, err := url.Parse(raw); err == nil && parsed.IsAbs() && parsed.Scheme == "file" {
		return filepath.Clean(parsed.Path)
	}
	return filepath.Clean(filepath.Join(base, filepath.FromSlash(raw)))
}
