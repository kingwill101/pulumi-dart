// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_agent_transfer_rule_deterministic_transfer_expression_condition.dart';
import 'app_version_snapshot_agent_transfer_rule_deterministic_transfer_python_code_condition.dart';

class AppVersionSnapshotAgentTransferRuleDeterministicTransfer {
  /// (Output)
  /// If the condition evaluates to true, planner will not be allowed to
  /// transfer to the target agent.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition>?>? expressionConditions;
  /// (Output)
  /// A rule that uses Python code block to evaluate the conditions. If the
  /// condition evaluates to true, the transfer occurs.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition>?>? pythonCodeConditions;

  /// Creates a new [AppVersionSnapshotAgentTransferRuleDeterministicTransfer].
  /// [expressionConditions] (Output)
  /// [pythonCodeConditions] (Output)
  const AppVersionSnapshotAgentTransferRuleDeterministicTransfer({
    this.expressionConditions,
    this.pythonCodeConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionConditions': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition>, List<Map<String, dynamic>>>(expressionConditions, (value) => pulumi.Input.encodeList<AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pythonCodeConditions': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition>, List<Map<String, dynamic>>>(pythonCodeConditions, (value) => pulumi.Input.encodeList<AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAgentTransferRuleDeterministicTransfer.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentTransferRuleDeterministicTransfer(
      expressionConditions: (() { final guardedValue = map['expressionConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition>(guardedValue, (value) => AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pythonCodeConditions: (() { final guardedValue = map['pythonCodeConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition>(guardedValue, (value) => AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
