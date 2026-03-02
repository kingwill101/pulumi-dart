// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_rollout_disruption_budget.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout {
  /// Message encapsulating a value that can be either absolute ("fixed") or
  /// relative ("percent") to a value.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget> disruptionBudget;
  /// Required. This determines the minimum duration of time to wait after the
  /// configuration changes are applied through the current rollout. A
  /// VM continues to count towards the `disruption_budget` at least
  /// until this duration of time has passed after configuration changes are
  /// applied.
  final pulumi.Input<String> minWaitDuration;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout].
  /// [disruptionBudget] Message encapsulating a value that can be either absolute ("fixed") or
  /// [minWaitDuration] Required. This determines the minimum duration of time to wait after the
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionBudget': pulumi.Input.mapInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget, Map<String, dynamic>>(disruptionBudget, (value) => value.toMap()),
      'minWaitDuration': minWaitDuration,
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout(
      disruptionBudget: (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget.fromMap((map['disruptionBudget'] as Map).cast<String, dynamic>())).input(),
      minWaitDuration: (map['minWaitDuration'] as String).input(),
    );
  }
}

