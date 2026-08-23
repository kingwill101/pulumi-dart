// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_sso_assignment_sso_mode.dart';
import 'saml_sso_info.dart';
import 'sign_in_behavior.dart';

/// {@template pulumi_cloudidentity_v1_inbound_sso_assignment_args_doc}
/// The set of arguments for InboundSsoAssignment.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_inbound_sso_assignment_args_doc}
class InboundSsoAssignmentArgs {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final pulumi.Input<String>? customer;
  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  final pulumi.Input<int>? rank;
  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  final pulumi.Input<SamlSsoInfo>? samlSsoInfo;
  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  final pulumi.Input<SignInBehavior>? signInBehavior;
  /// Inbound SSO behavior.
  final pulumi.Input<InboundSsoAssignmentSsoMode>? ssoMode;
  /// Immutable. Must be of the form `groups/{group}`.
  final pulumi.Input<String>? targetGroup;
  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  final pulumi.Input<String>? targetOrgUnit;

  /// Creates a new [InboundSsoAssignmentArgs].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [rank] Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  /// [samlSsoInfo] SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  /// [signInBehavior] Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  /// [ssoMode] Inbound SSO behavior.
  /// [targetGroup] Immutable. Must be of the form `groups/{group}`.
  /// [targetOrgUnit] Immutable. Must be of the form `orgUnits/{org_unit}`.
  const InboundSsoAssignmentArgs({
    this.customer,
    this.rank,
    this.samlSsoInfo,
    this.signInBehavior,
    this.ssoMode,
    this.targetGroup,
    this.targetOrgUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'rank': ?rank,
      'samlSsoInfo': ?pulumi.Input.mapOptionalInputValue<SamlSsoInfo, Map<String, dynamic>>(samlSsoInfo, (value) => value.toMap()),
      'signInBehavior': ?pulumi.Input.mapOptionalInputValue<SignInBehavior, Map<String, dynamic>>(signInBehavior, (value) => value.toMap()),
      'ssoMode': ?pulumi.Input.mapOptionalInputValue<InboundSsoAssignmentSsoMode, String>(ssoMode, (value) => value.wireValue),
      'targetGroup': ?targetGroup,
      'targetOrgUnit': ?targetOrgUnit,
    };
  }

  factory InboundSsoAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return InboundSsoAssignmentArgs(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      samlSsoInfo: (() { final guardedValue = map['samlSsoInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SamlSsoInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signInBehavior: (() { final guardedValue = map['signInBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignInBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssoMode: (() { final guardedValue = map['ssoMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InboundSsoAssignmentSsoMode.fromValue(guardedValue as String)); })(),
      targetGroup: (() { final guardedValue = map['targetGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetOrgUnit: (() { final guardedValue = map['targetOrgUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
