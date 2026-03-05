// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_activation_rules_approval_stage.dart';

class RoleManagementPolicyActivationRules {
  /// An `approval_stage` block as defined below.
  final pulumi.Input<RoleManagementPolicyActivationRulesApprovalStage>? approvalStage;
  /// The maximum length of time an activated role can be valid, in an ISO8601 Duration format (e.g. `PT8H`). Valid range is `PT30M` to `PT23H30M`, in 30 minute increments, or `PT1D`. Possible values are `PT30M`, `PT1H`, `PT1H30M`, `PT2H`, `PT2H30M`, `PT3H`, `PT3H30M`, `PT4H`, `PT4H30M`, `PT5H`, `PT5H30M`, `PT6H`, `PT6H30M`, `PT7H`, `PT7H30M`, `PT8H`, `PT8H30M`, `PT9H`, `PT9H30M`, `PT10H`, `PT10H30M`, `PT11H`, `PT11H30M`, `PT12H`, `PT12H30M`, `PT13H`, `PT13H30M`, `PT14H`, `PT14H30M`, `PT15H`, `PT15H30M`, `PT16H`, `PT16H30M`, `PT17H`, `PT17H30M`, `PT18H`, `PT18H30M`, `PT19H`, `PT19H30M`, `PT20H`, `PT20H30M`, `PT21H`, `PT21H30M`, `PT22H`, `PT22H30M`, `PT23H`, `PT23H30M` and `P1D`.
  final pulumi.Input<String>? maximumDuration;
  /// Is approval required for activation. If `true` an `approval_stage` block must be provided.
  final pulumi.Input<bool>? requireApproval;
  /// Is a justification required during activation of the role.
  final pulumi.Input<bool>? requireJustification;
  /// Is multi-factor authentication required to activate the role. Conflicts with `required_conditional_access_authentication_context`.
  final pulumi.Input<bool>? requireMultifactorAuthentication;
  /// Is ticket information requrired during activation of the role.
  final pulumi.Input<bool>? requireTicketInfo;
  /// The Entra ID Conditional Access context that must be present for activation. Conflicts with `require_multifactor_authentication`.
  final pulumi.Input<String>? requiredConditionalAccessAuthenticationContext;

  /// Creates a new [RoleManagementPolicyActivationRules].
  /// [approvalStage] An `approval_stage` block as defined below.
  /// [maximumDuration] The maximum length of time an activated role can be valid, in an ISO8601 Duration format (e.g. `PT8H`). Valid range is `PT30M` to `PT23H30M`, in 30 minute increments, or `PT1D`. Possible values are `PT30M`, `PT1H`, `PT1H30M`, `PT2H`, `PT2H30M`, `PT3H`, `PT3H30M`, `PT4H`, `PT4H30M`, `PT5H`, `PT5H30M`, `PT6H`, `PT6H30M`, `PT7H`, `PT7H30M`, `PT8H`, `PT8H30M`, `PT9H`, `PT9H30M`, `PT10H`, `PT10H30M`, `PT11H`, `PT11H30M`, `PT12H`, `PT12H30M`, `PT13H`, `PT13H30M`, `PT14H`, `PT14H30M`, `PT15H`, `PT15H30M`, `PT16H`, `PT16H30M`, `PT17H`, `PT17H30M`, `PT18H`, `PT18H30M`, `PT19H`, `PT19H30M`, `PT20H`, `PT20H30M`, `PT21H`, `PT21H30M`, `PT22H`, `PT22H30M`, `PT23H`, `PT23H30M` and `P1D`.
  /// [requireApproval] Is approval required for activation. If `true` an `approval_stage` block must be provided.
  /// [requireJustification] Is a justification required during activation of the role.
  /// [requireMultifactorAuthentication] Is multi-factor authentication required to activate the role. Conflicts with `required_conditional_access_authentication_context`.
  /// [requireTicketInfo] Is ticket information requrired during activation of the role.
  /// [requiredConditionalAccessAuthenticationContext] The Entra ID Conditional Access context that must be present for activation. Conflicts with `require_multifactor_authentication`.
  RoleManagementPolicyActivationRules({
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
      'approvalStage': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyActivationRulesApprovalStage, Map<String, dynamic>>(approvalStage, (value) => value.toMap()),
      'maximumDuration': ?maximumDuration,
      'requireApproval': ?requireApproval,
      'requireJustification': ?requireJustification,
      'requireMultifactorAuthentication': ?requireMultifactorAuthentication,
      'requireTicketInfo': ?requireTicketInfo,
      'requiredConditionalAccessAuthenticationContext': ?requiredConditionalAccessAuthenticationContext,
    };
  }

  factory RoleManagementPolicyActivationRules.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyActivationRules(
      approvalStage: (() { final guardedValue = map['approvalStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyActivationRulesApprovalStage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumDuration: (() { final guardedValue = map['maximumDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireApproval: (() { final guardedValue = map['requireApproval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireJustification: (() { final guardedValue = map['requireJustification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireMultifactorAuthentication: (() { final guardedValue = map['requireMultifactorAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireTicketInfo: (() { final guardedValue = map['requireTicketInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requiredConditionalAccessAuthenticationContext: (() { final guardedValue = map['requiredConditionalAccessAuthenticationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

