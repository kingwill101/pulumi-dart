package main

import (
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestGeneratedProgramDirectory(t *testing.T) {
	t.Parallel()

	root := t.TempDir()
	directory, err := generatedProgramDirectory(root, "subdir")
	require.NoError(t, err)
	assert.Equal(t, filepath.Join(root, "subdir"), directory)

	_, err = generatedProgramDirectory(root, "../outside")
	assert.ErrorContains(t, err, "escapes the target directory")
}
