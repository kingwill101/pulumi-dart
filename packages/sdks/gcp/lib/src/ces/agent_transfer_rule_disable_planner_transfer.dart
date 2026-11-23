// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_transfer_rule_disable_planner_transfer_expression_condition.dart';

class AgentTransferRuleDisablePlannerTransfer {
  /// If the condition evaluates to true, planner will not be allowed to
  /// transfer to the target agent.
  /// Structure is documented below.
  final pulumi.Input<AgentTransferRuleDisablePlannerTransferExpressionCondition> expressionCondition;

  /// Creates a new [AgentTransferRuleDisablePlannerTransfer].
  /// [expressionCondition] If the condition evaluates to true, planner will not be allowed to
  const AgentTransferRuleDisablePlannerTransfer({
    required this.expressionCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionCondition': pulumi.Input.mapInputValue<AgentTransferRuleDisablePlannerTransferExpressionCondition, Map<String, dynamic>>(expressionCondition, (value) => value.toMap()),
    };
  }

  factory AgentTransferRuleDisablePlannerTransfer.fromMap(Map<String, dynamic> map) {
    return AgentTransferRuleDisablePlannerTransfer(
      expressionCondition: pulumi.Input.fromValue(AgentTransferRuleDisablePlannerTransferExpressionCondition.fromMap((map['expressionCondition']! as Map).cast<String, dynamic>())),
    );
  }
}
