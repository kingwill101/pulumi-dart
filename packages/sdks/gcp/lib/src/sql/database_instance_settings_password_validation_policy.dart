// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsPasswordValidationPolicy {
  /// Checks if the password is a combination of lowercase, uppercase, numeric, and non-alphanumeric characters.
  final pulumi.Input<String>? complexity;
  /// Prevents the use of the username in the password.
  final pulumi.Input<bool>? disallowUsernameSubstring;
  /// Enables or disable the password validation policy.
  final pulumi.Input<bool> enablePasswordPolicy;
  /// Specifies the minimum number of characters that the password must have.
  final pulumi.Input<int>? minLength;
  /// Specifies the minimum duration after which you can change the password.
  final pulumi.Input<String>? passwordChangeInterval;
  /// Specifies the number of previous passwords that you can't reuse.
  final pulumi.Input<int>? reuseInterval;

  /// Creates a new [DatabaseInstanceSettingsPasswordValidationPolicy].
  /// [complexity] Checks if the password is a combination of lowercase, uppercase, numeric, and non-alphanumeric characters.
  /// [disallowUsernameSubstring] Prevents the use of the username in the password.
  /// [enablePasswordPolicy] Enables or disable the password validation policy.
  /// [minLength] Specifies the minimum number of characters that the password must have.
  /// [passwordChangeInterval] Specifies the minimum duration after which you can change the password.
  /// [reuseInterval] Specifies the number of previous passwords that you can't reuse.
  DatabaseInstanceSettingsPasswordValidationPolicy({
    this.complexity,
    this.disallowUsernameSubstring,
    required this.enablePasswordPolicy,
    this.minLength,
    this.passwordChangeInterval,
    this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexity': ?complexity,
      'disallowUsernameSubstring': ?disallowUsernameSubstring,
      'enablePasswordPolicy': enablePasswordPolicy,
      'minLength': ?minLength,
      'passwordChangeInterval': ?passwordChangeInterval,
      'reuseInterval': ?reuseInterval,
    };
  }

  factory DatabaseInstanceSettingsPasswordValidationPolicy.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsPasswordValidationPolicy(
      complexity: map['complexity'] == null ? null : (map['complexity'] as String).input(),
      disallowUsernameSubstring: map['disallowUsernameSubstring'] == null ? null : (map['disallowUsernameSubstring'] as bool).input(),
      enablePasswordPolicy: (map['enablePasswordPolicy'] as bool).input(),
      minLength: map['minLength'] == null ? null : (map['minLength'] as int).input(),
      passwordChangeInterval: map['passwordChangeInterval'] == null ? null : (map['passwordChangeInterval'] as String).input(),
      reuseInterval: map['reuseInterval'] == null ? null : (map['reuseInterval'] as int).input(),
    );
  }
}

