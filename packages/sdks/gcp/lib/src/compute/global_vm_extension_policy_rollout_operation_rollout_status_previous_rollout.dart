// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vm_extension_policy_rollout_operation_rollout_status_previous_rollout_location_rollout_status.dart';

class GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout {
  /// The rollout status for each location.
  final pulumi.Input<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus>?>? locationRolloutStatuses;
  /// The name of the rollout.
  final pulumi.Input<String?>? rollout;
  /// The name of the rollout plan.
  final pulumi.Input<String?>? rolloutPlan;
  /// The overall state of the rollout.
  final pulumi.Input<String?>? state;

  /// Creates a new [GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout].
  /// [locationRolloutStatuses] The rollout status for each location.
  /// [rollout] The name of the rollout.
  /// [rolloutPlan] The name of the rollout plan.
  /// [state] The overall state of the rollout.
  const GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout({
    this.locationRolloutStatuses,
    this.rollout,
    this.rolloutPlan,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationRolloutStatuses': ?pulumi.Input.mapOptionalInputValue<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus>, List<Map<String, dynamic>>>(locationRolloutStatuses, (value) => pulumi.Input.encodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollout': ?rollout,
      'rolloutPlan': ?rolloutPlan,
      'state': ?state,
    };
  }

  factory GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout(
      locationRolloutStatuses: (() { final guardedValue = map['locationRolloutStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus>(guardedValue, (value) => GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rollout: (() { final guardedValue = map['rollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutPlan: (() { final guardedValue = map['rolloutPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
