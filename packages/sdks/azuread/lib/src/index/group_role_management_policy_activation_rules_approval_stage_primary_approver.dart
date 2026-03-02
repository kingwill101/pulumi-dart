// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover {
  /// The ID of the object which will act as an approver.
  final pulumi.Input<String> objectId;
  /// The type of object acting as an approver. Possible options are `singleUser` and `groupMembers`.
  final pulumi.Input<String>? type;

  /// Creates a new [GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover].
  /// [objectId] The ID of the object which will act as an approver.
  /// [type] The type of object acting as an approver. Possible options are `singleUser` and `groupMembers`.
  GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover({
    required this.objectId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'type': ?type,
    };
  }

  factory GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover(
      objectId: (map['objectId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

