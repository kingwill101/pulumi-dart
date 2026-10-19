// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthenticationStrengthPolicyCombinationConfiguration {
  /// A list of AAGUIDs allowed by this combination configuration. Only populated when `type` is `fido2CombinationConfiguration`.
  final pulumi.Input<List<String>> allowedAaguids;
  /// A list of allowed certificate issuer subject key identifier values. Only populated when `type` is `x509CertificateCombinationConfiguration`.
  final pulumi.Input<List<String>> allowedIssuerSkis;
  /// A list of allowed certificate policy OIDs. Only populated when `type` is `x509CertificateCombinationConfiguration`.
  final pulumi.Input<List<String>> allowedPolicyOids;
  /// A list of authentication method combinations this configuration applies to, for example `fido2` or `x509CertificateSingleFactor`. This is distinct from `type`, which identifies the kind of combination configuration.
  final pulumi.Input<List<String>> appliesToCombinations;
  /// The object ID of the authentication strength policy.
  ///
  /// &gt; One of `displayName` or `objectId` must be specified.
  ///
  /// &gt; **Tip** Display names are expected to be unique within a tenant, however this is not guaranteed by the API. Specify `objectId` where you need to be certain of matching a specific policy.
  final pulumi.Input<String> objectId;
  /// The type of this combination configuration, either `fido2CombinationConfiguration` or `x509CertificateCombinationConfiguration`.
  final pulumi.Input<String> type;

  /// Creates a new [GetAuthenticationStrengthPolicyCombinationConfiguration].
  /// [allowedAaguids] A list of AAGUIDs allowed by this combination configuration. Only populated when `type` is `fido2CombinationConfiguration`.
  /// [allowedIssuerSkis] A list of allowed certificate issuer subject key identifier values. Only populated when `type` is `x509CertificateCombinationConfiguration`.
  /// [allowedPolicyOids] A list of allowed certificate policy OIDs. Only populated when `type` is `x509CertificateCombinationConfiguration`.
  /// [appliesToCombinations] A list of authentication method combinations this configuration applies to, for example `fido2` or `x509CertificateSingleFactor`. This is distinct from `type`, which identifies the kind of combination configuration.
  /// [objectId] The object ID of the authentication strength policy.
  /// [type] The type of this combination configuration, either `fido2CombinationConfiguration` or `x509CertificateCombinationConfiguration`.
  const GetAuthenticationStrengthPolicyCombinationConfiguration({
    required this.allowedAaguids,
    required this.allowedIssuerSkis,
    required this.allowedPolicyOids,
    required this.appliesToCombinations,
    required this.objectId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAaguids': allowedAaguids,
      'allowedIssuerSkis': allowedIssuerSkis,
      'allowedPolicyOids': allowedPolicyOids,
      'appliesToCombinations': appliesToCombinations,
      'objectId': objectId,
      'type': type,
    };
  }

  factory GetAuthenticationStrengthPolicyCombinationConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAuthenticationStrengthPolicyCombinationConfiguration(
      allowedAaguids: pulumi.Input.fromValue((map['allowedAaguids'] as List).cast<String>()),
      allowedIssuerSkis: pulumi.Input.fromValue((map['allowedIssuerSkis'] as List).cast<String>()),
      allowedPolicyOids: pulumi.Input.fromValue((map['allowedPolicyOids'] as List).cast<String>()),
      appliesToCombinations: pulumi.Input.fromValue((map['appliesToCombinations'] as List).cast<String>()),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
