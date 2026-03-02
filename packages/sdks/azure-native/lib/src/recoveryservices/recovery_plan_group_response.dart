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
  RecoveryPlanGroupResponse({
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
      endGroupActions: map['endGroupActions'] == null ? null : (pulumi.Input.decodeList<RecoveryPlanActionResponse>(map['endGroupActions']!, (value) => RecoveryPlanActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupType: (map['groupType'] as String).input(),
      replicationProtectedItems: map['replicationProtectedItems'] == null ? null : (pulumi.Input.decodeList<RecoveryPlanProtectedItemResponse>(map['replicationProtectedItems']!, (value) => RecoveryPlanProtectedItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startGroupActions: map['startGroupActions'] == null ? null : (pulumi.Input.decodeList<RecoveryPlanActionResponse>(map['startGroupActions']!, (value) => RecoveryPlanActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

