package codegen_test

import (
	"bufio"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/stretchr/testify/require"
)

const (
	productionFileCeiling = 300
	testFileCeiling       = 450
)

// These predate the staged generator architecture. Delete entries as each
// responsibility is migrated; do not add entries for new code.
var legacyOversizedFiles = map[string]string{
	"codegen/codegen_artifacts.go":         "package metadata and scaffolding are not split yet",
	"codegen/codegen_emit_library.go":      "legacy combined-library renderer",
	"codegen/codegen_raw_external.go":      "legacy raw-schema and external-reference resolver",
	"codegen/codegen_schema_bind.go":       "legacy bound-schema lowering",
	"codegen/codegen_schema_parse.go":      "legacy raw-schema lowering",
	"codegen/codegen_schema_types.go":      "legacy schema type conversion",
	"codegen/codegen_writers_resources.go": "legacy resource renderer",
	"codegen/generator_sources.go":         "legacy file and symbol planner",
	"generate_pack_test.go":                "legacy end-to-end generator test suite",
	"host_generate.go":                     "legacy RPC, policy, and filesystem orchestration",
}

func TestGeneratorFilesRemainFocused(t *testing.T) {
	_, currentFile, _, ok := runtime.Caller(0)
	require.True(t, ok)
	moduleRoot := filepath.Dir(filepath.Dir(currentFile))

	err := filepath.WalkDir(moduleRoot, func(path string, entry os.DirEntry, err error) error {
		require.NoError(t, err)
		if entry.IsDir() || filepath.Ext(path) != ".go" {
			return nil
		}
		relative, err := filepath.Rel(moduleRoot, path)
		require.NoError(t, err)
		relative = filepath.ToSlash(relative)
		if !isGeneratorFile(relative) {
			return nil
		}

		lines := lineCount(t, path)
		ceiling := productionFileCeiling
		if strings.HasSuffix(relative, "_test.go") {
			ceiling = testFileCeiling
		}
		if lines > ceiling {
			_, allowed := legacyOversizedFiles[relative]
			require.Truef(t, allowed, "%s has %d lines; split it below the %d-line ceiling", relative, lines, ceiling)
		}
		return nil
	})
	require.NoError(t, err)
}

func isGeneratorFile(relative string) bool {
	return strings.HasPrefix(relative, "codegen/") ||
		strings.HasPrefix(relative, "generator/") ||
		relative == "host_generate.go" ||
		relative == "generate_pack_test.go"
}

func lineCount(t *testing.T, path string) int {
	t.Helper()
	file, err := os.Open(path)
	require.NoError(t, err)
	defer file.Close()

	count := 0
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		count++
	}
	require.NoError(t, scanner.Err())
	return count
}
