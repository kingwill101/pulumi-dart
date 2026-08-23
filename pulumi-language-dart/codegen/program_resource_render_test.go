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
		Inputs: []dartProgramResourceInput{{Name: "value", Expression: "true"}},
	}

	assert.Equal(t,
		"    final res = simple.index.ResourceType('res', args: simple.index.ResourceArgs(value: (true).input(), ));\n",
		renderDartProgramResource(resource),
	)
}

func TestRenderDartProgramProviderResourceWithoutArgs(t *testing.T) {
	t.Parallel()

	resource := dartProgramResource{
		Name: "block", LogicalName: "block", Type: "provider",
		Package: "sync", Module: "index", Class: "Block", ArgsClass: "BlockArgs",
	}

	assert.Equal(t, "    final block = sync.index.Block('block');\n", renderDartProgramResource(resource))
}
