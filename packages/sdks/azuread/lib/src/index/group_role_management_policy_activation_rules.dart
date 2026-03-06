// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_activation_rules_approval_stage.dart';

class GroupRoleManagementPolicyActivationRules {
  /// An `approval_stage` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyActivationRulesApprovalStage>? approvalStage;
  /// The maximum length of time an activated role can be valid, in an ISO8601 Duration format (e.g. `PT8H`). Valid range is `PT30M` to `PT23H30M`, in 30 minute increments, or `PT1D`.
  final pulumi.Input<String>? maximumDuration;
  /// Is approval required for activation. If `true` an `approval_stage` block must be provided.
  final pulumi.Input<bool>? requireApproval;
  /// Is a justification required during activation of the role.
  final pulumi.Input<bool>? requireJustification;
  /// Is multi-factor authentication required to activate the role. Conflicts with `required_conditional_access_authentication_context`.
  final pulumi.Input<bool>? requireMultifactorAuthentication;
  /// Is ticket information requrired during activation of the role.
  final pulumi.Input<bool>? requireTicketInfo;
  /// The Entra ID Conditional Access context that must be present for activation (e.g `c1`). Conflicts with `require_multifactor_authentication`.
  final pulumi.Input<String>? requiredConditionalAccessAuthenticationContext;

  /// Creates a new [GroupRoleManagementPolicyActivationRules].
  /// [approvalStage] An `approval_stage` block as defined below.
  /// [maximumDuration] The maximum length of time an activated role can be valid, in an ISO8601 Duration format (e.g. `PT8H`). Valid range is `PT30M` to `PT23H30M`, in 30 minute increments, or `PT1D`.
  /// [requireApproval] Is approval required for activation. If `true` an `approval_stage` block must be provided.
  /// [requireJustification] Is a justification required during activation of the role.
  /// [requireMultifactorAuthentication] Is multi-factor authentication required to activate the role. Conflicts with `required_conditional_access_authentication_context`.
  /// [requireTicketInfo] Is ticket information requrired during activation of the role.
  /// [requiredConditionalAccessAuthenticationContext] The Entra ID Conditional Access context that must be present for activation (e.g `c1`). Conflicts with `require_multifactor_authentication`.
  const GroupRoleManagementPolicyActivationRules({
    this.approvalStage,
    this.maximumDuration,
    this.requireApproval,
    this.requireJustification,
    this.requireMultifactorAuthentication,
    this.requireTicketInfo,
    this.requiredConditionalAccessAuthenticationContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalStage': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyActivationRulesApprovalStage, Map<String, dynamic>>(approvalStage, (value) => value.toMap()),
      'maximumDuration': ?maximumDuration,
      'requireApproval': ?requireApproval,
      'requireJustification': ?requireJustification,
      'requireMultifactorAuthentication': ?requireMultifactorAuthentication,
      'requireTicketInfo': ?requireTicketInfo,
      'requiredConditionalAccessAuthenticationContext': ?requiredConditionalAccessAuthenticationContext,
    };
  }

  factory GroupRoleManagementPolicyActivationRules.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyActivationRules(
      approvalStage: (() { final guardedValue = map['approvalStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyActivationRulesApprovalStage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumDuration: (() { final guardedValue = map['maximumDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireApproval: (() { final guardedValue = map['requireApproval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireJustification: (() { final guardedValue = map['requireJustification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireMultifactorAuthentication: (() { final guardedValue = map['requireMultifactorAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireTicketInfo: (() { final guardedValue = map['requireTicketInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requiredConditionalAccessAuthenticationContext: (() { final guardedValue = map['requiredConditionalAccessAuthenticationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

