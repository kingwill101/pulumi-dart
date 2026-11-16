// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFieldExtractorRuleField {
  /// Wirefilter value expression.
  final pulumi.Input<String> expression;
  /// Field name.
  final pulumi.Input<String> name;

  /// Creates a new [GetFieldExtractorRuleField].
  /// [expression] Wirefilter value expression.
  /// [name] Field name.
  const GetFieldExtractorRuleField({
    required this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'name': name,
    };
  }

  factory GetFieldExtractorRuleField.fromMap(Map<String, dynamic> map) {
    return GetFieldExtractorRuleField(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
