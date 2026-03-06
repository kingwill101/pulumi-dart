// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_activation_rule_approval_stage_primary_approver.dart';

class GetRoleManagementPolicyActivationRuleApprovalStage {
  /// The IDs of the users or groups who can approve the activation
  final pulumi.Input<List<GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover>> primaryApprovers;

  /// Creates a new [GetRoleManagementPolicyActivationRuleApprovalStage].
  /// [primaryApprovers] The IDs of the users or groups who can approve the activation
  const GetRoleManagementPolicyActivationRuleApprovalStage({
    required this.primaryApprovers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryApprovers': pulumi.Input.mapInputValue<List<GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover>, List<Map<String, dynamic>>>(primaryApprovers, (value) => pulumi.Input.encodeList<GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRoleManagementPolicyActivationRuleApprovalStage.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyActivationRuleApprovalStage(
      primaryApprovers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover>(map['primaryApprovers']!, (value) => GetRoleManagementPolicyActivationRuleApprovalStagePrimaryApprover.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

