package main

import (
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/dartpub"
)

func readAndParsePubspec(path string) (*codegen.PubSpec, error) { return dartpub.Read(path) }

func findPubspecYaml(startDir string) (string, error) { return dartpub.Find(startDir) }

func inferLocalPulumiDependencyFromProject(startDir string) string {
	pubspecPath, err := dartpub.Find(startDir)
	if err != nil {
		return ""
	}
	pubspec, err := dartpub.Read(pubspecPath)
	if err != nil {
		return ""
	}
	if path := localPulumiDependencyPath(pubspec.Dependencies, pubspecPath); path != "" {
		return path
	}
	return localPulumiDependencyPath(pubspec.DependencyOverrides, pubspecPath)
}

func localPulumiDependencyPath(dependencies map[string]interface{}, pubspecPath string) string {
	version := codegen.DependencyVersion(dependencies["pulumi"])
	if !strings.HasPrefix(version, "path:") {
		return ""
	}
	path := strings.TrimSpace(strings.TrimPrefix(version, "path:"))
	if path == "" {
		return ""
	}
	if !filepath.IsAbs(path) {
		path = filepath.Join(filepath.Dir(pubspecPath), path)
	}
	return filepath.Clean(path)
}

func localPathDependencyVersion(pubspecPath, dependency string) string {
	if !strings.HasPrefix(dependency, "path:") {
		return ""
	}
	path := strings.TrimSpace(strings.TrimPrefix(dependency, "path:"))
	if path == "" {
		return ""
	}
	if !filepath.IsAbs(path) {
		path = filepath.Join(filepath.Dir(pubspecPath), path)
	}
	dependencyPubspec, err := dartpub.Read(filepath.Join(filepath.Clean(path), "pubspec.yaml"))
	if err != nil {
		return ""
	}
	return normalizePackageDependencyVersion(dependencyPubspec.Version)
}

func dependencyPackageName(rootDirectory, dependencyPath, fallbackName string) string {
	path := filepath.Join(rootDirectory, dependencyPath, "pubspec.yaml")
	pubspec, err := dartpub.Read(path)
	if err != nil || pubspec.Name == "" {
		return codegen.SanitizeDartIdentifier(fallbackName)
	}
	return codegen.SanitizeDartIdentifier(pubspec.Name)
}
