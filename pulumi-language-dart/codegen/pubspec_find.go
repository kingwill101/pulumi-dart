package codegen

import (
	"fmt"
	"os"
	"path/filepath"
)

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
		parent := filepath.Dir(dir)
		if parent == dir {
			break
		}
		dir = parent
	}
	return "", fmt.Errorf("pubspec.yaml not found in %s or any parent directory", startDir)
}
