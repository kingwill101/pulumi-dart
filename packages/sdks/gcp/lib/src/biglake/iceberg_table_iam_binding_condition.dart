// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergTableIamBindingCondition {
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> expression;
  final pulumi.Input<String> title;

  /// Creates a new [IcebergTableIamBindingCondition].
  /// [description] Optional.
  /// [expression] Required.
  /// [title] Required.
  const IcebergTableIamBindingCondition({
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

  factory IcebergTableIamBindingCondition.fromMap(Map<String, dynamic> map) {
    return IcebergTableIamBindingCondition(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
