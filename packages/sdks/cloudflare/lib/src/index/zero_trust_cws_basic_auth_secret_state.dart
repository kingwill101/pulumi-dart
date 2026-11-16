// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsBasicAuthSecret resources.
class ZeroTrustCwsBasicAuthSecretState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// ID of the parent credential
  final pulumi.Input<String?>? credentialId;
  /// Optional deactivation deadline (RFC 3339). Omit or null for no expiry.
  final pulumi.Input<String?>? expiresAt;
  /// Password stored only as a one-way hash and never returned. Maximum 72 UTF-8 bytes.
  final pulumi.Input<String?>? password;

  /// Creates a new [ZeroTrustCwsBasicAuthSecretState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [credentialId] ID of the parent credential
  /// [expiresAt] Optional deactivation deadline (RFC 3339). Omit or null for no expiry.
  /// [password] Password stored only as a one-way hash and never returned. Maximum 72 UTF-8 bytes.
  const ZeroTrustCwsBasicAuthSecretState({
    this.accountId,
    this.createdAt,
    this.credentialId,
    this.expiresAt,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'credentialId': ?credentialId,
      'expiresAt': ?expiresAt,
      'password': ?password,
    };
  }

  factory ZeroTrustCwsBasicAuthSecretState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsBasicAuthSecretState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
