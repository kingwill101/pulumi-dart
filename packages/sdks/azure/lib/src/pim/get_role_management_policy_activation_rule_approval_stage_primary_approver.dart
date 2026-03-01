// ignore_for_file: unused_element, unnecessary_cast


class GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover {
  /// (String) The ID of the object which will act as an approver.
  final String objectId;
  /// (String) The type of object acting as an approver. Either `User` or `Group`.
  final String type;

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
      objectId: map['objectId'] as String,
      type: map['type'] as String,
    );
  }
}

