package darttext

import (
	"strings"
	"testing"

	"github.com/stretchr/testify/require"
)

func TestSanitizeDocComment(t *testing.T) {
	t.Parallel()

	raw := strings.Join([]string{
		"<!-- Start PulumiCodeChooser -->",
		"<span class=\"language-badge\">typescript</span>",
		"Create resource",
		"<!-- End PulumiCodeChooser -->",
		"",
		"## Example Usage",
	}, "\n")

	require.Equal(t, "typescript\nCreate resource", SanitizeDocComment(raw))
}

func TestNormalizeDeprecatedProviderReferences(t *testing.T) {
	t.Parallel()

	raw := `{"properties":{"__self__":{"$ref":"/resources/pulumi:providers:test"}}}`
	actual := NormalizeDeprecatedProviderReferences(raw)

	require.NotContains(t, actual, "/resources/pulumi:providers:test")
	require.Contains(t, actual, `"$ref":"#/provider"`)
}
