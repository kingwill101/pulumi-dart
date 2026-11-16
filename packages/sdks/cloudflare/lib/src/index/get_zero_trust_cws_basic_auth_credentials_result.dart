// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsBasicAuthCredentialsResult {
  final pulumi.Input<String> createdAt;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  final pulumi.Input<String> updatedAt;
  /// Login presented by the client. Printable ASCII only, excluding space and colon (RFC 7617 forbids a colon in the user-id).
  final pulumi.Input<String> username;

  /// Creates a new [GetZeroTrustCwsBasicAuthCredentialsResult].
  /// [createdAt] Required.
  /// [id] Server-assigned UUID
  /// [updatedAt] Required.
  /// [username] Login presented by the client. Printable ASCII only, excluding space and colon (RFC 7617 forbids a colon in the user-id).
  const GetZeroTrustCwsBasicAuthCredentialsResult({
    required this.createdAt,
    required this.id,
    required this.updatedAt,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'updatedAt': updatedAt,
      'username': username,
    };
  }

  factory GetZeroTrustCwsBasicAuthCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthCredentialsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
