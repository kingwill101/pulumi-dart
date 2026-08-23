package dartpub

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/require"
)

func TestFindAndReadPubspec(t *testing.T) {
	projectDirectory := t.TempDir()
	nestedDirectory := filepath.Join(projectDirectory, "tool", "generated")
	require.NoError(t, os.MkdirAll(nestedDirectory, 0o700))
	require.NoError(t, os.WriteFile(
		filepath.Join(projectDirectory, "pubspec.yaml"),
		[]byte("name: sample\ndependencies:\n  pulumi: ^1.0.0\n"),
		0o600,
	))

	path, err := Find(nestedDirectory)
	require.NoError(t, err)
	pubspec, err := Read(path)
	require.NoError(t, err)
	require.Equal(t, "sample", pubspec.Name)
	require.Equal(t, "^1.0.0", pubspec.Dependencies["pulumi"])
}
