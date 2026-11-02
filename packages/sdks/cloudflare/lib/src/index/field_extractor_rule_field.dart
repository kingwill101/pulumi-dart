// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FieldExtractorRuleField {
  final pulumi.Input<String> expression;
  final pulumi.Input<String> name;

  /// Creates a new [FieldExtractorRuleField].
  /// [expression] Required.
  /// [name] Required.
  const FieldExtractorRuleField({
    required this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'name': name,
    };
  }

  factory FieldExtractorRuleField.fromMap(Map<String, dynamic> map) {
    return FieldExtractorRuleField(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
