// ignore_for_file: unused_element, unnecessary_cast

import 'saml_sso_info_response_cloudidentity_v1beta1.dart';
import 'sign_in_behavior_response_cloudidentity_v1beta1.dart';

/// Result data returned by getInboundSsoAssignment.
class GetInboundSsoAssignmentCloudidentityV1beta1Result {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final String customer;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  final String name;
  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  final int rank;
  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  final SamlSsoInfoResponseCloudidentityV1beta1 samlSsoInfo;
  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  final SignInBehaviorResponseCloudidentityV1beta1 signInBehavior;
  /// Inbound SSO behavior.
  final String ssoMode;
  /// Immutable. Must be of the form `groups/{group}`.
  final String targetGroup;
  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  final String targetOrgUnit;

  /// Creates a new [GetInboundSsoAssignmentCloudidentityV1beta1Result].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [name] [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  /// [rank] Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  /// [samlSsoInfo] SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  /// [signInBehavior] Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  /// [ssoMode] Inbound SSO behavior.
  /// [targetGroup] Immutable. Must be of the form `groups/{group}`.
  /// [targetOrgUnit] Immutable. Must be of the form `orgUnits/{org_unit}`.
  const GetInboundSsoAssignmentCloudidentityV1beta1Result({
    required this.customer,
    required this.name,
    required this.rank,
    required this.samlSsoInfo,
    required this.signInBehavior,
    required this.ssoMode,
    required this.targetGroup,
    required this.targetOrgUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': customer,
      'name': name,
      'rank': rank,
      'samlSsoInfo': samlSsoInfo.toMap(),
      'signInBehavior': signInBehavior.toMap(),
      'ssoMode': ssoMode,
      'targetGroup': targetGroup,
      'targetOrgUnit': targetOrgUnit,
    };
  }

  factory GetInboundSsoAssignmentCloudidentityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetInboundSsoAssignmentCloudidentityV1beta1Result(
      customer: map['customer'] as String,
      name: map['name'] as String,
      rank: map['rank'] as int,
      samlSsoInfo: SamlSsoInfoResponseCloudidentityV1beta1.fromMap((map['samlSsoInfo']! as Map).cast<String, dynamic>()),
      signInBehavior: SignInBehaviorResponseCloudidentityV1beta1.fromMap((map['signInBehavior']! as Map).cast<String, dynamic>()),
      ssoMode: map['ssoMode'] as String,
      targetGroup: map['targetGroup'] as String,
      targetOrgUnit: map['targetOrgUnit'] as String,
    );
  }
}
