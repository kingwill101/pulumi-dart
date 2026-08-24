package codegen

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestRenderDartProgramProviderResource(t *testing.T) {
	t.Parallel()

	resource := dartProgramResource{
		Name: "res", LogicalName: "res", Type: "provider",
		Package: "simple", Module: "index", Class: "ResourceType", ArgsClass: "ResourceArgs",
		Inputs:       []dartProgramResourceInput{{Name: "value", Expression: "true"}},
		OptionsClass: "CustomResourceOptions",
		Options: []dartProgramResourceOption{
			{Name: "protect", Expression: "true"},
			{Name: "version", Expression: "'2.0.0'"},
		},
	}

	assert.Equal(t,
		"    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(protect: true, version: '2.0.0', ));\n",
		renderDartProgramResource(resource),
	)
}

func TestRenderDartProgramProviderResourceWithoutArgs(t *testing.T) {
	t.Parallel()

	resource := dartProgramResource{
		Name: "block", LogicalName: "block", Type: "provider",
		Package: "sync", Module: "index", Class: "Block", ArgsClass: "BlockArgs",
	}

	assert.Equal(t, "    final block = sync_index.Block('block');\n", renderDartProgramResource(resource))
}

func TestRenderDartProgramOutputRangeAwaitsStableEntries(t *testing.T) {
	t.Parallel()

	resource := dartProgramResource{
		Name: "item", LogicalName: "item", Type: "provider",
		Package: "simple", Module: "index", Class: "ResourceType", ArgsClass: "ResourceArgs",
		Range: &dartProgramResourceRange{Expression: "source.values", Kind: "list", IsOutput: true},
	}

	assert.Equal(t,
		"    final item = [for (final range in await pulumi.resolveRangeEntries(source.values)) simple_index.ResourceType('item-' + range.key.toString())];\n",
		renderDartProgramResource(resource),
	)
}
