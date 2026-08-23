// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User level password validation policy.
class UserPasswordValidationPolicy {
  /// Number of failed login attempts allowed before user get locked.
  final pulumi.Input<int>? allowedFailedAttempts;
  /// If true, failed login attempts check will be enabled.
  final pulumi.Input<bool>? enableFailedAttemptsCheck;
  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final pulumi.Input<bool>? enablePasswordVerification;
  /// Expiration duration after password is updated.
  final pulumi.Input<String>? passwordExpirationDuration;

  /// Creates a new [UserPasswordValidationPolicy].
  /// [allowedFailedAttempts] Number of failed login attempts allowed before user get locked.
  /// [enableFailedAttemptsCheck] If true, failed login attempts check will be enabled.
  /// [enablePasswordVerification] If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  /// [passwordExpirationDuration] Expiration duration after password is updated.
  const UserPasswordValidationPolicy({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.enablePasswordVerification,
    this.passwordExpirationDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFailedAttempts': ?allowedFailedAttempts,
      'enableFailedAttemptsCheck': ?enableFailedAttemptsCheck,
      'enablePasswordVerification': ?enablePasswordVerification,
      'passwordExpirationDuration': ?passwordExpirationDuration,
    };
  }

  factory UserPasswordValidationPolicy.fromMap(Map<String, dynamic> map) {
    return UserPasswordValidationPolicy(
      allowedFailedAttempts: (() { final guardedValue = map['allowedFailedAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableFailedAttemptsCheck: (() { final guardedValue = map['enableFailedAttemptsCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePasswordVerification: (() { final guardedValue = map['enablePasswordVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      passwordExpirationDuration: (() { final guardedValue = map['passwordExpirationDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
