// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionGithubConfigAuthorizerCredential {
  /// Required. A SecretManager resource containing the OAuth token that authorizes
  /// the connection. Format: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> oauthTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated with this token.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionGithubConfigAuthorizerCredential].
  /// [oauthTokenSecretVersion] Required. A SecretManager resource containing the OAuth token that authorizes
  /// [username] (Output)
  ConnectionGithubConfigAuthorizerCredential({
    required this.oauthTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthTokenSecretVersion': oauthTokenSecretVersion,
      'username': ?username,
    };
  }

  factory ConnectionGithubConfigAuthorizerCredential.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionGithubConfigAuthorizerCredential(
      oauthTokenSecretVersion: pulumi.Input.fromValue(
        map['oauthTokenSecretVersion'] as String,
      ),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
