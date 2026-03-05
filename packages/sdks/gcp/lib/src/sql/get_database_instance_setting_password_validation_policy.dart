// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingPasswordValidationPolicy {
  /// Password complexity.
  final pulumi.Input<String> complexity;
  /// Disallow username as a part of the password.
  final pulumi.Input<bool> disallowUsernameSubstring;
  /// Whether the password policy is enabled or not.
  final pulumi.Input<bool> enablePasswordPolicy;
  /// Minimum number of characters allowed.
  final pulumi.Input<int> minLength;
  /// Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL.
  final pulumi.Input<String> passwordChangeInterval;
  /// Number of previous passwords that cannot be reused.
  final pulumi.Input<int> reuseInterval;

  /// Creates a new [GetDatabaseInstanceSettingPasswordValidationPolicy].
  /// [complexity] Password complexity.
  /// [disallowUsernameSubstring] Disallow username as a part of the password.
  /// [enablePasswordPolicy] Whether the password policy is enabled or not.
  /// [minLength] Minimum number of characters allowed.
  /// [passwordChangeInterval] Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL.
  /// [reuseInterval] Number of previous passwords that cannot be reused.
  GetDatabaseInstanceSettingPasswordValidationPolicy({
    required this.complexity,
    required this.disallowUsernameSubstring,
    required this.enablePasswordPolicy,
    required this.minLength,
    required this.passwordChangeInterval,
    required this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexity': complexity,
      'disallowUsernameSubstring': disallowUsernameSubstring,
      'enablePasswordPolicy': enablePasswordPolicy,
      'minLength': minLength,
      'passwordChangeInterval': passwordChangeInterval,
      'reuseInterval': reuseInterval,
    };
  }

  factory GetDatabaseInstanceSettingPasswordValidationPolicy.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingPasswordValidationPolicy(
      complexity: pulumi.Input.fromValue(map['complexity'] as String),
      disallowUsernameSubstring: pulumi.Input.fromValue(map['disallowUsernameSubstring'] as bool),
      enablePasswordPolicy: pulumi.Input.fromValue(map['enablePasswordPolicy'] as bool),
      minLength: pulumi.Input.fromValue(map['minLength'] as int),
      passwordChangeInterval: pulumi.Input.fromValue(map['passwordChangeInterval'] as String),
      reuseInterval: pulumi.Input.fromValue(map['reuseInterval'] as int),
    );
  }
}

