package main

import (
	"reflect"
	"slices"
	"strings"
	"testing"
)

func TestReadAndParsePubspec(t *testing.T) {
	pubspec, err := ReadAndParsePubspec("testdata/pubspec.yaml")
	if err != nil {
		t.Fatalf("ReadAndParsePubspec failed: %v", err)
	}

	expectedName := "test_package"
	if pubspec.Name != expectedName {
		t.Errorf("Expected package name %s, got %s", expectedName, pubspec.Name)
	}

	expectedDeps := map[string]interface{}{
		"pulumi":     map[string]interface{}{"path": "/path/to/pulumi"},
		"pulumi_aws": "^1.0.0",
	}
	if !reflect.DeepEqual(pubspec.Dependencies, expectedDeps) {
		t.Errorf("Expected dependencies %v, got %v", expectedDeps, pubspec.Dependencies)
	}
}

func TestDeterminePulumiPackages(t *testing.T) {
	input := map[string]interface{}{
		"pulumi":        map[string]interface{}{"path": "/path/to/pulumi"},
		"pulumi_aws":    "^1.0.0",
		"other_package": "^2.0.0",
		"pulumi_azure": map[string]interface{}{
			"git": map[string]interface{}{
				"url": "https://github.com/pulumi/pulumi-azure.git",
				"ref": "v4.0.0",
			},
		},
	}

	expected := [][]string{
		{"pulumi", "path:/path/to/pulumi"},
		{"pulumi_aws", "^1.0.0"},
		{"pulumi_azure", "git:https://github.com/pulumi/pulumi-azure.git#v4.0.0"},
	}

	result := DeterminePulumiPackages(input)
	slices.SortFunc(result, func(a, b []string) int {
		return strings.Compare(a[0], b[0])
	})
	slices.SortFunc(expected, func(a, b []string) int {
		return strings.Compare(a[0], b[0])
	})

	if !reflect.DeepEqual(result, expected) {
		t.Errorf("Expected %v, got %v", expected, result)
	}
}

func TestGetDependencyVersion(t *testing.T) {
	tests := []struct {
		name string
		dep  interface{}
		want string
	}{
		{
			name: "Simple version",
			dep:  "^1.0.0",
			want: "^1.0.0",
		},
		{
			name: "Path dependency",
			dep:  map[string]interface{}{"path": "/path/to/package"},
			want: "path:/path/to/package",
		},
		{
			name: "Git dependency",
			dep: map[string]interface{}{
				"git": map[string]interface{}{
					"url": "https://github.com/example/repo.git",
					"ref": "main",
				},
			},
			want: "git:https://github.com/example/repo.git#main",
		},
		{
			name: "SDK dependency",
			dep:  map[string]interface{}{"sdk": "flutter"},
			want: "sdk:flutter",
		},
		{
			name: "Hosted dependency",
			dep: map[string]interface{}{
				"hosted": map[string]interface{}{
					"version": "2.0.0",
				},
			},
			want: "2.0.0",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := getDependencyVersion(tt.dep); got != tt.want {
				t.Errorf("getDependencyVersion() = %v, want %v", got, tt.want)
			}
		})
	}
}
