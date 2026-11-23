// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_transfer_rule_deterministic_transfer.dart';
import 'agent_transfer_rule_disable_planner_transfer.dart';

class AgentTransferRule {
  /// The resource name of the child agent the rule applies to.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String> childAgent;
  /// Deterministic transfer rule. When the condition evaluates to true, the
  /// transfer occurs.
  /// Structure is documented below.
  final pulumi.Input<AgentTransferRuleDeterministicTransfer?>? deterministicTransfer;
  /// The direction of the transfer.
  /// Possible values are: `PARENT_TO_CHILD`, `CHILD_TO_PARENT`.
  final pulumi.Input<String> direction;
  /// A rule that prevents the planner from transferring to the target agent.
  /// Structure is documented below.
  final pulumi.Input<AgentTransferRuleDisablePlannerTransfer?>? disablePlannerTransfer;

  /// Creates a new [AgentTransferRule].
  /// [childAgent] The resource name of the child agent the rule applies to.
  /// [deterministicTransfer] Deterministic transfer rule. When the condition evaluates to true, the
  /// [direction] The direction of the transfer.
  /// [disablePlannerTransfer] A rule that prevents the planner from transferring to the target agent.
  const AgentTransferRule({
    required this.childAgent,
    this.deterministicTransfer,
    required this.direction,
    this.disablePlannerTransfer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childAgent': childAgent,
      'deterministicTransfer': ?pulumi.Input.mapOptionalInputValue<AgentTransferRuleDeterministicTransfer, Map<String, dynamic>>(deterministicTransfer, (value) => value.toMap()),
      'direction': direction,
      'disablePlannerTransfer': ?pulumi.Input.mapOptionalInputValue<AgentTransferRuleDisablePlannerTransfer, Map<String, dynamic>>(disablePlannerTransfer, (value) => value.toMap()),
    };
  }

  factory AgentTransferRule.fromMap(Map<String, dynamic> map) {
    return AgentTransferRule(
      childAgent: pulumi.Input.fromValue(map['childAgent'] as String),
      deterministicTransfer: (() { final guardedValue = map['deterministicTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentTransferRuleDeterministicTransfer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      disablePlannerTransfer: (() { final guardedValue = map['disablePlannerTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentTransferRuleDisablePlannerTransfer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
