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
  RecoveryPlanGroup({
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
      endGroupActions: map['endGroupActions'] == null ? null : (pulumi.Input.decodeList<RecoveryPlanAction>(map['endGroupActions'], (value) => RecoveryPlanAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupType: (map['groupType'] as String).input(),
      replicationProtectedItems: map['replicationProtectedItems'] == null ? null : (pulumi.Input.decodeList<RecoveryPlanProtectedItem>(map['replicationProtectedItems'], (value) => RecoveryPlanProtectedItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startGroupActions: map['startGroupActions'] == null ? null : (pulumi.Input.decodeList<RecoveryPlanAction>(map['startGroupActions'], (value) => RecoveryPlanAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

