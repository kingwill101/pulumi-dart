// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_activation_rule_approval_stage.dart';

class GetRoleManagementPolicyActivationRule {
  /// An `approval_stage` block as defined below.
  final pulumi.Input<List<GetRoleManagementPolicyActivationRuleApprovalStage>>
  approvalStages;

  /// (String) The maximum length of time an activated role can be valid, in an ISO8601 Duration format.
  final pulumi.Input<String> maximumDuration;

  /// (Boolean) Is approval required for activation.
  final pulumi.Input<bool> requireApproval;

  /// (Boolean) Is a justification required to create new assignments.
  final pulumi.Input<bool> requireJustification;

  /// (Boolean) Is multi-factor authentication required to create new assignments.
  final pulumi.Input<bool> requireMultifactorAuthentication;

  /// (Boolean) Is ticket information required to create new assignments.
  final pulumi.Input<bool> requireTicketInfo;

  /// (String) The Entra ID Conditional Access context that must be present for activation.
  final pulumi.Input<String> requiredConditionalAccessAuthenticationContext;

  /// Creates a new [GetRoleManagementPolicyActivationRule].
  /// [approvalStages] An `approval_stage` block as defined below.
  /// [maximumDuration] (String) The maximum length of time an activated role can be valid, in an ISO8601 Duration format.
  /// [requireApproval] (Boolean) Is approval required for activation.
  /// [requireJustification] (Boolean) Is a justification required to create new assignments.
  /// [requireMultifactorAuthentication] (Boolean) Is multi-factor authentication required to create new assignments.
  /// [requireTicketInfo] (Boolean) Is ticket information required to create new assignments.
  /// [requiredConditionalAccessAuthenticationContext] (String) The Entra ID Conditional Access context that must be present for activation.
  GetRoleManagementPolicyActivationRule({
    required this.approvalStages,
    required this.maximumDuration,
    required this.requireApproval,
    required this.requireJustification,
    required this.requireMultifactorAuthentication,
    required this.requireTicketInfo,
    required this.requiredConditionalAccessAuthenticationContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalStages':
          pulumi.Input.mapInputValue<
            List<GetRoleManagementPolicyActivationRuleApprovalStage>,
            List<Map<String, dynamic>>
          >(
            approvalStages,
            (value) =>
                pulumi.Input.encodeList<
                  GetRoleManagementPolicyActivationRuleApprovalStage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maximumDuration': maximumDuration,
      'requireApproval': requireApproval,
      'requireJustification': requireJustification,
      'requireMultifactorAuthentication': requireMultifactorAuthentication,
      'requireTicketInfo': requireTicketInfo,
      'requiredConditionalAccessAuthenticationContext':
          requiredConditionalAccessAuthenticationContext,
    };
  }

  factory GetRoleManagementPolicyActivationRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRoleManagementPolicyActivationRule(
      approvalStages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetRoleManagementPolicyActivationRuleApprovalStage
        >(
          map['approvalStages']!,
          (value) => GetRoleManagementPolicyActivationRuleApprovalStage.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      maximumDuration: pulumi.Input.fromValue(map['maximumDuration'] as String),
      requireApproval: pulumi.Input.fromValue(map['requireApproval'] as bool),
      requireJustification: pulumi.Input.fromValue(
        map['requireJustification'] as bool,
      ),
      requireMultifactorAuthentication: pulumi.Input.fromValue(
        map['requireMultifactorAuthentication'] as bool,
      ),
      requireTicketInfo: pulumi.Input.fromValue(
        map['requireTicketInfo'] as bool,
      ),
      requiredConditionalAccessAuthenticationContext: pulumi.Input.fromValue(
        map['requiredConditionalAccessAuthenticationContext'] as String,
      ),
    );
  }
}
