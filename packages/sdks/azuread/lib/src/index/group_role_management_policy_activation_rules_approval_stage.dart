// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_activation_rules_approval_stage_primary_approver.dart';

class GroupRoleManagementPolicyActivationRulesApprovalStage {
  /// The IDs of the users or groups who can approve the activation
  final pulumi.Input<List<GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover>> primaryApprovers;

  /// Creates a new [GroupRoleManagementPolicyActivationRulesApprovalStage].
  /// [primaryApprovers] The IDs of the users or groups who can approve the activation
  GroupRoleManagementPolicyActivationRulesApprovalStage({
    required this.primaryApprovers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryApprovers': pulumi.Input.mapInputValue<List<GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover>, List<Map<String, dynamic>>>(primaryApprovers, (value) => pulumi.Input.encodeList<GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupRoleManagementPolicyActivationRulesApprovalStage.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyActivationRulesApprovalStage(
      primaryApprovers: pulumi.Input.fromValue(pulumi.Input.decodeList<GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover>(map['primaryApprovers']!, (value) => GroupRoleManagementPolicyActivationRulesApprovalStagePrimaryApprover.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

