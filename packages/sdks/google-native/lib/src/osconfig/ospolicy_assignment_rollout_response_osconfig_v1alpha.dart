// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fixed_or_percent_response_osconfig_v1alpha.dart';

/// Message to configure the rollout at the zonal level for the OS policy assignment.
class OSPolicyAssignmentRolloutResponseOsconfigV1alpha {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given moment.
  final pulumi.Input<FixedOrPercentResponseOsconfigV1alpha> disruptionBudget;
  /// This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.
  final pulumi.Input<String> minWaitDuration;

  /// Creates a new [OSPolicyAssignmentRolloutResponseOsconfigV1alpha].
  /// [disruptionBudget] The maximum number (or percentage) of VMs per zone to disrupt at any given moment.
  /// [minWaitDuration] This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.
  const OSPolicyAssignmentRolloutResponseOsconfigV1alpha({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionBudget': pulumi.Input.mapInputValue<FixedOrPercentResponseOsconfigV1alpha, Map<String, dynamic>>(disruptionBudget, (value) => value.toMap()),
      'minWaitDuration': minWaitDuration,
    };
  }

  factory OSPolicyAssignmentRolloutResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentRolloutResponseOsconfigV1alpha(
      disruptionBudget: pulumi.Input.fromValue(FixedOrPercentResponseOsconfigV1alpha.fromMap((map['disruptionBudget']! as Map).cast<String, dynamic>())),
      minWaitDuration: pulumi.Input.fromValue(map['minWaitDuration'] as String),
    );
  }
}

