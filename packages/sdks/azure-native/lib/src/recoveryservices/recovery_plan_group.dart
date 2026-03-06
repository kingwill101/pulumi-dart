// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_action.dart';
import 'recovery_plan_protected_item.dart';

/// Recovery plan group details.
class RecoveryPlanGroup {
  /// The end group actions.
  final pulumi.Input<List<RecoveryPlanAction>>? endGroupActions;
  /// The group type.
  final pulumi.Input<String> groupType;
  /// The list of protected items.
  final pulumi.Input<List<RecoveryPlanProtectedItem>>? replicationProtectedItems;
  /// The start group actions.
  final pulumi.Input<List<RecoveryPlanAction>>? startGroupActions;

  /// Creates a new [RecoveryPlanGroup].
  /// [endGroupActions] The end group actions.
  /// [groupType] The group type.
  /// [replicationProtectedItems] The list of protected items.
  /// [startGroupActions] The start group actions.
  const RecoveryPlanGroup({
    this.endGroupActions,
    required this.groupType,
    this.replicationProtectedItems,
    this.startGroupActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endGroupActions': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanAction>, List<Map<String, dynamic>>>(endGroupActions, (value) => pulumi.Input.encodeList<RecoveryPlanAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupType': groupType,
      'replicationProtectedItems': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanProtectedItem>, List<Map<String, dynamic>>>(replicationProtectedItems, (value) => pulumi.Input.encodeList<RecoveryPlanProtectedItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startGroupActions': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanAction>, List<Map<String, dynamic>>>(startGroupActions, (value) => pulumi.Input.encodeList<RecoveryPlanAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecoveryPlanGroup.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanGroup(
      endGroupActions: (() { final guardedValue = map['endGroupActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanAction>(guardedValue, (value) => RecoveryPlanAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupType: pulumi.Input.fromValue(map['groupType'] as String),
      replicationProtectedItems: (() { final guardedValue = map['replicationProtectedItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanProtectedItem>(guardedValue, (value) => RecoveryPlanProtectedItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startGroupActions: (() { final guardedValue = map['startGroupActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanAction>(guardedValue, (value) => RecoveryPlanAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

