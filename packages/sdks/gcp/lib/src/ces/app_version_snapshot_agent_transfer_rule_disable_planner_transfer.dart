// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_agent_transfer_rule_disable_planner_transfer_expression_condition.dart';

class AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer {
  /// (Output)
  /// If the condition evaluates to true, planner will not be allowed to
  /// transfer to the target agent.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition>?>? expressionConditions;

  /// Creates a new [AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer].
  /// [expressionConditions] (Output)
  const AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer({
    this.expressionConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionConditions': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition>, List<Map<String, dynamic>>>(expressionConditions, (value) => pulumi.Input.encodeList<AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer(
      expressionConditions: (() { final guardedValue = map['expressionConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition>(guardedValue, (value) => AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
