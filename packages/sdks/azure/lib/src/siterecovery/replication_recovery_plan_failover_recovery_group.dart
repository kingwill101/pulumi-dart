// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_recovery_plan_failover_recovery_group_post_action.dart';
import 'replication_recovery_plan_failover_recovery_group_pre_action.dart';

class ReplicationRecoveryPlanFailoverRecoveryGroup {
  /// one or more `action` block as defined below. which will be executed after the group recovery.
  final pulumi.Input<List<ReplicationRecoveryPlanFailoverRecoveryGroupPostAction>?>? postActions;
  /// one or more `action` block as defined below. which will be executed before the group recovery.
  final pulumi.Input<List<ReplicationRecoveryPlanFailoverRecoveryGroupPreAction>?>? preActions;

  /// Creates a new [ReplicationRecoveryPlanFailoverRecoveryGroup].
  /// [postActions] one or more `action` block as defined below. which will be executed after the group recovery.
  /// [preActions] one or more `action` block as defined below. which will be executed before the group recovery.
  const ReplicationRecoveryPlanFailoverRecoveryGroup({
    this.postActions,
    this.preActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postActions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRecoveryPlanFailoverRecoveryGroupPostAction>, List<Map<String, dynamic>>>(postActions, (value) => pulumi.Input.encodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPostAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preActions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRecoveryPlanFailoverRecoveryGroupPreAction>, List<Map<String, dynamic>>>(preActions, (value) => pulumi.Input.encodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPreAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationRecoveryPlanFailoverRecoveryGroup.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanFailoverRecoveryGroup(
      postActions: (() { final guardedValue = map['postActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPostAction>(guardedValue, (value) => ReplicationRecoveryPlanFailoverRecoveryGroupPostAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      preActions: (() { final guardedValue = map['preActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRecoveryPlanFailoverRecoveryGroupPreAction>(guardedValue, (value) => ReplicationRecoveryPlanFailoverRecoveryGroupPreAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
