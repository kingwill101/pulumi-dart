// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_agent_transfer_rule_deterministic_transfer.dart';
import 'app_version_snapshot_agent_transfer_rule_disable_planner_transfer.dart';

class AppVersionSnapshotAgentTransferRule {
  /// (Output)
  /// The resource name of the child agent the rule applies to.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String?>? childAgent;
  /// (Output)
  /// Deterministic transfer rule. When the condition evaluates to true, the
  /// transfer occurs.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAgentTransferRuleDeterministicTransfer>?>? deterministicTransfers;
  /// (Output)
  /// The direction of the transfer.
  /// Possible values:
  /// * PARENT_TO_CHILD
  /// * CHILD_TO_PARENT
  final pulumi.Input<String?>? direction;
  /// (Output)
  /// A rule that prevents the planner from transferring to the target agent.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer>?>? disablePlannerTransfers;

  /// Creates a new [AppVersionSnapshotAgentTransferRule].
  /// [childAgent] (Output)
  /// [deterministicTransfers] (Output)
  /// [direction] (Output)
  /// [disablePlannerTransfers] (Output)
  const AppVersionSnapshotAgentTransferRule({
    this.childAgent,
    this.deterministicTransfers,
    this.direction,
    this.disablePlannerTransfers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childAgent': ?childAgent,
      'deterministicTransfers': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAgentTransferRuleDeterministicTransfer>, List<Map<String, dynamic>>>(deterministicTransfers, (value) => pulumi.Input.encodeList<AppVersionSnapshotAgentTransferRuleDeterministicTransfer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': ?direction,
      'disablePlannerTransfers': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer>, List<Map<String, dynamic>>>(disablePlannerTransfers, (value) => pulumi.Input.encodeList<AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAgentTransferRule.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentTransferRule(
      childAgent: (() { final guardedValue = map['childAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deterministicTransfers: (() { final guardedValue = map['deterministicTransfers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAgentTransferRuleDeterministicTransfer>(guardedValue, (value) => AppVersionSnapshotAgentTransferRuleDeterministicTransfer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disablePlannerTransfers: (() { final guardedValue = map['disablePlannerTransfers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer>(guardedValue, (value) => AppVersionSnapshotAgentTransferRuleDisablePlannerTransfer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
