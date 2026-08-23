// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vm_extension_policy_rollout_operation_rollout_status_current_rollout.dart';
import 'global_vm_extension_policy_rollout_operation_rollout_status_previous_rollout.dart';

class GlobalVmExtensionPolicyRolloutOperationRolloutStatus {
  /// The current rollouts for the latest version of the resource.
  final pulumi.Input<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout>>? currentRollouts;
  /// Rollout status of the previous rollout.
  final pulumi.Input<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout>>? previousRollouts;

  /// Creates a new [GlobalVmExtensionPolicyRolloutOperationRolloutStatus].
  /// [currentRollouts] The current rollouts for the latest version of the resource.
  /// [previousRollouts] Rollout status of the previous rollout.
  const GlobalVmExtensionPolicyRolloutOperationRolloutStatus({
    this.currentRollouts,
    this.previousRollouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentRollouts': ?pulumi.Input.mapOptionalInputValue<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout>, List<Map<String, dynamic>>>(currentRollouts, (value) => pulumi.Input.encodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'previousRollouts': ?pulumi.Input.mapOptionalInputValue<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout>, List<Map<String, dynamic>>>(previousRollouts, (value) => pulumi.Input.encodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GlobalVmExtensionPolicyRolloutOperationRolloutStatus.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyRolloutOperationRolloutStatus(
      currentRollouts: (() { final guardedValue = map['currentRollouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout>(guardedValue, (value) => GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRollout.fromMap((value as Map).cast<String, dynamic>()))); })(),
      previousRollouts: (() { final guardedValue = map['previousRollouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout>(guardedValue, (value) => GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRollout.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
