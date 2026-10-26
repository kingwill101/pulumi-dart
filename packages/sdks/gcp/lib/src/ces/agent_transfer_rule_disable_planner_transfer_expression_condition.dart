// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentTransferRuleDisablePlannerTransferExpressionCondition {
  /// The string representation of cloud.api.Expression condition.
  final pulumi.Input<String> expression;

  /// Creates a new [AgentTransferRuleDisablePlannerTransferExpressionCondition].
  /// [expression] The string representation of cloud.api.Expression condition.
  const AgentTransferRuleDisablePlannerTransferExpressionCondition({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory AgentTransferRuleDisablePlannerTransferExpressionCondition.fromMap(Map<String, dynamic> map) {
    return AgentTransferRuleDisablePlannerTransferExpressionCondition(
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
