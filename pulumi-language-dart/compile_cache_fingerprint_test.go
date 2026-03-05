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

func TestComputeDartProgramFingerprintChangesOnPathDependencyContentChange(t *testing.T) {
	t.Parallel()

	rootDir := t.TempDir()
	programDir := filepath.Join(rootDir, "program")
	depDir := filepath.Join(rootDir, "local_dep")

	entrypoint := filepath.Join(programDir, "bin", "main.dart")
	require.NoError(t, os.MkdirAll(filepath.Dir(entrypoint), 0o700))
	require.NoError(t, os.WriteFile(entrypoint, []byte("void main() {}\n"), 0o600))
	require.NoError(
		t,
		os.WriteFile(
			filepath.Join(programDir, "pubspec.yaml"),
			[]byte("name: program\ndependencies:\n  local_dep:\n    path: ../local_dep\n"),
			0o600,
		),
	)

	require.NoError(t, os.MkdirAll(filepath.Join(depDir, "lib"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(depDir, "pubspec.yaml"), []byte("name: local_dep\n"), 0o600))
	depLibFile := filepath.Join(depDir, "lib", "local_dep.dart")
	require.NoError(t, os.WriteFile(depLibFile, []byte("const value = 1;\n"), 0o600))

	before, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)

	require.NoError(t, os.WriteFile(depLibFile, []byte("const value = 2;\n"), 0o600))

	after, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)
	assert.NotEqual(t, before, after)
}

func TestComputeDartProgramFingerprintChangesOnPackageConfigPulumiDependencyContentChange(t *testing.T) {
	t.Parallel()

	rootDir := t.TempDir()

	programDir := filepath.Join(rootDir, "examples", "aws", "app")
	entrypoint := filepath.Join(programDir, "bin", "main.dart")
	require.NoError(t, os.MkdirAll(filepath.Dir(entrypoint), 0o700))
	require.NoError(t, os.WriteFile(entrypoint, []byte("void main() {}\n"), 0o600))
	require.NoError(
		t,
		os.WriteFile(
			filepath.Join(programDir, "pubspec.yaml"),
			[]byte("name: app\nresolution: workspace\ndependencies:\n  pulumi_aws: ^1.0.0\n"),
			0o600,
		),
	)
	require.NoError(t, os.MkdirAll(filepath.Join(programDir, ".dart_tool"), 0o700))

	depDir := filepath.Join(rootDir, "deps", "pulumi_aws")
	require.NoError(t, os.MkdirAll(filepath.Join(depDir, "lib"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(depDir, "pubspec.yaml"), []byte("name: pulumi_aws\n"), 0o600))
	depLibFile := filepath.Join(depDir, "lib", "pulumi_aws.dart")
	require.NoError(t, os.WriteFile(depLibFile, []byte("const version = 'a';\n"), 0o600))
	require.NoError(
		t,
		os.WriteFile(
			filepath.Join(programDir, ".dart_tool", "package_config.json"),
			[]byte("{\"configVersion\":2,\"packages\":[{\"name\":\"pulumi_aws\",\"rootUri\":\"../../../../deps/pulumi_aws\"}]}"),
			0o600,
		),
	)

	before, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)

	require.NoError(t, os.WriteFile(depLibFile, []byte("const version = 'b';\n"), 0o600))

	after, err := computeDartProgramFingerprint(programDir, filepath.ToSlash(filepath.Join("bin", "main.dart")))
	require.NoError(t, err)
	assert.NotEqual(t, before, after)
}
