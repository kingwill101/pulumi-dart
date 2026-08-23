package main

import (
	"context"
	"os"
	"path/filepath"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestFindSharedDartKernelRequiresExactLiveFingerprint(t *testing.T) {
	programDir := t.TempDir()
	entrypoint := filepath.ToSlash(filepath.Join("bin", "main.dart"))
	entrypointPath := filepath.Join(programDir, filepath.FromSlash(entrypoint))
	require.NoError(t, os.MkdirAll(filepath.Dir(entrypointPath), 0o700))
	require.NoError(t, os.WriteFile(entrypointPath, []byte("void main() {}\n"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(programDir, "pubspec.yaml"), []byte("name: test\n"), 0o600))

	dartExec := filepath.Join(t.TempDir(), "dart")
	require.NoError(t, os.WriteFile(
		dartExec,
		[]byte("#!/bin/sh\nprintf '%s\\n' 'Dart SDK version: 3.11.0' >&2\n"),
		0o700,
	))
	cacheDir := t.TempDir()
	t.Setenv("PULUMI_DART_PREWARM_CACHE", cacheDir)

	fingerprint, err := sharedDartKernelFingerprint(context.Background(), dartExec, programDir, entrypoint)
	require.NoError(t, err)
	kernel := sharedDartKernelPath(cacheDir, fingerprint)
	require.NoError(t, os.MkdirAll(filepath.Dir(kernel), 0o700))
	require.NoError(t, os.WriteFile(kernel, []byte("kernel"), 0o600))

	got, found := findSharedDartKernel(context.Background(), dartExec, programDir, entrypoint)
	assert.True(t, found)
	assert.Equal(t, kernel, got)

	require.NoError(t, os.WriteFile(entrypointPath, []byte("void main() { print('edited'); }\n"), 0o600))
	_, found = findSharedDartKernel(context.Background(), dartExec, programDir, entrypoint)
	assert.False(t, found)
}

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

func TestComputeDartProgramFingerprintIsPortableAcrossCopiedPrograms(t *testing.T) {
	t.Parallel()

	makeProgram := func(rootDir string) string {
		programDir := filepath.Join(rootDir, "program")
		depDir := filepath.Join(rootDir, "local_dep")
		require.NoError(t, os.MkdirAll(filepath.Join(programDir, "bin"), 0o700))
		require.NoError(t, os.MkdirAll(filepath.Join(depDir, "lib"), 0o700))
		require.NoError(t, os.WriteFile(
			filepath.Join(programDir, "pubspec.yaml"),
			[]byte("name: program\ndependencies:\n  pulumi:\n    path: ../local_dep\n"), 0o600,
		))
		require.NoError(t, os.WriteFile(
			filepath.Join(programDir, "bin", "main.dart"), []byte("void main() {}\n"), 0o600,
		))
		require.NoError(t, os.WriteFile(
			filepath.Join(depDir, "pubspec.yaml"), []byte("name: pulumi\n"), 0o600,
		))
		require.NoError(t, os.WriteFile(
			filepath.Join(depDir, "lib", "pulumi.dart"), []byte("const value = 1;\n"), 0o600,
		))
		return programDir
	}

	first := makeProgram(filepath.Join(t.TempDir(), "source"))
	second := makeProgram(filepath.Join(t.TempDir(), "copied-elsewhere"))
	entrypoint := filepath.ToSlash(filepath.Join("bin", "main.dart"))

	firstFingerprint, err := computeDartProgramFingerprint(first, entrypoint)
	require.NoError(t, err)
	secondFingerprint, err := computeDartProgramFingerprint(second, entrypoint)
	require.NoError(t, err)
	assert.Equal(t, firstFingerprint, secondFingerprint)
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
