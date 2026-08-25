// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataPolicyIamBindingCondition {
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> expression;
  final pulumi.Input<String> title;

  /// Creates a new [DataPolicyIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  const DataPolicyIamBindingCondition({
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

  factory DataPolicyIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return DataPolicyIamBindingCondition(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
