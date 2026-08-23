package codegen

import (
	"fmt"
	"path/filepath"
	"strings"
)

func safeOutputPath(rootDir, relativePath string) (string, error) {
	cleanRelativePath := filepath.Clean(relativePath)
	if cleanRelativePath == "." || cleanRelativePath == "" {
		return "", fmt.Errorf("path must not be empty: %q", relativePath)
	}
	if filepath.IsAbs(cleanRelativePath) {
		return "", fmt.Errorf("absolute paths are not allowed: %q", relativePath)
	}
	if cleanRelativePath == ".." || strings.HasPrefix(cleanRelativePath, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("path escapes package directory: %q", relativePath)
	}

	outputPath := filepath.Join(rootDir, cleanRelativePath)
	relativeToRoot, err := filepath.Rel(rootDir, outputPath)
	if err != nil {
		return "", fmt.Errorf("failed to resolve output path for %q: %w", relativePath, err)
	}
	if relativeToRoot == ".." || strings.HasPrefix(relativeToRoot, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("path escapes package directory: %q", relativePath)
	}

	return outputPath, nil
}
