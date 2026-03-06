// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_recovery_plan_boot_recovery_group_post_action.dart';
import 'replication_recovery_plan_boot_recovery_group_pre_action.dart';

class ReplicationRecoveryPlanBootRecoveryGroup {
  /// one or more `action` block as defined below. which will be executed after the group recovery.
  final pulumi.Input<List<ReplicationRecoveryPlanBootRecoveryGroupPostAction>>? postActions;
  /// one or more `action` block as defined below. which will be executed before the group recovery.
  final pulumi.Input<List<ReplicationRecoveryPlanBootRecoveryGroupPreAction>>? preActions;
  /// One or more protected VM IDs.
  final pulumi.Input<List<String>>? replicatedProtectedItems;

  /// Creates a new [ReplicationRecoveryPlanBootRecoveryGroup].
  /// [postActions] one or more `action` block as defined below. which will be executed after the group recovery.
  /// [preActions] one or more `action` block as defined below. which will be executed before the group recovery.
  /// [replicatedProtectedItems] One or more protected VM IDs.
  const ReplicationRecoveryPlanBootRecoveryGroup({
    this.postActions,
    this.preActions,
    this.replicatedProtectedItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postActions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRecoveryPlanBootRecoveryGroupPostAction>, List<Map<String, dynamic>>>(postActions, (value) => pulumi.Input.encodeList<ReplicationRecoveryPlanBootRecoveryGroupPostAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preActions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRecoveryPlanBootRecoveryGroupPreAction>, List<Map<String, dynamic>>>(preActions, (value) => pulumi.Input.encodeList<ReplicationRecoveryPlanBootRecoveryGroupPreAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicatedProtectedItems': ?replicatedProtectedItems,
    };
  }

  factory ReplicationRecoveryPlanBootRecoveryGroup.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanBootRecoveryGroup(
      postActions: (() { final guardedValue = map['postActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRecoveryPlanBootRecoveryGroupPostAction>(guardedValue, (value) => ReplicationRecoveryPlanBootRecoveryGroupPostAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      preActions: (() { final guardedValue = map['preActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRecoveryPlanBootRecoveryGroupPreAction>(guardedValue, (value) => ReplicationRecoveryPlanBootRecoveryGroupPreAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      replicatedProtectedItems: (() { final guardedValue = map['replicatedProtectedItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

