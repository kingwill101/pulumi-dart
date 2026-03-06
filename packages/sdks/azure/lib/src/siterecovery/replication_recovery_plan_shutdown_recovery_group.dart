// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_recovery_plan_shutdown_recovery_group_post_action.dart';
import 'replication_recovery_plan_shutdown_recovery_group_pre_action.dart';

class ReplicationRecoveryPlanShutdownRecoveryGroup {
  /// one or more `action` block as defined below. which will be executed after the group recovery.
  final pulumi.Input<List<ReplicationRecoveryPlanShutdownRecoveryGroupPostAction>>? postActions;
  /// one or more `action` block as defined below. which will be executed before the group recovery.
  final pulumi.Input<List<ReplicationRecoveryPlanShutdownRecoveryGroupPreAction>>? preActions;

  /// Creates a new [ReplicationRecoveryPlanShutdownRecoveryGroup].
  /// [postActions] one or more `action` block as defined below. which will be executed after the group recovery.
  /// [preActions] one or more `action` block as defined below. which will be executed before the group recovery.
  const ReplicationRecoveryPlanShutdownRecoveryGroup({
    this.postActions,
    this.preActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postActions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRecoveryPlanShutdownRecoveryGroupPostAction>, List<Map<String, dynamic>>>(postActions, (value) => pulumi.Input.encodeList<ReplicationRecoveryPlanShutdownRecoveryGroupPostAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preActions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRecoveryPlanShutdownRecoveryGroupPreAction>, List<Map<String, dynamic>>>(preActions, (value) => pulumi.Input.encodeList<ReplicationRecoveryPlanShutdownRecoveryGroupPreAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationRecoveryPlanShutdownRecoveryGroup.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanShutdownRecoveryGroup(
      postActions: (() { final guardedValue = map['postActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRecoveryPlanShutdownRecoveryGroupPostAction>(guardedValue, (value) => ReplicationRecoveryPlanShutdownRecoveryGroupPostAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      preActions: (() { final guardedValue = map['preActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRecoveryPlanShutdownRecoveryGroupPreAction>(guardedValue, (value) => ReplicationRecoveryPlanShutdownRecoveryGroupPreAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

