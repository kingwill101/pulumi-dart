// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConditionalAccessPolicyGrantControls {
  /// ID of an Authentication Strength Policy to use in this policy. When using a hard-coded ID, the UUID value should be prefixed with: `/policies/authenticationStrengthPolicies/`.
  final pulumi.Input<String>? authenticationStrengthPolicyId;
  /// List of built-in controls required by the policy. Possible values are: `block`, `mfa`, `approvedApplication`, `compliantApplication`, `compliantDevice`, `domainJoinedDevice`, `passwordChange` or `unknownFutureValue`.
  final pulumi.Input<List<String>>? builtInControls;
  /// List of custom controls IDs required by the policy.
  final pulumi.Input<List<String>>? customAuthenticationFactors;
  /// Defines the relationship of the grant controls. Possible values are: `AND`, `OR`.
  final pulumi.Input<String> operator;
  /// List of terms of use IDs required by the policy.
  ///
  /// &gt; At least one of `authentication_strength_policy_id`, `built_in_controls` or `terms_of_use` must be specified.
  final pulumi.Input<List<String>>? termsOfUses;

  /// Creates a new [ConditionalAccessPolicyGrantControls].
  /// [authenticationStrengthPolicyId] ID of an Authentication Strength Policy to use in this policy. When using a hard-coded ID, the UUID value should be prefixed with: `/policies/authenticationStrengthPolicies/`.
  /// [builtInControls] List of built-in controls required by the policy. Possible values are: `block`, `mfa`, `approvedApplication`, `compliantApplication`, `compliantDevice`, `domainJoinedDevice`, `passwordChange` or `unknownFutureValue`.
  /// [customAuthenticationFactors] List of custom controls IDs required by the policy.
  /// [operator] Defines the relationship of the grant controls. Possible values are: `AND`, `OR`.
  /// [termsOfUses] List of terms of use IDs required by the policy.
  ConditionalAccessPolicyGrantControls({
    this.authenticationStrengthPolicyId,
    this.builtInControls,
    this.customAuthenticationFactors,
    required this.operator,
    this.termsOfUses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationStrengthPolicyId': ?authenticationStrengthPolicyId,
      'builtInControls': ?builtInControls,
      'customAuthenticationFactors': ?customAuthenticationFactors,
      'operator': operator,
      'termsOfUses': ?termsOfUses,
    };
  }

  factory ConditionalAccessPolicyGrantControls.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyGrantControls(
      authenticationStrengthPolicyId: (() { final guardedValue = map['authenticationStrengthPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      builtInControls: (() { final guardedValue = map['builtInControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customAuthenticationFactors: (() { final guardedValue = map['customAuthenticationFactors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      termsOfUses: (() { final guardedValue = map['termsOfUses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

