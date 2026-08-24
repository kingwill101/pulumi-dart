package main

import (
	"fmt"
	"path/filepath"
	"strings"
)

func generatedProgramDirectory(targetDirectory, main string) (string, error) {
	main = strings.TrimSpace(main)
	if main == "" || main == "." {
		return targetDirectory, nil
	}
	mainPath := filepath.FromSlash(main)
	if filepath.IsAbs(mainPath) {
		return "", fmt.Errorf("project main must be relative: %q", main)
	}
	cleaned := filepath.Clean(mainPath)
	if cleaned == ".." || strings.HasPrefix(cleaned, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("project main escapes the target directory: %q", main)
	}
	return filepath.Join(targetDirectory, cleaned), nil
}
