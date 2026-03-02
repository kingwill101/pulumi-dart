// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_sso_assignment_sso_mode_cloudidentity_v1beta1.dart';
import 'saml_sso_info_cloudidentity_v1beta1.dart';
import 'sign_in_behavior_cloudidentity_v1beta1.dart';

/// {@template pulumi_cloudidentity_v1beta1_inbound_sso_assignment_cloudidentity_v1beta1_args_doc}
/// The set of arguments for InboundSsoAssignment.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_inbound_sso_assignment_cloudidentity_v1beta1_args_doc}
class InboundSsoAssignmentCloudidentityV1beta1Args {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final pulumi.Input<String>? customer;
  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  final pulumi.Input<int>? rank;
  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  final pulumi.Input<SamlSsoInfoCloudidentityV1beta1>? samlSsoInfo;
  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  final pulumi.Input<SignInBehaviorCloudidentityV1beta1>? signInBehavior;
  /// Inbound SSO behavior.
  final pulumi.Input<InboundSsoAssignmentSsoModeCloudidentityV1beta1>? ssoMode;
  /// Immutable. Must be of the form `groups/{group}`.
  final pulumi.Input<String>? targetGroup;
  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  final pulumi.Input<String>? targetOrgUnit;

  /// Creates a new [InboundSsoAssignmentCloudidentityV1beta1Args].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [rank] Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  /// [samlSsoInfo] SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  /// [signInBehavior] Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  /// [ssoMode] Inbound SSO behavior.
  /// [targetGroup] Immutable. Must be of the form `groups/{group}`.
  /// [targetOrgUnit] Immutable. Must be of the form `orgUnits/{org_unit}`.
  InboundSsoAssignmentCloudidentityV1beta1Args({
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
      'samlSsoInfo': ?pulumi.Input.mapOptionalInputValue<SamlSsoInfoCloudidentityV1beta1, Map<String, dynamic>>(samlSsoInfo, (value) => value.toMap()),
      'signInBehavior': ?pulumi.Input.mapOptionalInputValue<SignInBehaviorCloudidentityV1beta1, Map<String, dynamic>>(signInBehavior, (value) => value.toMap()),
      'ssoMode': ?pulumi.Input.mapOptionalInputValue<InboundSsoAssignmentSsoModeCloudidentityV1beta1, String>(ssoMode, (value) => value.value),
      'targetGroup': ?targetGroup,
      'targetOrgUnit': ?targetOrgUnit,
    };
  }

  factory InboundSsoAssignmentCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return InboundSsoAssignmentCloudidentityV1beta1Args(
      customer: map['customer'] == null ? null : (map['customer']! as String).input(),
      rank: map['rank'] == null ? null : (map['rank']! as int).input(),
      samlSsoInfo: map['samlSsoInfo'] == null ? null : (SamlSsoInfoCloudidentityV1beta1.fromMap((map['samlSsoInfo']! as Map).cast<String, dynamic>())).input(),
      signInBehavior: map['signInBehavior'] == null ? null : (SignInBehaviorCloudidentityV1beta1.fromMap((map['signInBehavior']! as Map).cast<String, dynamic>())).input(),
      ssoMode: map['ssoMode'] == null ? null : (InboundSsoAssignmentSsoModeCloudidentityV1beta1.fromValue(map['ssoMode']! as String)).input(),
      targetGroup: map['targetGroup'] == null ? null : (map['targetGroup']! as String).input(),
      targetOrgUnit: map['targetOrgUnit'] == null ? null : (map['targetOrgUnit']! as String).input(),
    );
  }
}

