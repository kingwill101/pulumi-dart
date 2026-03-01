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
  InboundSsoAssignmentArgs({
    pulumi.Output<String>? customer,
    pulumi.Output<int>? rank,
    pulumi.Output<SamlSsoInfo>? samlSsoInfo,
    pulumi.Output<SignInBehavior>? signInBehavior,
    pulumi.Output<InboundSsoAssignmentSsoMode>? ssoMode,
    pulumi.Output<String>? targetGroup,
    pulumi.Output<String>? targetOrgUnit,
  }) :
      customer = pulumi.Input.asOptionalInput<String>(customer),
      rank = pulumi.Input.asOptionalInput<int>(rank),
      samlSsoInfo = pulumi.Input.asOptionalInput<SamlSsoInfo>(samlSsoInfo),
      signInBehavior = pulumi.Input.asOptionalInput<SignInBehavior>(signInBehavior),
      ssoMode = pulumi.Input.asOptionalInput<InboundSsoAssignmentSsoMode>(ssoMode),
      targetGroup = pulumi.Input.asOptionalInput<String>(targetGroup),
      targetOrgUnit = pulumi.Input.asOptionalInput<String>(targetOrgUnit);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'rank': ?rank,
      'samlSsoInfo': ?pulumi.Input.mapOptionalInputValue<SamlSsoInfo, Map<String, dynamic>>(samlSsoInfo, (value) => value.toMap()),
      'signInBehavior': ?pulumi.Input.mapOptionalInputValue<SignInBehavior, Map<String, dynamic>>(signInBehavior, (value) => value.toMap()),
      'ssoMode': ?pulumi.Input.mapOptionalInputValue<InboundSsoAssignmentSsoMode, String>(ssoMode, (value) => value.value),
      'targetGroup': ?targetGroup,
      'targetOrgUnit': ?targetOrgUnit,
    };
  }

  factory InboundSsoAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return InboundSsoAssignmentArgs(
      customer: map['customer'] == null ? null : pulumi.Output.create<String>(map['customer'] as String),
      rank: map['rank'] == null ? null : pulumi.Output.create<int>(map['rank'] as int),
      samlSsoInfo: map['samlSsoInfo'] == null ? null : pulumi.Output.create<SamlSsoInfo>(SamlSsoInfo.fromMap((map['samlSsoInfo'] as Map).cast<String, dynamic>())),
      signInBehavior: map['signInBehavior'] == null ? null : pulumi.Output.create<SignInBehavior>(SignInBehavior.fromMap((map['signInBehavior'] as Map).cast<String, dynamic>())),
      ssoMode: map['ssoMode'] == null ? null : pulumi.Output.create<InboundSsoAssignmentSsoMode>(InboundSsoAssignmentSsoMode.fromValue(map['ssoMode'] as String)),
      targetGroup: map['targetGroup'] == null ? null : pulumi.Output.create<String>(map['targetGroup'] as String),
      targetOrgUnit: map['targetOrgUnit'] == null ? null : pulumi.Output.create<String>(map['targetOrgUnit'] as String),
    );
  }
}

