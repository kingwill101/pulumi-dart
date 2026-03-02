// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover {
  /// The ID of the object which will act as an approver.
  final pulumi.Input<String> objectId;
  /// The type of object acting as an approver. Possible options are `User` and `Group`.
  final pulumi.Input<String> type;

  /// Creates a new [RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover].
  /// [objectId] The ID of the object which will act as an approver.
  /// [type] The type of object acting as an approver. Possible options are `User` and `Group`.
  RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover({
    required this.objectId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'type': type,
    };
  }

  factory RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover(
      objectId: (map['objectId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

