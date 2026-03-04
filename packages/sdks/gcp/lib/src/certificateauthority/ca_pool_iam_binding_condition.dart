// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolIamBindingCondition {
  final pulumi.Input<String>? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final pulumi.Input<String> expression;

  /// A title for the expression, i.e. a short string describing its purpose.
  final pulumi.Input<String> title;

  /// Creates a new [CaPoolIamBindingCondition].
  /// [description] Optional.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  CaPoolIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'title': title,
    };
  }

  factory CaPoolIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return CaPoolIamBindingCondition(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
