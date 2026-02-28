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

func TestRunUsesProgramDirectoryFromInfoAndEntryPoint(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run.trace")
	scriptPath := writeExecutableScript(t, fmt.Sprintf(
		"#!/usr/bin/env bash\n"+
			"echo \"PWD=$(pwd)\" > %q\n"+
			"echo \"ARGS=$*\" >> %q\n",
		tracePath, tracePath,
	))

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
	assert.Contains(t, trace, "PWD="+runDir)
	assert.Contains(t, trace, "ARGS=run bin/app.dart --flag value")
}

func TestRunFallsBackToLegacyProgramAndPwd(t *testing.T) {
	runDir := t.TempDir()
	tracePath := filepath.Join(runDir, "run.trace")
	scriptPath := writeExecutableScript(t, fmt.Sprintf(
		"#!/usr/bin/env bash\n"+
			"echo \"PWD=$(pwd)\" > %q\n"+
			"echo \"ARGS=$*\" >> %q\n",
		tracePath, tracePath,
	))

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
	assert.Contains(t, trace, "PWD="+runDir)
	assert.Contains(t, trace, "ARGS=run bin/legacy.dart")
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
	assert.Contains(t, trace, "PWD="+runDir)
	assert.Contains(t, trace, "ARGS=--mode smoke")
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
