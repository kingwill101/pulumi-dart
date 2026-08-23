// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterNamedSetElement {
  /// Description of the expression.
  final pulumi.Input<String>? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final pulumi.Input<String> expression;
  /// String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  final pulumi.Input<String>? location;
  /// Title for the expression, i.e. a short string describing its purpose.
  final pulumi.Input<String>? title;

  /// Creates a new [RouterNamedSetElement].
  /// [description] Description of the expression.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  /// [title] Title for the expression, i.e. a short string describing its purpose.
  const RouterNamedSetElement({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'location': ?location,
      'title': ?title,
    };
  }

  factory RouterNamedSetElement.fromMap(Map<String, dynamic> map) {
    return RouterNamedSetElement(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
