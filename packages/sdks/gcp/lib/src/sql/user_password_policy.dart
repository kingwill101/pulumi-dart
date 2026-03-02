// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_password_policy_status.dart';

class UserPasswordPolicy {
  /// Number of failed attempts allowed before the user get locked.
  final pulumi.Input<int>? allowedFailedAttempts;
  /// If true, the check that will lock user after too many failed login attempts will be enabled.
  final pulumi.Input<bool>? enableFailedAttemptsCheck;
  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final pulumi.Input<bool>? enablePasswordVerification;
  /// Password expiration duration with one week grace period.
  final pulumi.Input<String>? passwordExpirationDuration;
  final pulumi.Input<List<UserPasswordPolicyStatus>>? statuses;

  /// Creates a new [UserPasswordPolicy].
  /// [allowedFailedAttempts] Number of failed attempts allowed before the user get locked.
  /// [enableFailedAttemptsCheck] If true, the check that will lock user after too many failed login attempts will be enabled.
  /// [enablePasswordVerification] If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  /// [passwordExpirationDuration] Password expiration duration with one week grace period.
  /// [statuses] Optional.
  UserPasswordPolicy({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.enablePasswordVerification,
    this.passwordExpirationDuration,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFailedAttempts': ?allowedFailedAttempts,
      'enableFailedAttemptsCheck': ?enableFailedAttemptsCheck,
      'enablePasswordVerification': ?enablePasswordVerification,
      'passwordExpirationDuration': ?passwordExpirationDuration,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<UserPasswordPolicyStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<UserPasswordPolicyStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserPasswordPolicy.fromMap(Map<String, dynamic> map) {
    return UserPasswordPolicy(
      allowedFailedAttempts: map['allowedFailedAttempts'] == null ? null : (map['allowedFailedAttempts']! as int).input(),
      enableFailedAttemptsCheck: map['enableFailedAttemptsCheck'] == null ? null : (map['enableFailedAttemptsCheck']! as bool).input(),
      enablePasswordVerification: map['enablePasswordVerification'] == null ? null : (map['enablePasswordVerification']! as bool).input(),
      passwordExpirationDuration: map['passwordExpirationDuration'] == null ? null : (map['passwordExpirationDuration']! as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<UserPasswordPolicyStatus>(map['statuses']!, (value) => UserPasswordPolicyStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

