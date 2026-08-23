// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_instance_lifecycle_policy_on_repair.dart';

class GetInstanceGroupManagerInstanceLifecyclePolicy {
  /// Specifies the action that a MIG performs on a failed VM. If the value of the "onFailedHealthCheck" field is DEFAULT_ACTION, then the same action also applies to the VMs on which your application fails a health check. Valid values are: REPAIR, DO_NOTHING. If REPAIR (default), then MIG automatically repairs a failed VM by recreating it. For more information, see about repairing VMs in a MIG. If DO_NOTHING, then MIG does not repair a failed VM.
  final pulumi.Input<String> defaultActionOnFailure;
  /// Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: YES, NO. If YES and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If NO (default), then updates are applied in accordance with the group's update policy type.
  final pulumi.Input<String> forceUpdateOnRepair;
  /// Specifies the action that a MIG performs on an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are: DEFAULT_ACTION, DO_NOTHING, REPAIR. If DEFAULT_ACTION (default), then MIG uses the same action configured for the  "defaultActionOnFailure" field. If DO_NOTHING, then MIG does not repair unhealthy VM. If REPAIR, then MIG automatically repairs an unhealthy VM by recreating it.
  final pulumi.Input<String> onFailedHealthCheck;
  /// Configuration for VM repairs in the MIG.
  final pulumi.Input<List<GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair>> onRepairs;

  /// Creates a new [GetInstanceGroupManagerInstanceLifecyclePolicy].
  /// [defaultActionOnFailure] Specifies the action that a MIG performs on a failed VM. If the value of the "onFailedHealthCheck" field is DEFAULT_ACTION, then the same action also applies to the VMs on which your application fails a health check. Valid values are: REPAIR, DO_NOTHING. If REPAIR (default), then MIG automatically repairs a failed VM by recreating it. For more information, see about repairing VMs in a MIG. If DO_NOTHING, then MIG does not repair a failed VM.
  /// [forceUpdateOnRepair] Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: YES, NO. If YES and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If NO (default), then updates are applied in accordance with the group's update policy type.
  /// [onFailedHealthCheck] Specifies the action that a MIG performs on an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are: DEFAULT_ACTION, DO_NOTHING, REPAIR. If DEFAULT_ACTION (default), then MIG uses the same action configured for the  "defaultActionOnFailure" field. If DO_NOTHING, then MIG does not repair unhealthy VM. If REPAIR, then MIG automatically repairs an unhealthy VM by recreating it.
  /// [onRepairs] Configuration for VM repairs in the MIG.
  const GetInstanceGroupManagerInstanceLifecyclePolicy({
    required this.defaultActionOnFailure,
    required this.forceUpdateOnRepair,
    required this.onFailedHealthCheck,
    required this.onRepairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultActionOnFailure': defaultActionOnFailure,
      'forceUpdateOnRepair': forceUpdateOnRepair,
      'onFailedHealthCheck': onFailedHealthCheck,
      'onRepairs': pulumi.Input.mapInputValue<List<GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair>, List<Map<String, dynamic>>>(onRepairs, (value) => pulumi.Input.encodeList<GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceGroupManagerInstanceLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerInstanceLifecyclePolicy(
      defaultActionOnFailure: pulumi.Input.fromValue(map['defaultActionOnFailure'] as String),
      forceUpdateOnRepair: pulumi.Input.fromValue(map['forceUpdateOnRepair'] as String),
      onFailedHealthCheck: pulumi.Input.fromValue(map['onFailedHealthCheck'] as String),
      onRepairs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair>(map['onRepairs']!, (value) => GetInstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
