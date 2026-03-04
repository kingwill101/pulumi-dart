package generator

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestModuleExportPathsFromContent(t *testing.T) {
	t.Parallel()

	content := []byte("export 'a.dart';\n// comment\nexport 'b/c.dart';\n")
	paths := ModuleExportPathsFromContent(content)

	assert.Equal(t, []string{"a.dart", "b/c.dart"}, paths)
}

func TestRelativeImportPath(t *testing.T) {
	t.Parallel()

	got := RelativeImportPath("index.dart", "index/widget.dart")
	assert.Equal(t, "index/widget.dart", got)
}

func TestGeneratedPublicModuleEntryPoints(t *testing.T) {
	t.Parallel()

	sdkSources := map[string][]byte{
		"index.dart":         []byte("export 'index/widget.dart';\n"),
		"providers.dart":     []byte("export 'providers/provider.dart';\n"),
		"config/config.dart": []byte(""),
		"internal/foo.dart":  []byte(""),
	}

	entryPoints := GeneratedPublicModuleEntryPoints("pulumi_sample", sdkSources)

	assert.Contains(t, entryPoints, "index.dart")
	assert.Contains(t, entryPoints, "providers.dart")
	assert.NotContains(t, entryPoints, "config.dart")
	assert.Equal(
		t,
		"export 'package:pulumi_sample/src/index.dart';\n",
		string(entryPoints["index.dart"]),
	)
	assert.Equal(
		t,
		"export 'package:pulumi_sample/src/providers.dart';\n",
		string(entryPoints["providers.dart"]),
	)
}
