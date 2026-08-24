package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/assert"
)

func TestEnum(t *testing.T) {
	actual := Enum(dartir.Enum{Name: "Color", Docs: "A wire color.", UnderlyingType: "String", Values: []dartir.EnumValue{
		{Name: "red", Docs: "The red value.", Literal: "'red'"},
		{Name: "blue", Literal: "'blue'"},
	}})
	assert.Equal(t, "import 'package:pulumi/pulumi.dart' as pulumi;\n\n/// A wire color.\nenum Color implements pulumi.PulumiEnum<String> {\n  /// The red value.\n  red('red'),\n  blue('blue');\n\n  const Color(this.wireValue);\n  @override\n  final String wireValue;\n\n  static Color fromValue(String value) {\n    for (final item in Color.values) {\n      if (item.wireValue == value) {\n        return item;\n      }\n    }\n    throw ArgumentError('Unknown Color value: $value');\n  }\n}\n", string(actual))
}
