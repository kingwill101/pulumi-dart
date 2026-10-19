// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_authentication_strength_policy_fido2_combination_configuration_authentication_strength_policy_fido2_combination_configuration_args_doc}
/// The set of arguments for AuthenticationStrengthPolicyFido2CombinationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_authentication_strength_policy_fido2_combination_configuration_authentication_strength_policy_fido2_combination_configuration_args_doc}
class AuthenticationStrengthPolicyFido2CombinationConfigurationArgs {
  /// A set of Authenticator Attestation GUIDs (AAGUIDs) allowed to satisfy the `fido2` combination.
  final pulumi.Input<List<String>> allowedAaguids;
  /// The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  ///
  /// &gt; The associated authentication strength policy must specify `fido2` in its `allowedCombinations`, otherwise the API rejects the combination configuration.
  final pulumi.Input<String> authenticationStrengthPolicyId;

  /// Creates a new [AuthenticationStrengthPolicyFido2CombinationConfigurationArgs].
  /// [allowedAaguids] A set of Authenticator Attestation GUIDs (AAGUIDs) allowed to satisfy the `fido2` combination.
  /// [authenticationStrengthPolicyId] The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  const AuthenticationStrengthPolicyFido2CombinationConfigurationArgs({
    required this.allowedAaguids,
    required this.authenticationStrengthPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAaguids': allowedAaguids,
      'authenticationStrengthPolicyId': authenticationStrengthPolicyId,
    };
  }

  factory AuthenticationStrengthPolicyFido2CombinationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticationStrengthPolicyFido2CombinationConfigurationArgs(
      allowedAaguids: pulumi.Input.fromValue((map['allowedAaguids'] as List).cast<String>()),
      authenticationStrengthPolicyId: pulumi.Input.fromValue(map['authenticationStrengthPolicyId'] as String),
    );
  }
}
