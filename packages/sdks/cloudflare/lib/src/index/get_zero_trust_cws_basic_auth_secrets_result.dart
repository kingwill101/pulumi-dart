// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsBasicAuthSecretsResult {
  final pulumi.Input<String> createdAt;
  /// Optional RFC 3339 expiration time. Omit for no expiration.
  final pulumi.Input<String> expiresAt;
  /// Server-assigned UUID
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustCwsBasicAuthSecretsResult].
  /// [createdAt] Required.
  /// [expiresAt] Optional RFC 3339 expiration time. Omit for no expiration.
  /// [id] Server-assigned UUID
  const GetZeroTrustCwsBasicAuthSecretsResult({
    required this.createdAt,
    required this.expiresAt,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'expiresAt': expiresAt,
      'id': id,
    };
  }

  factory GetZeroTrustCwsBasicAuthSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthSecretsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
