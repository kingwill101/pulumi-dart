// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionBitbucketCloudConfigReadAuthorizerCredential {
  /// Required. A SecretManager resource containing the user token that authorizes
  /// the Developer Connect connection. Format:
  /// `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> userTokenSecretVersion;
  /// (Output)
  /// Output only. The username associated with this token.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionBitbucketCloudConfigReadAuthorizerCredential].
  /// [userTokenSecretVersion] Required. A SecretManager resource containing the user token that authorizes
  /// [username] (Output)
  const ConnectionBitbucketCloudConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userTokenSecretVersion': userTokenSecretVersion,
      'username': ?username,
    };
  }

  factory ConnectionBitbucketCloudConfigReadAuthorizerCredential.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketCloudConfigReadAuthorizerCredential(
      userTokenSecretVersion: pulumi.Input.fromValue(map['userTokenSecretVersion'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
