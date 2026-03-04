// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an HTTP certificate challenge.
class CertHttpChallengeResponse {
  /// The URL path on which to serve the specified token to satisfy the certificate challenge.
  final pulumi.Input<String> path;

  /// The token to serve at the specified URL path to satisfy the certificate challenge.
  final pulumi.Input<String> token;

  /// Creates a new [CertHttpChallengeResponse].
  /// [path] The URL path on which to serve the specified token to satisfy the certificate challenge.
  /// [token] The token to serve at the specified URL path to satisfy the certificate challenge.
  CertHttpChallengeResponse({required this.path, required this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'token': token};
  }

  factory CertHttpChallengeResponse.fromMap(Map<String, dynamic> map) {
    return CertHttpChallengeResponse(
      path: pulumi.Input.fromValue(map['path'] as String),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
