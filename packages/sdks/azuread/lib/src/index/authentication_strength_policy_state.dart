// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthenticationStrengthPolicy resources.
class AuthenticationStrengthPolicyState {
  /// List of allowed authentication methods for this authentication strength policy.
  final pulumi.Input<List<String>>? allowedCombinations;
  /// The description for this authentication strength policy.
  final pulumi.Input<String>? description;
  /// The friendly name for this authentication strength policy.
  final pulumi.Input<String>? displayName;

  /// Creates a new [AuthenticationStrengthPolicyState].
  /// [allowedCombinations] List of allowed authentication methods for this authentication strength policy.
  /// [description] The description for this authentication strength policy.
  /// [displayName] The friendly name for this authentication strength policy.
  const AuthenticationStrengthPolicyState({
    this.allowedCombinations,
    this.description,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCombinations': ?allowedCombinations,
      'description': ?description,
      'displayName': ?displayName,
    };
  }

  factory AuthenticationStrengthPolicyState.fromMap(Map<String, dynamic> map) {
    return AuthenticationStrengthPolicyState(
      allowedCombinations: (() { final guardedValue = map['allowedCombinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

