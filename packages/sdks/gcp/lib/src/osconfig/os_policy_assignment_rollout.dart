// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_rollout_disruption_budget.dart';

class OsPolicyAssignmentRollout {
  /// The maximum number (or percentage) of VMs
  /// per zone to disrupt at any given moment. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentRolloutDisruptionBudget> disruptionBudget;
  /// This determines the minimum duration of
  /// time to wait after the configuration changes are applied through the current
  /// rollout. A VM continues to count towards the `disruption_budget` at least
  /// until this duration of time has passed after configuration changes are
  /// applied.
  final pulumi.Input<String> minWaitDuration;

  /// Creates a new [OsPolicyAssignmentRollout].
  /// [disruptionBudget] The maximum number (or percentage) of VMs
  /// [minWaitDuration] This determines the minimum duration of
  OsPolicyAssignmentRollout({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionBudget': pulumi.Input.mapInputValue<OsPolicyAssignmentRolloutDisruptionBudget, Map<String, dynamic>>(disruptionBudget, (value) => value.toMap()),
      'minWaitDuration': minWaitDuration,
    };
  }

  factory OsPolicyAssignmentRollout.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentRollout(
      disruptionBudget: (OsPolicyAssignmentRolloutDisruptionBudget.fromMap((map['disruptionBudget'] as Map).cast<String, dynamic>())).input(),
      minWaitDuration: (map['minWaitDuration'] as String).input(),
    );
  }
}

