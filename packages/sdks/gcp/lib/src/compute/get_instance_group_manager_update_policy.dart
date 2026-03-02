// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerUpdatePolicy {
  /// Specifies a fixed number of VM instances. This must be a positive integer. Conflicts with max_surge_percent. Both cannot be 0
  final pulumi.Input<int> maxSurgeFixed;
  /// Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%. Conflicts with max_surge_fixed.
  final pulumi.Input<int> maxSurgePercent;
  /// Specifies a fixed number of VM instances. This must be a positive integer.
  final pulumi.Input<int> maxUnavailableFixed;
  /// Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  final pulumi.Input<int> maxUnavailablePercent;
  /// Minimum number of seconds to wait for after a newly created instance becomes available. This value must be from range [0, 3600].
  final pulumi.Input<int> minReadySec;
  /// Minimal action to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action.
  final pulumi.Input<String> minimalAction;
  /// Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
  final pulumi.Input<String> mostDisruptiveAllowedAction;
  /// The instance replacement method for managed instance groups. Valid values are: "RECREATE", "SUBSTITUTE". If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0.
  final pulumi.Input<String> replacementMethod;
  /// The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls).
  final pulumi.Input<String> type;

  /// Creates a new [GetInstanceGroupManagerUpdatePolicy].
  /// [maxSurgeFixed] Specifies a fixed number of VM instances. This must be a positive integer. Conflicts with max_surge_percent. Both cannot be 0
  /// [maxSurgePercent] Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%. Conflicts with max_surge_fixed.
  /// [maxUnavailableFixed] Specifies a fixed number of VM instances. This must be a positive integer.
  /// [maxUnavailablePercent] Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  /// [minReadySec] Minimum number of seconds to wait for after a newly created instance becomes available. This value must be from range [0, 3600].
  /// [minimalAction] Minimal action to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action.
  /// [mostDisruptiveAllowedAction] Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
  /// [replacementMethod] The instance replacement method for managed instance groups. Valid values are: "RECREATE", "SUBSTITUTE". If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0.
  /// [type] The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls).
  GetInstanceGroupManagerUpdatePolicy({
    required this.maxSurgeFixed,
    required this.maxSurgePercent,
    required this.maxUnavailableFixed,
    required this.maxUnavailablePercent,
    required this.minReadySec,
    required this.minimalAction,
    required this.mostDisruptiveAllowedAction,
    required this.replacementMethod,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSurgeFixed': maxSurgeFixed,
      'maxSurgePercent': maxSurgePercent,
      'maxUnavailableFixed': maxUnavailableFixed,
      'maxUnavailablePercent': maxUnavailablePercent,
      'minReadySec': minReadySec,
      'minimalAction': minimalAction,
      'mostDisruptiveAllowedAction': mostDisruptiveAllowedAction,
      'replacementMethod': replacementMethod,
      'type': type,
    };
  }

  factory GetInstanceGroupManagerUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerUpdatePolicy(
      maxSurgeFixed: (map['maxSurgeFixed'] as int).input(),
      maxSurgePercent: (map['maxSurgePercent'] as int).input(),
      maxUnavailableFixed: (map['maxUnavailableFixed'] as int).input(),
      maxUnavailablePercent: (map['maxUnavailablePercent'] as int).input(),
      minReadySec: (map['minReadySec'] as int).input(),
      minimalAction: (map['minimalAction'] as String).input(),
      mostDisruptiveAllowedAction: (map['mostDisruptiveAllowedAction'] as String).input(),
      replacementMethod: (map['replacementMethod'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

