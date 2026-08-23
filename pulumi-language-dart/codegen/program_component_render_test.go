package codegen

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestRenderDartComponentPreservesParentingAndOutputs(t *testing.T) {
	t.Parallel()

	component := dartProgramComponent{
		Name: "Example",
		Args: []dartProgramComponentArg{{Name: "message", DartType: "String", Required: true}},
		Program: dartProgram{
			Statements: []dartProgramStatement{{Component: &dartProgramComponentInstance{
				Name: "child", LogicalName: "child", PrefixLogicalName: true,
				Class:   "Child",
				Options: []dartProgramResourceOption{{Name: "parent", Expression: "this"}},
			}}},
			Outputs: []dartProgramOutput{{Name: "result", Expression: "args.message"}},
		},
	}

	rendered := renderDartComponent(component)
	assert.Contains(t, rendered, "class ExampleArgs")
	assert.Contains(t, rendered, "super('components:index:Example', name")
	assert.Contains(t, rendered, "Child(name + '-child'")
	assert.Contains(t, rendered, "parent: this")
	assert.Contains(t, rendered, "registerOutputs({'result': result, })")
}

func TestTypedInvokeInputUsesGeneratedArgumentType(t *testing.T) {
	t.Parallel()

	assert.Equal(t,
		"pulumi.output(value).apply<String>((value) => value as String)",
		typedInvokeInput("value", "String"),
	)
	assert.Equal(t, "value", typedInvokeInput("value", "dynamic"))
	assert.Equal(t,
		"pulumi.output(value).apply<List<String>>((value) => (value as List).cast<String>())",
		typedInvokeInput("value", "List<String>"),
	)
	assert.Equal(t,
		"pulumi.output(value).apply<Map<String, int>?>((value) => value == null ? null : (value as Map).cast<String, int>())",
		typedInvokeInput("value", "Map<String, int>?"),
	)
}
