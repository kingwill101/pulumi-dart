// ignore_for_file: unused_element, unnecessary_cast

import 'saml_sso_info_response.dart';
import 'sign_in_behavior_response.dart';

/// Result data returned by getInboundSsoAssignment.
class GetInboundSsoAssignmentResult {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final String? customer;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  final String? name;
  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  final int? rank;
  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  final SamlSsoInfoResponse? samlSsoInfo;
  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  final SignInBehaviorResponse? signInBehavior;
  /// Inbound SSO behavior.
  final String? ssoMode;
  /// Immutable. Must be of the form `groups/{group}`.
  final String? targetGroup;
  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  final String? targetOrgUnit;

  /// Creates a new [GetInboundSsoAssignmentResult].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [name] [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  /// [rank] Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  /// [samlSsoInfo] SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  /// [signInBehavior] Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  /// [ssoMode] Inbound SSO behavior.
  /// [targetGroup] Immutable. Must be of the form `groups/{group}`.
  /// [targetOrgUnit] Immutable. Must be of the form `orgUnits/{org_unit}`.
  const GetInboundSsoAssignmentResult({
    this.customer,
    this.name,
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
      'name': ?name,
      'rank': ?rank,
      'samlSsoInfo': ?samlSsoInfo?.toMap(),
      'signInBehavior': ?signInBehavior?.toMap(),
      'ssoMode': ?ssoMode,
      'targetGroup': ?targetGroup,
      'targetOrgUnit': ?targetOrgUnit,
    };
  }

  factory GetInboundSsoAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetInboundSsoAssignmentResult(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      samlSsoInfo: (() { final guardedValue = map['samlSsoInfo']; if (guardedValue == null) return null; return SamlSsoInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      signInBehavior: (() { final guardedValue = map['signInBehavior']; if (guardedValue == null) return null; return SignInBehaviorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ssoMode: (() { final guardedValue = map['ssoMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetGroup: (() { final guardedValue = map['targetGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetOrgUnit: (() { final guardedValue = map['targetOrgUnit']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
