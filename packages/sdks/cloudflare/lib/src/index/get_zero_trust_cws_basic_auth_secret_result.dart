// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_basic_auth_secret_filter.dart';

/// Result data returned by getZeroTrustCwsBasicAuthSecret.
class GetZeroTrustCwsBasicAuthSecretResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  /// ID of the parent credential
  final String? credentialId;
  /// Optional RFC 3339 expiration time. Omit for no expiration.
  final String? expiresAt;
  final GetZeroTrustCwsBasicAuthSecretFilter? filter;
  /// ID of the secret to retrieve
  final String? id;
  /// ID of the secret to retrieve
  final String? secretId;

  /// Creates a new [GetZeroTrustCwsBasicAuthSecretResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [credentialId] ID of the parent credential
  /// [expiresAt] Optional RFC 3339 expiration time. Omit for no expiration.
  /// [filter] Optional.
  /// [id] ID of the secret to retrieve
  /// [secretId] ID of the secret to retrieve
  const GetZeroTrustCwsBasicAuthSecretResult({
    this.accountId,
    this.createdAt,
    this.credentialId,
    this.expiresAt,
    this.filter,
    this.id,
    this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'credentialId': ?credentialId,
      'expiresAt': ?expiresAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'secretId': ?secretId,
    };
  }

  factory GetZeroTrustCwsBasicAuthSecretResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthSecretResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsBasicAuthSecretFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
