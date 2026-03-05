// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username and password credentials.
class UsernamePasswordCredentialsResponse {
  /// The Secret Manager key version that holds the password to access the remote repository. Must be in the format of `projects/{project}/secrets/{secret}/versions/{version}`.
  final pulumi.Input<String> passwordSecretVersion;
  /// The username to access the remote repository.
  final pulumi.Input<String> username;

  /// Creates a new [UsernamePasswordCredentialsResponse].
  /// [passwordSecretVersion] The Secret Manager key version that holds the password to access the remote repository. Must be in the format of `projects/{project}/secrets/{secret}/versions/{version}`.
  /// [username] The username to access the remote repository.
  UsernamePasswordCredentialsResponse({
    required this.passwordSecretVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretVersion': passwordSecretVersion,
      'username': username,
    };
  }

  factory UsernamePasswordCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return UsernamePasswordCredentialsResponse(
      passwordSecretVersion: pulumi.Input.fromValue(map['passwordSecretVersion'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

