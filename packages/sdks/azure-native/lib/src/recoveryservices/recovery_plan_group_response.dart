// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_action_response.dart';
import 'recovery_plan_protected_item_response.dart';

/// Recovery plan group details.
class RecoveryPlanGroupResponse {
  /// The end group actions.
  final pulumi.Input<List<RecoveryPlanActionResponse>>? endGroupActions;
  /// The group type.
  final pulumi.Input<String> groupType;
  /// The list of protected items.
  final pulumi.Input<List<RecoveryPlanProtectedItemResponse>>? replicationProtectedItems;
  /// The start group actions.
  final pulumi.Input<List<RecoveryPlanActionResponse>>? startGroupActions;

  /// Creates a new [RecoveryPlanGroupResponse].
  /// [endGroupActions] The end group actions.
  /// [groupType] The group type.
  /// [replicationProtectedItems] The list of protected items.
  /// [startGroupActions] The start group actions.
  const RecoveryPlanGroupResponse({
    this.endGroupActions,
    required this.groupType,
    this.replicationProtectedItems,
    this.startGroupActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endGroupActions': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanActionResponse>, List<Map<String, dynamic>>>(endGroupActions, (value) => pulumi.Input.encodeList<RecoveryPlanActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupType': groupType,
      'replicationProtectedItems': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanProtectedItemResponse>, List<Map<String, dynamic>>>(replicationProtectedItems, (value) => pulumi.Input.encodeList<RecoveryPlanProtectedItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startGroupActions': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanActionResponse>, List<Map<String, dynamic>>>(startGroupActions, (value) => pulumi.Input.encodeList<RecoveryPlanActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecoveryPlanGroupResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanGroupResponse(
      endGroupActions: (() { final guardedValue = map['endGroupActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanActionResponse>(guardedValue, (value) => RecoveryPlanActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupType: pulumi.Input.fromValue(map['groupType'] as String),
      replicationProtectedItems: (() { final guardedValue = map['replicationProtectedItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanProtectedItemResponse>(guardedValue, (value) => RecoveryPlanProtectedItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startGroupActions: (() { final guardedValue = map['startGroupActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanActionResponse>(guardedValue, (value) => RecoveryPlanActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
