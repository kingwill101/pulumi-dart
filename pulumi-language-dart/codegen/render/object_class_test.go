package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/require"
)

func TestObjectClass(t *testing.T) {
	t.Parallel()

	actual := ObjectClass(dartir.ObjectClass{
		Name:      "WidgetArgs",
		Docs:      "Arguments for a widget.",
		DocsMacro: "widget_args",
		Imports:   []dartir.Import{{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"}},
		Properties: []dartir.ObjectProperty{
			{
				NameLiteral:       "'name'",
				FieldName:         "name",
				Docs:              "The widget name.",
				FieldType:         "pulumi.Input<String>",
				ConstructorDocs:   "The widget name.",
				Required:          true,
				ToMapExpression:   "name",
				FromMapExpression: "map['name'] as pulumi.Input<String>",
			},
		},
	})

	require.Equal(t, `// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template widget_args}
/// Arguments for a widget.
/// {@endtemplate}
/// {@macro widget_args}
class WidgetArgs {
  /// The widget name.
  final pulumi.Input<String> name;

  /// Creates a new [WidgetArgs].
  /// [name] The widget name.
  const WidgetArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WidgetArgs.fromMap(Map<String, dynamic> map) {
    return WidgetArgs(
      name: map['name'] as pulumi.Input<String>,
    );
  }
}
`, string(actual))
}
