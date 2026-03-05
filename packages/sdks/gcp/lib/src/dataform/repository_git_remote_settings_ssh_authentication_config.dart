// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryGitRemoteSettingsSshAuthenticationConfig {
  /// Content of a public SSH key to verify an identity of a remote Git host.
  final pulumi.Input<String> hostPublicKey;
  /// The name of the Secret Manager secret version to use as a ssh private key for Git operations. Must be in the format projects/*/secrets/*/versions/*.
  final pulumi.Input<String> userPrivateKeySecretVersion;

  /// Creates a new [RepositoryGitRemoteSettingsSshAuthenticationConfig].
  /// [hostPublicKey] Content of a public SSH key to verify an identity of a remote Git host.
  /// [userPrivateKeySecretVersion] The name of the Secret Manager secret version to use as a ssh private key for Git operations. Must be in the format projects/*/secrets/*/versions/*.
  RepositoryGitRemoteSettingsSshAuthenticationConfig({
    required this.hostPublicKey,
    required this.userPrivateKeySecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPublicKey': hostPublicKey,
      'userPrivateKeySecretVersion': userPrivateKeySecretVersion,
    };
  }

  factory RepositoryGitRemoteSettingsSshAuthenticationConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryGitRemoteSettingsSshAuthenticationConfig(
      hostPublicKey: pulumi.Input.fromValue(map['hostPublicKey'] as String),
      userPrivateKeySecretVersion: pulumi.Input.fromValue(map['userPrivateKeySecretVersion'] as String),
    );
  }
}

