// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_instance_lifecycle_policy_default_action_on_failure.dart';
import 'instance_group_manager_instance_lifecycle_policy_force_update_on_repair.dart';
import 'instance_group_manager_instance_lifecycle_policy_metadata_based_readiness_signal.dart';

class InstanceGroupManagerInstanceLifecyclePolicy {
  /// The action that a MIG performs on a failed or an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are - REPAIR (default): MIG automatically repairs a failed or an unhealthy VM by recreating it. For more information, see About repairing VMs in a MIG. - DO_NOTHING: MIG does not repair a failed or an unhealthy VM.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure>? defaultActionOnFailure;
  /// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair>? forceUpdateOnRepair;
  /// The configuration for metadata based readiness signal sent by the instance during initialization when stopping / suspending an instance. The Instance Group Manager will wait for a signal that indicates successful initialization before stopping / suspending an instance. If a successful readiness signal is not sent before timeout, the corresponding instance will not be stopped / suspended. Instead, an error will be visible in the lastAttempt.errors field of the managed instance in the listmanagedinstances method. If metadataBasedReadinessSignal.timeoutSec is unset, the Instance Group Manager will directly proceed to suspend / stop instances, skipping initialization on them.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal>? metadataBasedReadinessSignal;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicy].
  /// [defaultActionOnFailure] The action that a MIG performs on a failed or an unhealthy VM. A VM is marked as unhealthy when the application running on that VM fails a health check. Valid values are - REPAIR (default): MIG automatically repairs a failed or an unhealthy VM by recreating it. For more information, see About repairing VMs in a MIG. - DO_NOTHING: MIG does not repair a failed or an unhealthy VM.
  /// [forceUpdateOnRepair] A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  /// [metadataBasedReadinessSignal] The configuration for metadata based readiness signal sent by the instance during initialization when stopping / suspending an instance. The Instance Group Manager will wait for a signal that indicates successful initialization before stopping / suspending an instance. If a successful readiness signal is not sent before timeout, the corresponding instance will not be stopped / suspended. Instead, an error will be visible in the lastAttempt.errors field of the managed instance in the listmanagedinstances method. If metadataBasedReadinessSignal.timeoutSec is unset, the Instance Group Manager will directly proceed to suspend / stop instances, skipping initialization on them.
  InstanceGroupManagerInstanceLifecyclePolicy({
    this.defaultActionOnFailure,
    this.forceUpdateOnRepair,
    this.metadataBasedReadinessSignal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultActionOnFailure': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure, String>(defaultActionOnFailure, (value) => value.value),
      'forceUpdateOnRepair': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair, String>(forceUpdateOnRepair, (value) => value.value),
      'metadataBasedReadinessSignal': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal, Map<String, dynamic>>(metadataBasedReadinessSignal, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicy(
      defaultActionOnFailure: map['defaultActionOnFailure'] == null ? null : (InstanceGroupManagerInstanceLifecyclePolicyDefaultActionOnFailure.fromValue(map['defaultActionOnFailure'] as String)).input(),
      forceUpdateOnRepair: map['forceUpdateOnRepair'] == null ? null : (InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepair.fromValue(map['forceUpdateOnRepair'] as String)).input(),
      metadataBasedReadinessSignal: map['metadataBasedReadinessSignal'] == null ? null : (InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal.fromMap((map['metadataBasedReadinessSignal'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

