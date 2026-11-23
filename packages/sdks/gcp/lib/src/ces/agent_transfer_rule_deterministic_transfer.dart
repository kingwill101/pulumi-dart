// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_transfer_rule_deterministic_transfer_expression_condition.dart';
import 'agent_transfer_rule_deterministic_transfer_python_code_condition.dart';

class AgentTransferRuleDeterministicTransfer {
  /// A rule that evaluates a session state condition. If the condition
  /// evaluates to true, the transfer occurs.
  /// Structure is documented below.
  final pulumi.Input<AgentTransferRuleDeterministicTransferExpressionCondition?>? expressionCondition;
  /// A rule that uses Python code block to evaluate the conditions. If the
  /// condition evaluates to true, the transfer occurs.
  /// Structure is documented below.
  final pulumi.Input<AgentTransferRuleDeterministicTransferPythonCodeCondition?>? pythonCodeCondition;

  /// Creates a new [AgentTransferRuleDeterministicTransfer].
  /// [expressionCondition] A rule that evaluates a session state condition. If the condition
  /// [pythonCodeCondition] A rule that uses Python code block to evaluate the conditions. If the
  const AgentTransferRuleDeterministicTransfer({
    this.expressionCondition,
    this.pythonCodeCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionCondition': ?pulumi.Input.mapOptionalInputValue<AgentTransferRuleDeterministicTransferExpressionCondition, Map<String, dynamic>>(expressionCondition, (value) => value.toMap()),
      'pythonCodeCondition': ?pulumi.Input.mapOptionalInputValue<AgentTransferRuleDeterministicTransferPythonCodeCondition, Map<String, dynamic>>(pythonCodeCondition, (value) => value.toMap()),
    };
  }

  factory AgentTransferRuleDeterministicTransfer.fromMap(Map<String, dynamic> map) {
    return AgentTransferRuleDeterministicTransfer(
      expressionCondition: (() { final guardedValue = map['expressionCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentTransferRuleDeterministicTransferExpressionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pythonCodeCondition: (() { final guardedValue = map['pythonCodeCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentTransferRuleDeterministicTransferPythonCodeCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
