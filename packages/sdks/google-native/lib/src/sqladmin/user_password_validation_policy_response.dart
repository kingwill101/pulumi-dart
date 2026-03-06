// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'password_status_response.dart';

/// User level password validation policy.
class UserPasswordValidationPolicyResponse {
  /// Number of failed login attempts allowed before user get locked.
  final pulumi.Input<int> allowedFailedAttempts;
  /// If true, failed login attempts check will be enabled.
  final pulumi.Input<bool> enableFailedAttemptsCheck;
  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final pulumi.Input<bool> enablePasswordVerification;
  /// Expiration duration after password is updated.
  final pulumi.Input<String> passwordExpirationDuration;
  /// Read-only password status.
  final pulumi.Input<PasswordStatusResponse> status;

  /// Creates a new [UserPasswordValidationPolicyResponse].
  /// [allowedFailedAttempts] Number of failed login attempts allowed before user get locked.
  /// [enableFailedAttemptsCheck] If true, failed login attempts check will be enabled.
  /// [enablePasswordVerification] If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  /// [passwordExpirationDuration] Expiration duration after password is updated.
  /// [status] Read-only password status.
  const UserPasswordValidationPolicyResponse({
    required this.allowedFailedAttempts,
    required this.enableFailedAttemptsCheck,
    required this.enablePasswordVerification,
    required this.passwordExpirationDuration,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFailedAttempts': allowedFailedAttempts,
      'enableFailedAttemptsCheck': enableFailedAttemptsCheck,
      'enablePasswordVerification': enablePasswordVerification,
      'passwordExpirationDuration': passwordExpirationDuration,
      'status': pulumi.Input.mapInputValue<PasswordStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory UserPasswordValidationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return UserPasswordValidationPolicyResponse(
      allowedFailedAttempts: pulumi.Input.fromValue(map['allowedFailedAttempts'] as int),
      enableFailedAttemptsCheck: pulumi.Input.fromValue(map['enableFailedAttemptsCheck'] as bool),
      enablePasswordVerification: pulumi.Input.fromValue(map['enablePasswordVerification'] as bool),
      passwordExpirationDuration: pulumi.Input.fromValue(map['passwordExpirationDuration'] as String),
      status: pulumi.Input.fromValue(PasswordStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}

