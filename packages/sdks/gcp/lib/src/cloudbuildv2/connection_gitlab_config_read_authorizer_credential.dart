// ignore_for_file: unused_element, unnecessary_cast


class ConnectionGitlabConfigReadAuthorizerCredential {
  /// Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final String userTokenSecretVersion;
  /// (Output)
  /// Output only. The username associated to this token.
  final String? username;

  /// Creates a new [ConnectionGitlabConfigReadAuthorizerCredential].
  /// [userTokenSecretVersion] Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  /// [username] (Output)
  ConnectionGitlabConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userTokenSecretVersion': userTokenSecretVersion,
      'username': ?username,
    };
  }

  factory ConnectionGitlabConfigReadAuthorizerCredential.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabConfigReadAuthorizerCredential(
      userTokenSecretVersion: map['userTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

