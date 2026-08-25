// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vm_extension_policy_rollout_operation_rollout_status_current_rollout_location_rollout_status.dart';

class GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout {
  /// The rollout status for each location.
  final pulumi.Input<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus>?>? locationRolloutStatuses;
  /// The name of the rollout.
  final pulumi.Input<String?>? rollout;
  /// The name of the rollout plan.
  final pulumi.Input<String?>? rolloutPlan;
  /// The overall state of the rollout.
  final pulumi.Input<String?>? state;

  /// Creates a new [GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout].
  /// [locationRolloutStatuses] The rollout status for each location.
  /// [rollout] The name of the rollout.
  /// [rolloutPlan] The name of the rollout plan.
  /// [state] The overall state of the rollout.
  const GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout({
    this.locationRolloutStatuses,
    this.rollout,
    this.rolloutPlan,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationRolloutStatuses': ?pulumi.Input.mapOptionalInputValue<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus>, List<Map<String, dynamic>>>(locationRolloutStatuses, (value) => pulumi.Input.encodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollout': ?rollout,
      'rolloutPlan': ?rolloutPlan,
      'state': ?state,
    };
  }

  factory GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout(
      locationRolloutStatuses: (() { final guardedValue = map['locationRolloutStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus>(guardedValue, (value) => GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rollout: (() { final guardedValue = map['rollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutPlan: (() { final guardedValue = map['rolloutPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
