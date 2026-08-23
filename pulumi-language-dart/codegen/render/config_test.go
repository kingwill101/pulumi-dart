package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/assert"
)

func TestConfigRendersOptionalAndRequiredAccessors(t *testing.T) {
	actual := Config(dartir.Config{
		ClassName: "SampleConfig",
		Docs:      "Provider configuration.",
		Imports:   []dartir.Import{{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"}},
		Properties: []dartir.ConfigProperty{
			{NameLiteral: "'region'", FieldName: "region", GetterType: "String?", ParseExpression: "raw"},
			{NameLiteral: "'count'", FieldName: "count", GetterType: "int?", ParseExpression: "raw == null ? null : int.parse(raw)", Required: &dartir.RequiredConfigAccessor{MethodName: "requireCount", ReturnType: "int"}},
		},
	})

	source := string(actual)
	assert.Contains(t, source, "import 'package:pulumi/pulumi.dart' as pulumi;")
	assert.Contains(t, source, "String? get region")
	assert.Contains(t, source, "int requireCount()")
	assert.Contains(t, source, "Missing required config value 'count'.")
	assert.Contains(t, source, "bool get countIsSecret")
	assert.NotEqual(t, "\n\n", source[len(source)-2:])
}
