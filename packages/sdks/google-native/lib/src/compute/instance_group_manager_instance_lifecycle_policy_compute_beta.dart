// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_instance_lifecycle_policy_default_action_on_failure_compute_beta.dart';
import 'instance_group_manager_instance_lifecycle_policy_force_update_on_repair_compute_beta.dart';

class InstanceGroupManagerInstanceLifecyclePolicyComputeBeta {
  /// The action that a MIG performs on a failed or an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are - REPAIR (default): MIG automatically repairs a failed or an unhealthy VM by recreating it. For more information, see About repairing VMs in a MIG. - DO_NOTHING: MIG does not repair a failed or an unhealthy VM.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailureComputeBeta>? defaultActionOnFailure;
  /// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeBeta>? forceUpdateOnRepair;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyComputeBeta].
  /// [defaultActionOnFailure] The action that a MIG performs on a failed or an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are - REPAIR (default): MIG automatically repairs a failed or an unhealthy VM by recreating it. For more information, see About repairing VMs in a MIG. - DO_NOTHING: MIG does not repair a failed or an unhealthy VM.
  /// [forceUpdateOnRepair] A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  const InstanceGroupManagerInstanceLifecyclePolicyComputeBeta({
    this.defaultActionOnFailure,
    this.forceUpdateOnRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultActionOnFailure': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailureComputeBeta, String>(defaultActionOnFailure, (value) => value.wireValue),
      'forceUpdateOnRepair': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeBeta, String>(forceUpdateOnRepair, (value) => value.wireValue),
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyComputeBeta(
      defaultActionOnFailure: (() { final guardedValue = map['defaultActionOnFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailureComputeBeta.fromValue(guardedValue as String)); })(),
      forceUpdateOnRepair: (() { final guardedValue = map['forceUpdateOnRepair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}

