// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_basic_auth_credential_filter.dart';

/// Result data returned by getZeroTrustCwsBasicAuthCredential.
class GetZeroTrustCwsBasicAuthCredentialResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  /// ID of the credential to retrieve
  final String? credentialId;
  final GetZeroTrustCwsBasicAuthCredentialFilter? filter;
  /// ID of the credential to retrieve
  final String? id;
  final String? updatedAt;
  /// Login presented by the client. Printable ASCII only, excluding space and colon (RFC 7617 forbids a colon in the user-id).
  final String? username;

  /// Creates a new [GetZeroTrustCwsBasicAuthCredentialResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [credentialId] ID of the credential to retrieve
  /// [filter] Optional.
  /// [id] ID of the credential to retrieve
  /// [updatedAt] Optional.
  /// [username] Login presented by the client. Printable ASCII only, excluding space and colon (RFC 7617 forbids a colon in the user-id).
  const GetZeroTrustCwsBasicAuthCredentialResult({
    this.accountId,
    this.createdAt,
    this.credentialId,
    this.filter,
    this.id,
    this.updatedAt,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'credentialId': ?credentialId,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'updatedAt': ?updatedAt,
      'username': ?username,
    };
  }

  factory GetZeroTrustCwsBasicAuthCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthCredentialResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsBasicAuthCredentialFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
