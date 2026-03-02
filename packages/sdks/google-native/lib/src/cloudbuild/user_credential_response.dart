// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a personal access token that authorized the Connection, and associated metadata.
class UserCredentialResponse {
  /// A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> userTokenSecretVersion;
  /// The username associated to this token.
  final pulumi.Input<String> username;

  /// Creates a new [UserCredentialResponse].
  /// [userTokenSecretVersion] A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  /// [username] The username associated to this token.
  UserCredentialResponse({
    required this.userTokenSecretVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userTokenSecretVersion': userTokenSecretVersion,
      'username': username,
    };
  }

  factory UserCredentialResponse.fromMap(Map<String, dynamic> map) {
    return UserCredentialResponse(
      userTokenSecretVersion: (map['userTokenSecretVersion'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

