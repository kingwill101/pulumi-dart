package main

import (
	"os"
	"path/filepath"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestComputeDartProgramFingerprintIgnoresTouchOnlyChanges(t *testing.T) {
	t.Parallel()

	programDir := t.TempDir()
	entrypoint := filepath.Join(programDir, "bin", "main.dart")
	require.NoError(t, os.MkdirAll(filepath.Dir(entrypoint), 0o700))
	require.NoError(t, os.WriteFile(entrypoint, []byte("void main() {}\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(programDir, "pubspec.yaml"), []byte("name: test\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(programDir, "pubspec.lock"), []byte("packages:\n"), 0o600))

	before, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)

	lockPath := filepath.Join(programDir, "pubspec.lock")
	now := time.Now().Add(2 * time.Second)
	require.NoError(t, os.Chtimes(lockPath, now, now))

	after, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)
	assert.Equal(t, before, after)
}

func TestComputeDartProgramFingerprintChangesOnContentChange(t *testing.T) {
	t.Parallel()

	programDir := t.TempDir()
	entrypoint := filepath.Join(programDir, "bin", "main.dart")
	require.NoError(t, os.MkdirAll(filepath.Dir(entrypoint), 0o700))
	require.NoError(t, os.WriteFile(entrypoint, []byte("void main() {}\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(programDir, "pubspec.yaml"), []byte("name: test\n"), 0o600))

	before, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)

	require.NoError(t, os.WriteFile(entrypoint, []byte("void main() { print('x'); }\n"), 0o600))

	after, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)
	assert.NotEqual(t, before, after)
}
