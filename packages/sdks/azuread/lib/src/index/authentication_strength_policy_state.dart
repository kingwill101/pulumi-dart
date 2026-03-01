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
  AuthenticationStrengthPolicyState({
    pulumi.Output<List<String>>? allowedCombinations,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
  }) :
      allowedCombinations = pulumi.Input.asOptionalInput<List<String>>(allowedCombinations),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCombinations': ?allowedCombinations,
      'description': ?description,
      'displayName': ?displayName,
    };
  }

  factory AuthenticationStrengthPolicyState.fromMap(Map<String, dynamic> map) {
    return AuthenticationStrengthPolicyState(
      allowedCombinations: map['allowedCombinations'] == null ? null : pulumi.Output.create<List<String>>((map['allowedCombinations'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
    );
  }
}

