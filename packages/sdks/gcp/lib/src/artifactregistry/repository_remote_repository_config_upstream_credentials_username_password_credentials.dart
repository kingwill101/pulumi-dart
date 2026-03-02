// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials {
  /// The Secret Manager key version that holds the password to access the
  /// remote repository. Must be in the format of
  /// `projects/{project}/secrets/{secret}/versions/{version}`.
  final pulumi.Input<String>? passwordSecretVersion;
  /// The username to access the remote repository.
  final pulumi.Input<String>? username;

  /// Creates a new [RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials].
  /// [passwordSecretVersion] The Secret Manager key version that holds the password to access the
  /// [username] The username to access the remote repository.
  RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials({
    this.passwordSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretVersion': ?passwordSecretVersion,
      'username': ?username,
    };
  }

  factory RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials(
      passwordSecretVersion: map['passwordSecretVersion'] == null ? null : (map['passwordSecretVersion'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

