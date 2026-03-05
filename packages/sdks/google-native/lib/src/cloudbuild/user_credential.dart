// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a personal access token that authorized the Connection, and associated metadata.
class UserCredential {
  /// A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> userTokenSecretVersion;

  /// Creates a new [UserCredential].
  /// [userTokenSecretVersion] A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  UserCredential({
    required this.userTokenSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userTokenSecretVersion': userTokenSecretVersion,
    };
  }

  factory UserCredential.fromMap(Map<String, dynamic> map) {
    return UserCredential(
      userTokenSecretVersion: pulumi.Input.fromValue(map['userTokenSecretVersion'] as String),
    );
  }
}

