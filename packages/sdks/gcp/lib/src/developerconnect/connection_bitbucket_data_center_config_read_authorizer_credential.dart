// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionBitbucketDataCenterConfigReadAuthorizerCredential {
  /// Required. A SecretManager resource containing the user token that authorizes
  /// the Developer Connect connection. Format:
  /// `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> userTokenSecretVersion;
  /// (Output)
  /// Output only. The username associated with this token.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionBitbucketDataCenterConfigReadAuthorizerCredential].
  /// [userTokenSecretVersion] Required. A SecretManager resource containing the user token that authorizes
  /// [username] (Output)
  ConnectionBitbucketDataCenterConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userTokenSecretVersion': userTokenSecretVersion,
      'username': ?username,
    };
  }

  factory ConnectionBitbucketDataCenterConfigReadAuthorizerCredential.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigReadAuthorizerCredential(
      userTokenSecretVersion: (map['userTokenSecretVersion'] as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

