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
	assert.Contains(t, rendered, "registerInputs ? pulumi.Input.mapToInputs(args.toMap()) : const {}")
	assert.Contains(t, rendered, "Child(name + '-child'")
	assert.Contains(t, rendered, "parent: this")
	assert.Contains(t, rendered, "registerOutputs({'result': result, })")
}

func TestRenderComponentOmitsOnlyCyclicRegistrationInputs(t *testing.T) {
	t.Parallel()

	rendered := renderDartComponentInstance(dartProgramComponentInstance{
		Name: "first", LogicalName: "first", Class: "First",
		Inputs:                 []dartProgramResourceInput{{Name: "input", Expression: "deferred"}},
		OmitRegistrationInputs: true,
	})
	assert.Contains(t, rendered, "args: FirstArgs(input: pulumi.Input.asInput(deferred), )")
	assert.Contains(t, rendered, "registerInputs: false")
}

func TestRenderRangedDartComponent(t *testing.T) {
	t.Parallel()

	component := dartProgramComponentInstance{
		Name: "items", LogicalName: "items", Class: "Example",
		Range: &dartProgramResourceRange{Expression: "2", Kind: "number"},
	}
	assert.Equal(t,
		"    final items = [for (final range in pulumi.rangeEntries(2)) Example('items' + '-' + range.key.toString())];\n",
		renderDartComponentInstance(component),
	)
}

func TestRenderDeferredOutputLifecycle(t *testing.T) {
	t.Parallel()

	declaration := dartProgramDeferredOutput{Name: "later", DartType: "bool"}
	resolution := dartProgramDeferredResolution{Name: "later", DartType: "bool", Expression: "source.value"}
	assert.Equal(t,
		"    final (later, laterResolve) = pulumi.deferredOutput<bool>();\n",
		renderDartDeferredStatement(dartProgramStatement{DeferredOutput: &declaration}),
	)
	assert.Equal(t,
		"    laterResolve(pulumi.Input.asInput<bool>(source.value).toOutput());\n",
		renderDartDeferredStatement(dartProgramStatement{DeferredResolution: &resolution}),
	)
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

func TestRenderDartComponentUsesWireArgumentName(t *testing.T) {
	t.Parallel()

	rendered := renderDartComponent(dartProgramComponent{
		Name: "Reserved",
		Args: []dartProgramComponentArg{{Name: "string_", WireName: "string", DartType: "String"}},
	})

	assert.Contains(t, rendered, "{'string': string_, }")
}
