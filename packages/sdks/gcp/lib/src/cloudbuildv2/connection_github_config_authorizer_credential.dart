// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionGithubConfigAuthorizerCredential {
  /// A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String>? oauthTokenSecretVersion;
  /// (Output)
  /// Output only. The username associated to this token.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionGithubConfigAuthorizerCredential].
  /// [oauthTokenSecretVersion] A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  /// [username] (Output)
  ConnectionGithubConfigAuthorizerCredential({
    this.oauthTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthTokenSecretVersion': ?oauthTokenSecretVersion,
      'username': ?username,
    };
  }

  factory ConnectionGithubConfigAuthorizerCredential.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubConfigAuthorizerCredential(
      oauthTokenSecretVersion: map['oauthTokenSecretVersion'] == null ? null : (map['oauthTokenSecretVersion']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

