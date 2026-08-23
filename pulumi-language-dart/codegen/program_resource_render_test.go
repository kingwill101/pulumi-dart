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
		"    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(protect: true, version: '2.0.0', ));\n",
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
