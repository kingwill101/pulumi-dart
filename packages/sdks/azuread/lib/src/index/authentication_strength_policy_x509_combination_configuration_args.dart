// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_authentication_strength_policy_x509_combination_configuration_authentication_strength_policy_x509_combination_configuration_args_doc}
/// The set of arguments for AuthenticationStrengthPolicyX509CombinationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_authentication_strength_policy_x509_combination_configuration_authentication_strength_policy_x509_combination_configuration_args_doc}
class AuthenticationStrengthPolicyX509CombinationConfigurationArgs {
  /// A set of allowed certificate issuer subject key identifier (SKI) values. At least one of `allowedIssuerSkis` or `allowedPolicyOids` must be specified.
  final pulumi.Input<List<String>?>? allowedIssuerSkis;
  /// A set of allowed certificate policy OIDs. At least one of `allowedIssuerSkis` or `allowedPolicyOids` must be specified.
  final pulumi.Input<List<String>?>? allowedPolicyOids;
  /// A set of x509 certificate authentication method combinations this configuration applies to. Possible values are `x509CertificateSingleFactor` and `x509CertificateMultiFactor`.
  final pulumi.Input<List<String>> appliesToCombinations;
  /// The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  ///
  /// &gt; Each combination specified in `appliesToCombinations` must also be specified in the `allowedCombinations` of the associated authentication strength policy, otherwise the API rejects the combination configuration.
  final pulumi.Input<String> authenticationStrengthPolicyId;

  /// Creates a new [AuthenticationStrengthPolicyX509CombinationConfigurationArgs].
  /// [allowedIssuerSkis] A set of allowed certificate issuer subject key identifier (SKI) values. At least one of `allowedIssuerSkis` or `allowedPolicyOids` must be specified.
  /// [allowedPolicyOids] A set of allowed certificate policy OIDs. At least one of `allowedIssuerSkis` or `allowedPolicyOids` must be specified.
  /// [appliesToCombinations] A set of x509 certificate authentication method combinations this configuration applies to. Possible values are `x509CertificateSingleFactor` and `x509CertificateMultiFactor`.
  /// [authenticationStrengthPolicyId] The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  const AuthenticationStrengthPolicyX509CombinationConfigurationArgs({
    this.allowedIssuerSkis,
    this.allowedPolicyOids,
    required this.appliesToCombinations,
    required this.authenticationStrengthPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIssuerSkis': ?allowedIssuerSkis,
      'allowedPolicyOids': ?allowedPolicyOids,
      'appliesToCombinations': appliesToCombinations,
      'authenticationStrengthPolicyId': authenticationStrengthPolicyId,
    };
  }

  factory AuthenticationStrengthPolicyX509CombinationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticationStrengthPolicyX509CombinationConfigurationArgs(
      allowedIssuerSkis: (() { final guardedValue = map['allowedIssuerSkis']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedPolicyOids: (() { final guardedValue = map['allowedPolicyOids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      appliesToCombinations: pulumi.Input.fromValue((map['appliesToCombinations'] as List).cast<String>()),
      authenticationStrengthPolicyId: pulumi.Input.fromValue(map['authenticationStrengthPolicyId'] as String),
    );
  }
}
