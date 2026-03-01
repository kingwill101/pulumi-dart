// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_instance_lifecycle_policy_on_repair.dart';

class InstanceGroupManagerInstanceLifecyclePolicy {
  /// , Specifies the action that a MIG performs on a failed VM. If the value of the `on_failed_health_check` field is `DEFAULT_ACTION`, then the same action also applies to the VMs on which your application fails a health check. Valid options are: `DO_NOTHING`, `REPAIR`. If `DO_NOTHING`, then MIG does not repair a failed VM. If `REPAIR` (default), then MIG automatically repairs a failed VM by recreating it. For more information, see about repairing VMs in a MIG.
  final String? defaultActionOnFailure;
  /// , Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: `YES`, `NO`. If `YES` and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If `NO` (default), then updates are applied in accordance with the group's update policy type.
  final String? forceUpdateOnRepair;
  /// , Specifies the action that a MIG performs on an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid options are: `DEFAULT_ACTION`, `DO_NOTHING`, `REPAIR`. If `DEFAULT_ACTION` (default), then MIG uses the same action configured for the  `default_action_on_failure` field. If `DO_NOTHING`, then MIG does not repair unhealthy VM. If `REPAIR`, then MIG automatically repairs an unhealthy VM by recreating it. For more information, see about repairing VMs in a MIG.
  final String? onFailedHealthCheck;
  /// , Configuration for VM repairs in the MIG. Structure is documented below.
  /// - - -
  final InstanceGroupManagerInstanceLifecyclePolicyOnRepair? onRepair;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicy].
  /// [defaultActionOnFailure] , Specifies the action that a MIG performs on a failed VM. If the value of the `on_failed_health_check` field is `DEFAULT_ACTION`, then the same action also applies to the VMs on which your application fails a health check. Valid options are: `DO_NOTHING`, `REPAIR`. If `DO_NOTHING`, then MIG does not repair a failed VM. If `REPAIR` (default), then MIG automatically repairs a failed VM by recreating it. For more information, see about repairing VMs in a MIG.
  /// [forceUpdateOnRepair] , Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: `YES`, `NO`. If `YES` and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If `NO` (default), then updates are applied in accordance with the group's update policy type.
  /// [onFailedHealthCheck] , Specifies the action that a MIG performs on an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid options are: `DEFAULT_ACTION`, `DO_NOTHING`, `REPAIR`. If `DEFAULT_ACTION` (default), then MIG uses the same action configured for the  `default_action_on_failure` field. If `DO_NOTHING`, then MIG does not repair unhealthy VM. If `REPAIR`, then MIG automatically repairs an unhealthy VM by recreating it. For more information, see about repairing VMs in a MIG.
  /// [onRepair] , Configuration for VM repairs in the MIG. Structure is documented below.
  InstanceGroupManagerInstanceLifecyclePolicy({
    this.defaultActionOnFailure,
    this.forceUpdateOnRepair,
    this.onFailedHealthCheck,
    this.onRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultActionOnFailure': ?defaultActionOnFailure,
      'forceUpdateOnRepair': ?forceUpdateOnRepair,
      'onFailedHealthCheck': ?onFailedHealthCheck,
      'onRepair': ?onRepair == null ? null : onRepair!.toMap(),
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicy(
      defaultActionOnFailure: map['defaultActionOnFailure'] == null ? null : map['defaultActionOnFailure'] as String,
      forceUpdateOnRepair: map['forceUpdateOnRepair'] == null ? null : map['forceUpdateOnRepair'] as String,
      onFailedHealthCheck: map['onFailedHealthCheck'] == null ? null : map['onFailedHealthCheck'] as String,
      onRepair: map['onRepair'] == null ? null : InstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap((map['onRepair'] as Map).cast<String, dynamic>()),
    );
  }
}

