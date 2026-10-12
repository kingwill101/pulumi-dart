// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthenticationStrengthPolicyFido2CombinationConfiguration resources.
class AuthenticationStrengthPolicyFido2CombinationConfigurationState {
  /// A set of Authenticator Attestation GUIDs (AAGUIDs) allowed to satisfy the `fido2` combination.
  final pulumi.Input<List<String>?>? allowedAaguids;
  /// The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  ///
  /// &gt; The associated authentication strength policy must specify `fido2` in its `allowedCombinations`, otherwise the API rejects the combination configuration.
  final pulumi.Input<String?>? authenticationStrengthPolicyId;

  /// Creates a new [AuthenticationStrengthPolicyFido2CombinationConfigurationState].
  /// [allowedAaguids] A set of Authenticator Attestation GUIDs (AAGUIDs) allowed to satisfy the `fido2` combination.
  /// [authenticationStrengthPolicyId] The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  const AuthenticationStrengthPolicyFido2CombinationConfigurationState({
    this.allowedAaguids,
    this.authenticationStrengthPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAaguids': ?allowedAaguids,
      'authenticationStrengthPolicyId': ?authenticationStrengthPolicyId,
    };
  }

  factory AuthenticationStrengthPolicyFido2CombinationConfigurationState.fromMap(Map<String, dynamic> map) {
    return AuthenticationStrengthPolicyFido2CombinationConfigurationState(
      allowedAaguids: (() { final guardedValue = map['allowedAaguids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authenticationStrengthPolicyId: (() { final guardedValue = map['authenticationStrengthPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
