// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionSqlBooleanTest {
  /// The name of the column containing the boolean value. If the value in a row is
  /// NULL, that row is ignored.
  final pulumi.Input<String> column;

  /// Creates a new [AlertPolicyConditionConditionSqlBooleanTest].
  /// [column] The name of the column containing the boolean value. If the value in a row is
  const AlertPolicyConditionConditionSqlBooleanTest({
    required this.column,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
    };
  }

  factory AlertPolicyConditionConditionSqlBooleanTest.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlBooleanTest(
      column: pulumi.Input.fromValue(map['column'] as String),
    );
  }
}
