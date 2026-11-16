// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_basic_auth_secret_zero_trust_cws_basic_auth_secret_args_doc}
/// The set of arguments for ZeroTrustCwsBasicAuthSecret.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_basic_auth_secret_zero_trust_cws_basic_auth_secret_args_doc}
class ZeroTrustCwsBasicAuthSecretArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// ID of the parent credential
  final pulumi.Input<String> credentialId;
  /// Optional deactivation deadline (RFC 3339). Omit or null for no expiry.
  final pulumi.Input<String?>? expiresAt;
  /// Password stored only as a one-way hash and never returned. Maximum 72 UTF-8 bytes.
  final pulumi.Input<String?>? password;

  /// Creates a new [ZeroTrustCwsBasicAuthSecretArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [credentialId] ID of the parent credential
  /// [expiresAt] Optional deactivation deadline (RFC 3339). Omit or null for no expiry.
  /// [password] Password stored only as a one-way hash and never returned. Maximum 72 UTF-8 bytes.
  const ZeroTrustCwsBasicAuthSecretArgs({
    required this.accountId,
    required this.credentialId,
    this.expiresAt,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'credentialId': credentialId,
      'expiresAt': ?expiresAt,
      'password': ?password,
    };
  }

  factory ZeroTrustCwsBasicAuthSecretArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsBasicAuthSecretArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      credentialId: pulumi.Input.fromValue(map['credentialId'] as String),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
