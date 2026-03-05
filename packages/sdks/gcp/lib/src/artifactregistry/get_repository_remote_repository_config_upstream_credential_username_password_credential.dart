// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential {
  /// The Secret Manager key version that holds the password to access the
  /// remote repository. Must be in the format of
  /// 'projects/{project}/secrets/{secret}/versions/{version}'.
  final pulumi.Input<String> passwordSecretVersion;
  /// The username to access the remote repository.
  final pulumi.Input<String> username;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential].
  /// [passwordSecretVersion] The Secret Manager key version that holds the password to access the
  /// [username] The username to access the remote repository.
  GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential({
    required this.passwordSecretVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretVersion': passwordSecretVersion,
      'username': username,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential(
      passwordSecretVersion: pulumi.Input.fromValue(map['passwordSecretVersion'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

