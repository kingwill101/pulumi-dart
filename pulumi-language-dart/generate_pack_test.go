package main

import (
	"fmt"
	"io/fs"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func readGeneratedPackageLibraries(t *testing.T, targetDir, packageName string) (root string, sdk string) {
	t.Helper()

	rootData, err := os.ReadFile(filepath.Join(targetDir, "lib", packageName+".dart"))
	require.NoError(t, err)

	sdkDir := filepath.Join(targetDir, "lib", "src")
	paths := make([]string, 0, 16)
	err = filepath.WalkDir(sdkDir, func(path string, d fs.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		if d.IsDir() || filepath.Ext(path) != ".dart" {
			return nil
		}
		rel, relErr := filepath.Rel(sdkDir, path)
		if relErr != nil {
			return relErr
		}
		paths = append(paths, filepath.ToSlash(rel))
		return nil
	})
	require.NoError(t, err)
	sort.Strings(paths)

	var b strings.Builder
	for _, rel := range paths {
		content, readErr := os.ReadFile(filepath.Join(sdkDir, filepath.FromSlash(rel)))
		require.NoError(t, readErr)
		fmt.Fprintf(&b, "// FILE: %s\n", rel)
		b.Write(content)
		if len(content) == 0 || content[len(content)-1] != '\n' {
			b.WriteString("\n")
		}
		if rel != paths[len(paths)-1] {
			b.WriteString("\n")
		}
	}

	return string(rootData), b.String()
}

func generatedResourceContent(t *testing.T, targetDir, resourceName string) string {
	t.Helper()

	resourceData, err := os.ReadFile(filepath.Join(targetDir, "lib", "src", resourceName+".dart"))
	if err == nil {
		return string(resourceData)
	}

	matches, err := filepath.Glob(filepath.Join(targetDir, "lib", "src", "*", resourceName+".dart"))
	require.NoError(t, err)
	require.NotEmpty(t, matches)
	resourceData, err = os.ReadFile(matches[0])
	require.NoError(t, err)
	return string(resourceData)
}

func assertGoldenFile(t *testing.T, goldenPath string, actual string) {
	t.Helper()

	if os.Getenv("UPDATE_GOLDENS") == "1" {
		require.NoError(t, os.MkdirAll(filepath.Dir(goldenPath), 0o700))
		require.NoError(t, os.WriteFile(goldenPath, []byte(actual), 0o600))
	}

	expected, err := os.ReadFile(goldenPath)
	require.NoError(t, err)
	assert.Equal(t, string(expected), actual)
}
