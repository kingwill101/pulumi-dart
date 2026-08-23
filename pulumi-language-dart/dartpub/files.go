package dartpub

import (
	"fmt"
	"os"
	"path/filepath"

	"gopkg.in/yaml.v3"
)

func Read(path string) (*PubSpec, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, fmt.Errorf("failed to read pubspec.yaml at %s: %w", path, err)
	}
	var pubspec PubSpec
	if err := yaml.Unmarshal(data, &pubspec); err != nil {
		return nil, fmt.Errorf("failed to parse pubspec.yaml at %s: %w", path, err)
	}
	return &pubspec, nil
}

func Find(startDir string) (string, error) {
	directory, err := filepath.Abs(startDir)
	if err != nil {
		return "", err
	}
	for {
		path := filepath.Join(directory, "pubspec.yaml")
		if _, err := os.Stat(path); err == nil {
			return path, nil
		}
		parent := filepath.Dir(directory)
		if parent == directory {
			break
		}
		directory = parent
	}
	return "", fmt.Errorf("pubspec.yaml not found in %s or any parent directory", startDir)
}
