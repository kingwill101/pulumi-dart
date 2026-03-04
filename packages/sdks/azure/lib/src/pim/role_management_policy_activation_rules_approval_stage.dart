// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_activation_rules_approval_stage_primary_approver.dart';

class RoleManagementPolicyActivationRulesApprovalStage {
  /// One or more `primary_approver` blocks as defined below.
  final pulumi.Input<
    List<RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover>
  >
  primaryApprovers;

  /// Creates a new [RoleManagementPolicyActivationRulesApprovalStage].
  /// [primaryApprovers] One or more `primary_approver` blocks as defined below.
  RoleManagementPolicyActivationRulesApprovalStage({
    required this.primaryApprovers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryApprovers':
          pulumi.Input.mapInputValue<
            List<
              RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover
            >,
            List<Map<String, dynamic>>
          >(
            primaryApprovers,
            (value) =>
                pulumi.Input.encodeList<
                  RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RoleManagementPolicyActivationRulesApprovalStage.fromMap(
    Map<String, dynamic> map,
  ) {
    return RoleManagementPolicyActivationRulesApprovalStage(
      primaryApprovers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover
        >(
          map['primaryApprovers']!,
          (value) =>
              RoleManagementPolicyActivationRulesApprovalStagePrimaryApprover.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
