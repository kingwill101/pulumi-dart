// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an OAuth token of the account that authorized the Connection, and associated metadata.
class OAuthCredentialResponse {
  /// A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> oauthTokenSecretVersion;
  /// The username associated to this token.
  final pulumi.Input<String> username;

  /// Creates a new [OAuthCredentialResponse].
  /// [oauthTokenSecretVersion] A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  /// [username] The username associated to this token.
  OAuthCredentialResponse({
    required this.oauthTokenSecretVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthTokenSecretVersion': oauthTokenSecretVersion,
      'username': username,
    };
  }

  factory OAuthCredentialResponse.fromMap(Map<String, dynamic> map) {
    return OAuthCredentialResponse(
      oauthTokenSecretVersion: (map['oauthTokenSecretVersion'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

