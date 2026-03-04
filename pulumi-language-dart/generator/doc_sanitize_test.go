package generator

import (
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSanitizeDartDocComment_RemovesChooserAndSpans(t *testing.T) {
	t.Parallel()

	raw := strings.Join([]string{
		"<!-- Start PulumiCodeChooser -->",
		"<span class=\"language-badge\">typescript</span>",
		"Create resource",
		"<!-- End PulumiCodeChooser -->",
		"",
		"## Example Usage",
	}, "\n")

	got := SanitizeDartDocComment(raw)

	assert.Equal(t, "typescript\nCreate resource", got)
}

func TestNormalizeDeprecatedProviderReferences_RewritesProviderRefs(t *testing.T) {
	t.Parallel()

	raw := `{
		"functions": {
			"test:index:getThing": {
				"inputs": {
					"properties": {
						"__self__": {
							"$ref": "/resources/pulumi:providers:test"
						}
					}
				}
			}
		}
	}`

	got := NormalizeDeprecatedProviderReferences(raw)

	assert.NotContains(t, got, "/resources/pulumi:providers:test")
	assert.Contains(t, got, `"$ref":"#/provider"`)
}
