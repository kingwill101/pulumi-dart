// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentTransferRuleDeterministicTransferExpressionCondition {
  /// The string representation of cloud.api.Expression condition.
  final pulumi.Input<String> expression;

  /// Creates a new [AgentTransferRuleDeterministicTransferExpressionCondition].
  /// [expression] The string representation of cloud.api.Expression condition.
  const AgentTransferRuleDeterministicTransferExpressionCondition({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory AgentTransferRuleDeterministicTransferExpressionCondition.fromMap(Map<String, dynamic> map) {
    return AgentTransferRuleDeterministicTransferExpressionCondition(
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
