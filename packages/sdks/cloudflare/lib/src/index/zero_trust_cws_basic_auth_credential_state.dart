// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsBasicAuthCredential resources.
class ZeroTrustCwsBasicAuthCredentialState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? updatedAt;
  /// Login presented by the client. Printable ASCII only, excluding space and colon.
  final pulumi.Input<String?>? username;

  /// Creates a new [ZeroTrustCwsBasicAuthCredentialState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [updatedAt] Optional.
  /// [username] Login presented by the client. Printable ASCII only, excluding space and colon.
  const ZeroTrustCwsBasicAuthCredentialState({
    this.accountId,
    this.createdAt,
    this.updatedAt,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'updatedAt': ?updatedAt,
      'username': ?username,
    };
  }

  factory ZeroTrustCwsBasicAuthCredentialState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsBasicAuthCredentialState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
