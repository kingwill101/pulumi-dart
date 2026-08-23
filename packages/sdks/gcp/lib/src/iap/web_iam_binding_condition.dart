// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebIamBindingCondition {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  ///
  /// &gt; **Warning:** This provider considers the `role` and condition contents (`title`+`description`+`expression`) as the
  /// identifier for the binding. This means that if any part of the condition is changed out-of-band, the provider will
  /// consider it to be an entirely different resource and will treat it as such.
  final pulumi.Input<String>? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final pulumi.Input<String> expression;
  /// A title for the expression, i.e. a short string describing its purpose.
  final pulumi.Input<String> title;

  /// Creates a new [WebIamBindingCondition].
  /// [description] An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  const WebIamBindingCondition({
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

  factory WebIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return WebIamBindingCondition(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
