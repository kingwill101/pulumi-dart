// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_recovery_plan_recovery_group_post_action.dart';
import 'get_replication_recovery_plan_recovery_group_pre_action.dart';

class GetReplicationRecoveryPlanRecoveryGroup {
  /// one or more `action` block. which will be executed after the group recovery.
  final pulumi.Input<List<List<GetReplicationRecoveryPlanRecoveryGroupPostAction>>> postActions;
  /// one or more `action` block. which will be executed before the group recovery.
  final pulumi.Input<List<List<GetReplicationRecoveryPlanRecoveryGroupPreAction>>> preActions;
  /// one or more id of protected VM.
  final pulumi.Input<List<String>> replicatedProtectedItems;
  /// Type of the action detail.
  final pulumi.Input<String> type;

  /// Creates a new [GetReplicationRecoveryPlanRecoveryGroup].
  /// [postActions] one or more `action` block. which will be executed after the group recovery.
  /// [preActions] one or more `action` block. which will be executed before the group recovery.
  /// [replicatedProtectedItems] one or more id of protected VM.
  /// [type] Type of the action detail.
  GetReplicationRecoveryPlanRecoveryGroup({
    required this.postActions,
    required this.preActions,
    required this.replicatedProtectedItems,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postActions': pulumi.Input.mapInputValue<List<List<GetReplicationRecoveryPlanRecoveryGroupPostAction>>, List<List<Map<String, dynamic>>>>(postActions, (value) => pulumi.Input.encodeList<List<GetReplicationRecoveryPlanRecoveryGroupPostAction>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<GetReplicationRecoveryPlanRecoveryGroupPostAction, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'preActions': pulumi.Input.mapInputValue<List<List<GetReplicationRecoveryPlanRecoveryGroupPreAction>>, List<List<Map<String, dynamic>>>>(preActions, (value) => pulumi.Input.encodeList<List<GetReplicationRecoveryPlanRecoveryGroupPreAction>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<GetReplicationRecoveryPlanRecoveryGroupPreAction, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'replicatedProtectedItems': replicatedProtectedItems,
      'type': type,
    };
  }

  factory GetReplicationRecoveryPlanRecoveryGroup.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanRecoveryGroup(
      postActions: pulumi.Input.fromValue(pulumi.Input.decodeList<List<GetReplicationRecoveryPlanRecoveryGroupPostAction>>(map['postActions']!, (value) => pulumi.Input.decodeList<GetReplicationRecoveryPlanRecoveryGroupPostAction>(value, (value) => GetReplicationRecoveryPlanRecoveryGroupPostAction.fromMap((value as Map).cast<String, dynamic>())))),
      preActions: pulumi.Input.fromValue(pulumi.Input.decodeList<List<GetReplicationRecoveryPlanRecoveryGroupPreAction>>(map['preActions']!, (value) => pulumi.Input.decodeList<GetReplicationRecoveryPlanRecoveryGroupPreAction>(value, (value) => GetReplicationRecoveryPlanRecoveryGroupPreAction.fromMap((value as Map).cast<String, dynamic>())))),
      replicatedProtectedItems: pulumi.Input.fromValue((map['replicatedProtectedItems'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

