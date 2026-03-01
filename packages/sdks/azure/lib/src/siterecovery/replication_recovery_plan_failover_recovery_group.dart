// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_recovery_plan_failover_recovery_group_post_action.dart';
import 'replication_recovery_plan_failover_recovery_group_pre_action.dart';

class ReplicationRecoveryPlanFailoverRecoveryGroup {
  /// one or more `action` block as defined below. which will be executed after the group recovery.
  final List<ReplicationRecoveryPlanFailoverRecoveryGroupPostAction>? postActions;
  /// one or more `action` block as defined below. which will be executed before the group recovery.
  final List<ReplicationRecoveryPlanFailoverRecoveryGroupPreAction>? preActions;

  /// Creates a new [ReplicationRecoveryPlanFailoverRecoveryGroup].
  /// [postActions] one or more `action` block as defined below. which will be executed after the group recovery.
  /// [preActions] one or more `action` block as defined below. which will be executed before the group recovery.
  ReplicationRecoveryPlanFailoverRecoveryGroup({
    this.postActions,
    this.preActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postActions': ?postActions == null ? null : pulumi.Input.encodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPostAction, Map<String, dynamic>>(postActions!, (value) => value.toMap()),
      'preActions': ?preActions == null ? null : pulumi.Input.encodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPreAction, Map<String, dynamic>>(preActions!, (value) => value.toMap()),
    };
  }

  factory ReplicationRecoveryPlanFailoverRecoveryGroup.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanFailoverRecoveryGroup(
      postActions: map['postActions'] == null ? null : pulumi.Input.decodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPostAction>(map['postActions'], (value) => ReplicationRecoveryPlanFailoverRecoveryGroupPostAction.fromMap((value as Map).cast<String, dynamic>())),
      preActions: map['preActions'] == null ? null : pulumi.Input.decodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPreAction>(map['preActions'], (value) => ReplicationRecoveryPlanFailoverRecoveryGroupPreAction.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

