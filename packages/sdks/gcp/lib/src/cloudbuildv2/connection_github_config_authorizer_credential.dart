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
  const ConnectionGithubConfigAuthorizerCredential({
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
      oauthTokenSecretVersion: (() { final guardedValue = map['oauthTokenSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

