// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover {
  /// (String) The ID of the object which will act as an approver.
  final pulumi.Input<String> objectId;
  /// (String) The type of object acting as an approver. Either `User` or `Group`.
  final pulumi.Input<String> type;

  /// Creates a new [GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover].
  /// [objectId] (String) The ID of the object which will act as an approver.
  /// [type] (String) The type of object acting as an approver. Either `User` or `Group`.
  GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover({
    required this.objectId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'type': type,
    };
  }

  factory GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover(
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

