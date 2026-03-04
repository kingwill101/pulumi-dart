package main

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestNormalizeCompilationContext_BinDirectoryBareDartEntrypoint(t *testing.T) {
	t.Parallel()

	root := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(root, "pubspec.yaml"), []byte("name: sample\n"), 0o600))
	require.NoError(t, os.MkdirAll(filepath.Join(root, "bin"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(root, "bin", "custom_entrypoint.dart"), []byte("void main() {}\n"), 0o600))

	programDirectory, entryPoint := normalizeCompilationContext(
		filepath.Join(root, "bin"),
		"custom_entrypoint.dart",
		root,
	)

	assert.Equal(t, root, programDirectory)
	assert.Equal(t, filepath.ToSlash(filepath.Join("bin", "custom_entrypoint.dart")), entryPoint)
}

func TestNormalizeCompilationContext_BinDirectoryAlreadyQualifiedEntrypoint(t *testing.T) {
	t.Parallel()

	root := t.TempDir()
	require.NoError(t, os.WriteFile(filepath.Join(root, "pubspec.yaml"), []byte("name: sample\n"), 0o600))
	require.NoError(t, os.MkdirAll(filepath.Join(root, "bin"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(root, "bin", "custom_entrypoint.dart"), []byte("void main() {}\n"), 0o600))

	programDirectory, entryPoint := normalizeCompilationContext(
		filepath.Join(root, "bin"),
		filepath.ToSlash(filepath.Join("bin", "custom_entrypoint.dart")),
		root,
	)

	assert.Equal(t, root, programDirectory)
	assert.Equal(t, filepath.ToSlash(filepath.Join("bin", "custom_entrypoint.dart")), entryPoint)
}
