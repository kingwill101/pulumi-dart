// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fixed_or_percent_compute_v1.dart';
import 'instance_group_manager_update_policy_instance_redistribution_type_compute_v1.dart';
import 'instance_group_manager_update_policy_minimal_action_compute_v1.dart';
import 'instance_group_manager_update_policy_most_disruptive_allowed_action_compute_v1.dart';
import 'instance_group_manager_update_policy_replacement_method_compute_v1.dart';
import 'instance_group_manager_update_policy_type_compute_v1.dart';

class InstanceGroupManagerUpdatePolicyComputeV1 {
  /// The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1>? instanceRedistributionType;
  /// The maximum number of instances that can be created above the specified targetSize during the update process. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxSurge is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxSurge.
  final pulumi.Input<FixedOrPercentComputeV1>? maxSurge;
  /// The maximum number of instances that can be unavailable during the update process. An instance is considered available if all of the following conditions are satisfied: - The instance's status is RUNNING. - If there is a health check on the instance group, the instance's health check status must be HEALTHY at least once. If there is no health check on the group, then the instance only needs to have a status of RUNNING to be considered available. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxUnavailable is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxUnavailable.
  final pulumi.Input<FixedOrPercentComputeV1>? maxUnavailable;
  /// Minimal action to be taken on an instance. Use this option to minimize disruption as much as possible or to apply a more disruptive action than is necessary. - To limit disruption as much as possible, set the minimal action to REFRESH. If your update requires a more disruptive action, Compute Engine performs the necessary action to execute the update. - To apply a more disruptive action than is strictly necessary, set the minimal action to RESTART or REPLACE. For example, Compute Engine does not need to restart a VM to change its metadata. But if your application reads instance metadata only when a VM is restarted, you can set the minimal action to RESTART in order to pick up metadata changes.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyMinimalActionComputeV1>? minimalAction;
  /// Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to avoid restarting the VM and to limit disruption as much as possible. RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedActionComputeV1>? mostDisruptiveAllowedAction;
  /// What action should be used to replace instances. See minimal_action.REPLACE
  final pulumi.Input<InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1>? replacementMethod;
  /// The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyTypeComputeV1>? type;

  /// Creates a new [InstanceGroupManagerUpdatePolicyComputeV1].
  /// [instanceRedistributionType] The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled.
  /// [maxSurge] The maximum number of instances that can be created above the specified targetSize during the update process. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxSurge is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxSurge.
  /// [maxUnavailable] The maximum number of instances that can be unavailable during the update process. An instance is considered available if all of the following conditions are satisfied: - The instance's status is RUNNING. - If there is a health check on the instance group, the instance's health check status must be HEALTHY at least once. If there is no health check on the group, then the instance only needs to have a status of RUNNING to be considered available. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxUnavailable is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxUnavailable.
  /// [minimalAction] Minimal action to be taken on an instance. Use this option to minimize disruption as much as possible or to apply a more disruptive action than is necessary. - To limit disruption as much as possible, set the minimal action to REFRESH. If your update requires a more disruptive action, Compute Engine performs the necessary action to execute the update. - To apply a more disruptive action than is strictly necessary, set the minimal action to RESTART or REPLACE. For example, Compute Engine does not need to restart a VM to change its metadata. But if your application reads instance metadata only when a VM is restarted, you can set the minimal action to RESTART in order to pick up metadata changes.
  /// [mostDisruptiveAllowedAction] Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to avoid restarting the VM and to limit disruption as much as possible. RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
  /// [replacementMethod] What action should be used to replace instances. See minimal_action.REPLACE
  /// [type] The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
  InstanceGroupManagerUpdatePolicyComputeV1({
    this.instanceRedistributionType,
    this.maxSurge,
    this.maxUnavailable,
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
    this.replacementMethod,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRedistributionType': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1, String>(instanceRedistributionType, (value) => value.value),
      'maxSurge': ?pulumi.Input.mapOptionalInputValue<FixedOrPercentComputeV1, Map<String, dynamic>>(maxSurge, (value) => value.toMap()),
      'maxUnavailable': ?pulumi.Input.mapOptionalInputValue<FixedOrPercentComputeV1, Map<String, dynamic>>(maxUnavailable, (value) => value.toMap()),
      'minimalAction': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyMinimalActionComputeV1, String>(minimalAction, (value) => value.value),
      'mostDisruptiveAllowedAction': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedActionComputeV1, String>(mostDisruptiveAllowedAction, (value) => value.value),
      'replacementMethod': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1, String>(replacementMethod, (value) => value.value),
      'type': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyTypeComputeV1, String>(type, (value) => value.value),
    };
  }

  factory InstanceGroupManagerUpdatePolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerUpdatePolicyComputeV1(
      instanceRedistributionType: map['instanceRedistributionType'] == null ? null : (InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeV1.fromValue(map['instanceRedistributionType'] as String)).input(),
      maxSurge: map['maxSurge'] == null ? null : (FixedOrPercentComputeV1.fromMap((map['maxSurge'] as Map).cast<String, dynamic>())).input(),
      maxUnavailable: map['maxUnavailable'] == null ? null : (FixedOrPercentComputeV1.fromMap((map['maxUnavailable'] as Map).cast<String, dynamic>())).input(),
      minimalAction: map['minimalAction'] == null ? null : (InstanceGroupManagerUpdatePolicyMinimalActionComputeV1.fromValue(map['minimalAction'] as String)).input(),
      mostDisruptiveAllowedAction: map['mostDisruptiveAllowedAction'] == null ? null : (InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedActionComputeV1.fromValue(map['mostDisruptiveAllowedAction'] as String)).input(),
      replacementMethod: map['replacementMethod'] == null ? null : (InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1.fromValue(map['replacementMethod'] as String)).input(),
      type: map['type'] == null ? null : (InstanceGroupManagerUpdatePolicyTypeComputeV1.fromValue(map['type'] as String)).input(),
    );
  }
}

