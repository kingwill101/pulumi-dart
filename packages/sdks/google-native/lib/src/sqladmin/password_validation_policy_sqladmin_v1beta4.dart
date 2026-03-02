// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'password_validation_policy_complexity_sqladmin_v1beta4.dart';

/// Database instance local user password validation policy
class PasswordValidationPolicySqladminV1beta4 {
  /// The complexity of the password.
  final pulumi.Input<PasswordValidationPolicyComplexitySqladminV1beta4>? complexity;
  /// Disallow credentials that have been previously compromised by a public data breach.
  final pulumi.Input<bool>? disallowCompromisedCredentials;
  /// Disallow username as a part of the password.
  final pulumi.Input<bool>? disallowUsernameSubstring;
  /// Whether the password policy is enabled or not.
  final pulumi.Input<bool>? enablePasswordPolicy;
  /// Minimum number of characters allowed.
  final pulumi.Input<int>? minLength;
  /// Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  final pulumi.Input<String>? passwordChangeInterval;
  /// Number of previous passwords that cannot be reused.
  final pulumi.Input<int>? reuseInterval;

  /// Creates a new [PasswordValidationPolicySqladminV1beta4].
  /// [complexity] The complexity of the password.
  /// [disallowCompromisedCredentials] Disallow credentials that have been previously compromised by a public data breach.
  /// [disallowUsernameSubstring] Disallow username as a part of the password.
  /// [enablePasswordPolicy] Whether the password policy is enabled or not.
  /// [minLength] Minimum number of characters allowed.
  /// [passwordChangeInterval] Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  /// [reuseInterval] Number of previous passwords that cannot be reused.
  PasswordValidationPolicySqladminV1beta4({
    this.complexity,
    this.disallowCompromisedCredentials,
    this.disallowUsernameSubstring,
    this.enablePasswordPolicy,
    this.minLength,
    this.passwordChangeInterval,
    this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexity': ?pulumi.Input.mapOptionalInputValue<PasswordValidationPolicyComplexitySqladminV1beta4, String>(complexity, (value) => value.value),
      'disallowCompromisedCredentials': ?disallowCompromisedCredentials,
      'disallowUsernameSubstring': ?disallowUsernameSubstring,
      'enablePasswordPolicy': ?enablePasswordPolicy,
      'minLength': ?minLength,
      'passwordChangeInterval': ?passwordChangeInterval,
      'reuseInterval': ?reuseInterval,
    };
  }

  factory PasswordValidationPolicySqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return PasswordValidationPolicySqladminV1beta4(
      complexity: map['complexity'] == null ? null : (PasswordValidationPolicyComplexitySqladminV1beta4.fromValue(map['complexity'] as String)).input(),
      disallowCompromisedCredentials: map['disallowCompromisedCredentials'] == null ? null : (map['disallowCompromisedCredentials'] as bool).input(),
      disallowUsernameSubstring: map['disallowUsernameSubstring'] == null ? null : (map['disallowUsernameSubstring'] as bool).input(),
      enablePasswordPolicy: map['enablePasswordPolicy'] == null ? null : (map['enablePasswordPolicy'] as bool).input(),
      minLength: map['minLength'] == null ? null : (map['minLength'] as int).input(),
      passwordChangeInterval: map['passwordChangeInterval'] == null ? null : (map['passwordChangeInterval'] as String).input(),
      reuseInterval: map['reuseInterval'] == null ? null : (map['reuseInterval'] as int).input(),
    );
  }
}

