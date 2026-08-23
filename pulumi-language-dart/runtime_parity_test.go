package main

import (
	"context"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/protobuf/types/known/structpb"
)

func writeExecutableScript(t *testing.T, contents string) string {
	t.Helper()
	path := filepath.Join(t.TempDir(), "script.sh")
	err := os.WriteFile(path, []byte(contents), 0o700)
	require.NoError(t, err)
	return path
}

func readFileString(t *testing.T, path string) string {
	t.Helper()
	data, err := os.ReadFile(path)
	require.NoError(t, err)
	return string(data)
}

func assertTraceWorkingDirectory(t *testing.T, trace, label, expected string) {
	t.Helper()
	for _, line := range strings.Split(trace, "\n") {
		if !strings.HasPrefix(line, label+"=") {
			continue
		}
		actual := strings.TrimPrefix(line, label+"=")
		assert.Equal(t, canonicalTestPath(expected), canonicalTestPath(actual))
		return
	}
	t.Errorf("trace does not contain %s: %s", label, trace)
}

func canonicalTestPath(path string) string {
	resolved, err := filepath.EvalSymlinks(path)
	if err == nil {
		return filepath.Clean(resolved)
	}
	return filepath.Clean(path)
}

func writeFakeDartCompilerScript(t *testing.T, tracePath string) string {
	t.Helper()
	path := filepath.Join(t.TempDir(), "dart.sh")
	contents := fmt.Sprintf(`#!/usr/bin/env bash
set -euo pipefail
trace=%q

if [ "$1" = "compile" ] && [ "$2" = "exe" ]; then
  entry="$3"
  if [ "$4" != "-o" ]; then
    exit 97
  fi
  out="$5"
  echo "COMPILE_PWD=$(pwd)" >> "$trace"
  echo "COMPILE_ARGS=$*" >> "$trace"
  mkdir -p "$(dirname "$out")"
  cat > "$out" <<EOF
#!/usr/bin/env bash
echo "RUN_PWD=\$(pwd)" >> %q
echo "RUN_ARGS=\$*" >> %q
EOF
  chmod +x "$out"
  exit 0
fi

echo "DART_ARGS=$*" >> "$trace"
`, tracePath, tracePath, tracePath)
	require.NoError(t, os.WriteFile(path, []byte(contents), 0o700))
	return path
}

func TestRunUsesProgramDirectoryFromInfoAndEntryPoint(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run.trace")
	scriptPath := writeFakeDartCompilerScript(t, tracePath)

	host := &dartLanguageHost{
		exec:          scriptPath,
		engineAddress: "127.0.0.1:0",
	}

	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Pwd:     t.TempDir(),
		Program: "legacy.dart",
		Args:    []string{"--flag", "value"},
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
			EntryPoint:       "bin/app.dart",
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assertTraceWorkingDirectory(t, trace, "COMPILE_PWD", runDir)
	assert.Contains(t, trace, "COMPILE_ARGS=compile exe bin/app.dart -o ")
	assertTraceWorkingDirectory(t, trace, "RUN_PWD", runDir)
	assert.Contains(t, trace, "RUN_ARGS=--flag value")
}

func TestRunFallsBackToLegacyProgramAndPwd(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run.trace")
	scriptPath := writeFakeDartCompilerScript(t, tracePath)

	host := &dartLanguageHost{
		exec:          scriptPath,
		engineAddress: "127.0.0.1:0",
	}

	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Pwd:     runDir,
		Program: "bin/legacy.dart",
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assertTraceWorkingDirectory(t, trace, "COMPILE_PWD", runDir)
	assert.Contains(t, trace, "COMPILE_ARGS=compile exe bin/legacy.dart -o ")
	assertTraceWorkingDirectory(t, trace, "RUN_PWD", runDir)
	assert.Contains(t, trace, "RUN_ARGS=")
}

func TestRunResolvesSimpleEntrypointToBinDart(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run.trace")
	scriptPath := writeFakeDartCompilerScript(t, tracePath)

	binDir := filepath.Join(runDir, "bin")
	require.NoError(t, os.MkdirAll(binDir, 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(binDir, "infra.dart"), []byte(""), 0o600))

	host := &dartLanguageHost{
		exec:          scriptPath,
		engineAddress: "127.0.0.1:0",
	}

	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Pwd:     t.TempDir(),
		Program: "",
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
			EntryPoint:       "infra",
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assertTraceWorkingDirectory(t, trace, "COMPILE_PWD", runDir)
	assert.Contains(t, trace, "COMPILE_ARGS=compile exe bin/infra.dart -o ")
	assertTraceWorkingDirectory(t, trace, "RUN_PWD", runDir)
	assert.Contains(t, trace, "RUN_ARGS=")
}

func TestRunFallsBackToMainDartWhenDot(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run.trace")
	scriptPath := writeFakeDartCompilerScript(t, tracePath)

	binDir := filepath.Join(runDir, "bin")
	require.NoError(t, os.MkdirAll(binDir, 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(binDir, "main.dart"), []byte(""), 0o600))

	host := &dartLanguageHost{
		exec:          scriptPath,
		engineAddress: "127.0.0.1:0",
	}

	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Pwd:     t.TempDir(),
		Program: ".",
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
			EntryPoint:       ".",
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assertTraceWorkingDirectory(t, trace, "COMPILE_PWD", runDir)
	assert.Contains(t, trace, "COMPILE_ARGS=compile exe bin/main.dart -o ")
	assertTraceWorkingDirectory(t, trace, "RUN_PWD", runDir)
	assert.Contains(t, trace, "RUN_ARGS=")
}

func TestRunTreatsEmptyProgramAsDotForEntrypointResolution(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run-empty-program.trace")
	scriptPath := writeFakeDartCompilerScript(t, tracePath)

	binDir := filepath.Join(runDir, "bin")
	require.NoError(t, os.MkdirAll(binDir, 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(binDir, "main.dart"), []byte(""), 0o600))

	host := &dartLanguageHost{
		exec:          scriptPath,
		engineAddress: "127.0.0.1:0",
	}

	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Pwd:     t.TempDir(),
		Program: "",
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
			EntryPoint:       ".",
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assertTraceWorkingDirectory(t, trace, "COMPILE_PWD", runDir)
	assert.Contains(t, trace, "COMPILE_ARGS=compile exe bin/main.dart -o ")
	assertTraceWorkingDirectory(t, trace, "RUN_PWD", runDir)
}

func TestRunBinaryHonorsArgsAndProgramDirectory(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run.trace")
	scriptPath := writeExecutableScript(t, fmt.Sprintf(
		"#!/usr/bin/env bash\n"+
			"echo \"PWD=$(pwd)\" > %q\n"+
			"echo \"ARGS=$*\" >> %q\n",
		tracePath, tracePath,
	))

	host := &dartLanguageHost{
		exec:          "dart",
		binary:        scriptPath,
		engineAddress: "127.0.0.1:0",
	}

	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Args: []string{"--mode", "smoke"},
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assertTraceWorkingDirectory(t, trace, "PWD", runDir)
	assert.Contains(t, trace, "ARGS=--mode smoke")
}

func TestRunUsesRuntimeOptionBinary(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "runtime-binary.trace")
	scriptPath := writeExecutableScript(t, fmt.Sprintf(
		"#!/usr/bin/env bash\n"+
			"echo \"PWD=$(pwd)\" > %q\n"+
			"echo \"ARGS=$*\" >> %q\n",
		tracePath, tracePath,
	))

	options, err := structpb.NewStruct(map[string]interface{}{
		"binary": scriptPath,
	})
	require.NoError(t, err)

	host := &dartLanguageHost{
		exec:          "dart",
		engineAddress: "127.0.0.1:0",
	}

	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Args: []string{"--mode", "runtime"},
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
			Options:          options,
		},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assertTraceWorkingDirectory(t, trace, "PWD", runDir)
	assert.Contains(t, trace, "ARGS=--mode runtime")
}

func TestRunRejectsBinaryAndBuildTargetRuntimeOptions(t *testing.T) {
	options, err := structpb.NewStruct(map[string]interface{}{
		"binary":      "./bin/program",
		"buildTarget": ".dart_tool/pulumi/program",
	})
	require.NoError(t, err)

	host := &dartLanguageHost{
		exec:          "dart",
		engineAddress: "127.0.0.1:0",
	}

	_, err = host.Run(context.Background(), &pulumirpc.RunRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: t.TempDir(),
			EntryPoint:       "bin/main.dart",
			Options:          options,
		},
	})
	require.Error(t, err)
	assert.Contains(t, err.Error(), "binary and buildTarget cannot both be specified")
}

func TestRunReusesCompiledCacheWhenProgramUnchanged(t *testing.T) {
	runDir := t.TempDir()
	binDir := filepath.Join(runDir, "bin")
	require.NoError(t, os.MkdirAll(binDir, 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(binDir, "main.dart"), []byte("void main() {}"), 0o600))

	tracePath := filepath.Join(runDir, "cache.trace")
	dartPath := writeFakeDartCompilerScript(t, tracePath)
	host := &dartLanguageHost{
		exec:          dartPath,
		engineAddress: "127.0.0.1:0",
	}

	req := &pulumirpc.RunRequest{
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
			EntryPoint:       "bin/main.dart",
		},
	}

	resp, err := host.Run(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	resp, err = host.Run(context.Background(), req)
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())

	trace := readFileString(t, tracePath)
	assert.Equal(t, 1, strings.Count(trace, "COMPILE_ARGS=compile exe bin/main.dart -o "))
	assert.Equal(t, 2, strings.Count(trace, "RUN_PWD="))
	assertTraceWorkingDirectory(t, trace, "RUN_PWD", runDir)
}

func TestRunUsesExactSharedKernel(t *testing.T) {
	runDir := t.TempDir()
	entryPoint := "bin/main.dart"
	require.NoError(t, os.MkdirAll(filepath.Join(runDir, "bin"), 0o700))
	require.NoError(t, os.WriteFile(filepath.Join(runDir, entryPoint), []byte("void main() {}"), 0o600))
	require.NoError(t, os.WriteFile(filepath.Join(runDir, "pubspec.yaml"), []byte("name: test\n"), 0o600))

	tracePath := filepath.Join(runDir, "shared.trace")
	dartPath := writeExecutableScript(t, fmt.Sprintf(`#!/usr/bin/env bash
set -euo pipefail
if [ "$1" = "--version" ]; then
  echo "Dart SDK version: 3.11.0" >&2
  exit 0
fi
echo "DART_ARGS=$*" >> %q
`, tracePath))
	cacheDir := t.TempDir()
	t.Setenv("PULUMI_DART_PREWARM_CACHE", cacheDir)
	fingerprint, err := sharedDartKernelFingerprint(context.Background(), dartPath, runDir, entryPoint)
	require.NoError(t, err)
	kernel := sharedDartKernelPath(cacheDir, fingerprint)
	require.NoError(t, os.MkdirAll(filepath.Dir(kernel), 0o700))
	require.NoError(t, os.WriteFile(kernel, []byte("kernel"), 0o600))

	host := &dartLanguageHost{exec: dartPath, engineAddress: "127.0.0.1:0"}
	resp, err := host.Run(context.Background(), &pulumirpc.RunRequest{
		Args: []string{"--flag", "value"},
		Info: &pulumirpc.ProgramInfo{ProgramDirectory: runDir, EntryPoint: entryPoint},
	})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.GetError())
	assert.Equal(t, "DART_ARGS=run "+kernel+" --flag value\n", readFileString(t, tracePath))
}

func TestAboutCapturesVersionFromStderr(t *testing.T) {
	scriptPath := writeExecutableScript(t,
		"#!/usr/bin/env bash\n"+
			"echo \"Dart SDK version: 3.9.0\" 1>&2\n",
	)

	host := &dartLanguageHost{exec: scriptPath}
	resp, err := host.About(context.Background(), &pulumirpc.AboutRequest{})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Equal(t, scriptPath, resp.GetExecutable())
	assert.Equal(t, "Dart SDK version: 3.9.0", strings.TrimSpace(resp.GetVersion()))
}

func TestGetProgramDependenciesRespectsProgramInfoAndTransitiveFlag(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "deps.trace")
	scriptPath := writeExecutableScript(t, fmt.Sprintf(
		"#!/usr/bin/env bash\n"+
			"echo \"PWD=$(pwd)\" > %q\n"+
			"echo \"ARGS=$*\" >> %q\n"+
			"if [ \"$1\" != \"pub\" ] || [ \"$2\" != \"deps\" ] || [ \"$3\" != \"--json\" ]; then\n"+
			"  exit 2\n"+
			"fi\n"+
			"cat <<'JSON'\n"+
			"{\"root\":\"app\",\"packages\":[{\"name\":\"app\",\"version\":\"0.1.0\",\"kind\":\"root\",\"directDependencies\":[\"foo\",\"bar\"]},{\"name\":\"foo\",\"version\":\"1.0.0\",\"kind\":\"direct\"},{\"name\":\"bar\",\"version\":\"2.0.0\",\"kind\":\"dev\"},{\"name\":\"baz\",\"version\":\"3.0.0\",\"kind\":\"transitive\"}]}\n"+
			"JSON\n",
		tracePath, tracePath,
	))

	host := &dartLanguageHost{exec: scriptPath}

	directResp, err := host.GetProgramDependencies(context.Background(), &pulumirpc.GetProgramDependenciesRequest{
		Pwd: "ignored",
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
		},
		TransitiveDependencies: false,
	})
	require.NoError(t, err)
	require.NotNil(t, directResp)
	require.Len(t, directResp.Dependencies, 2)
	assert.Equal(t, "bar", directResp.Dependencies[0].Name)
	assert.Equal(t, "2.0.0", directResp.Dependencies[0].Version)
	assert.Equal(t, "foo", directResp.Dependencies[1].Name)
	assert.Equal(t, "1.0.0", directResp.Dependencies[1].Version)

	transitiveResp, err := host.GetProgramDependencies(context.Background(), &pulumirpc.GetProgramDependenciesRequest{
		Pwd: "ignored",
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: runDir,
		},
		TransitiveDependencies: true,
	})
	require.NoError(t, err)
	require.NotNil(t, transitiveResp)
	require.Len(t, transitiveResp.Dependencies, 3)
	assert.Equal(t, "bar", transitiveResp.Dependencies[0].Name)
	assert.Equal(t, "baz", transitiveResp.Dependencies[1].Name)
	assert.Equal(t, "foo", transitiveResp.Dependencies[2].Name)

	trace := readFileString(t, tracePath)
	assert.Contains(t, trace, "PWD="+runDir)
	assert.Contains(t, trace, "ARGS=pub deps --json")
}
