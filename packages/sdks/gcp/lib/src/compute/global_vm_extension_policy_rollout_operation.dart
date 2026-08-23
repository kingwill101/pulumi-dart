// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vm_extension_policy_rollout_operation_rollout_input.dart';
import 'global_vm_extension_policy_rollout_operation_rollout_status.dart';

class GlobalVmExtensionPolicyRolloutOperation {
  /// Rollout input settings.
  /// Structure is documented below.
  final pulumi.Input<GlobalVmExtensionPolicyRolloutOperationRolloutInput> rolloutInput;
  /// (Output)
  /// Rollout status.
  /// Structure is documented below.
  final pulumi.Input<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatus>>? rolloutStatuses;

  /// Creates a new [GlobalVmExtensionPolicyRolloutOperation].
  /// [rolloutInput] Rollout input settings.
  /// [rolloutStatuses] (Output)
  const GlobalVmExtensionPolicyRolloutOperation({
    required this.rolloutInput,
    this.rolloutStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutInput': pulumi.Input.mapInputValue<GlobalVmExtensionPolicyRolloutOperationRolloutInput, Map<String, dynamic>>(rolloutInput, (value) => value.toMap()),
      'rolloutStatuses': ?pulumi.Input.mapOptionalInputValue<List<GlobalVmExtensionPolicyRolloutOperationRolloutStatus>, List<Map<String, dynamic>>>(rolloutStatuses, (value) => pulumi.Input.encodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GlobalVmExtensionPolicyRolloutOperation.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyRolloutOperation(
      rolloutInput: pulumi.Input.fromValue(GlobalVmExtensionPolicyRolloutOperationRolloutInput.fromMap((map['rolloutInput']! as Map).cast<String, dynamic>())),
      rolloutStatuses: (() { final guardedValue = map['rolloutStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalVmExtensionPolicyRolloutOperationRolloutStatus>(guardedValue, (value) => GlobalVmExtensionPolicyRolloutOperationRolloutStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
