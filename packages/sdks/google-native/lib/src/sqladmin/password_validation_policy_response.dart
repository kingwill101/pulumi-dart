// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database instance local user password validation policy
class PasswordValidationPolicyResponse {
  /// The complexity of the password.
  final pulumi.Input<String> complexity;
  /// Disallow credentials that have been previously compromised by a public data breach.
  final pulumi.Input<bool> disallowCompromisedCredentials;
  /// Disallow username as a part of the password.
  final pulumi.Input<bool> disallowUsernameSubstring;
  /// Whether the password policy is enabled or not.
  final pulumi.Input<bool> enablePasswordPolicy;
  /// Minimum number of characters allowed.
  final pulumi.Input<int> minLength;
  /// Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  final pulumi.Input<String> passwordChangeInterval;
  /// Number of previous passwords that cannot be reused.
  final pulumi.Input<int> reuseInterval;

  /// Creates a new [PasswordValidationPolicyResponse].
  /// [complexity] The complexity of the password.
  /// [disallowCompromisedCredentials] Disallow credentials that have been previously compromised by a public data breach.
  /// [disallowUsernameSubstring] Disallow username as a part of the password.
  /// [enablePasswordPolicy] Whether the password policy is enabled or not.
  /// [minLength] Minimum number of characters allowed.
  /// [passwordChangeInterval] Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  /// [reuseInterval] Number of previous passwords that cannot be reused.
  const PasswordValidationPolicyResponse({
    required this.complexity,
    required this.disallowCompromisedCredentials,
    required this.disallowUsernameSubstring,
    required this.enablePasswordPolicy,
    required this.minLength,
    required this.passwordChangeInterval,
    required this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexity': complexity,
      'disallowCompromisedCredentials': disallowCompromisedCredentials,
      'disallowUsernameSubstring': disallowUsernameSubstring,
      'enablePasswordPolicy': enablePasswordPolicy,
      'minLength': minLength,
      'passwordChangeInterval': passwordChangeInterval,
      'reuseInterval': reuseInterval,
    };
  }

  factory PasswordValidationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PasswordValidationPolicyResponse(
      complexity: pulumi.Input.fromValue(map['complexity'] as String),
      disallowCompromisedCredentials: pulumi.Input.fromValue(map['disallowCompromisedCredentials'] as bool),
      disallowUsernameSubstring: pulumi.Input.fromValue(map['disallowUsernameSubstring'] as bool),
      enablePasswordPolicy: pulumi.Input.fromValue(map['enablePasswordPolicy'] as bool),
      minLength: pulumi.Input.fromValue(map['minLength'] as int),
      passwordChangeInterval: pulumi.Input.fromValue(map['passwordChangeInterval'] as String),
      reuseInterval: pulumi.Input.fromValue(map['reuseInterval'] as int),
    );
  }
}
