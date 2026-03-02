// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git source settings for a deployment.
class DeploymentSettingsGitAuthSSHAuth {
  /// Optional password for SSH authentication.
  final pulumi.Input<String>? password;
  /// SSH private key.
  final pulumi.Input<String> sshPrivateKey;

  /// Creates a new [DeploymentSettingsGitAuthSSHAuth].
  /// [password] Optional password for SSH authentication.
  /// [sshPrivateKey] SSH private key.
  DeploymentSettingsGitAuthSSHAuth({
    this.password,
    required this.sshPrivateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'sshPrivateKey': sshPrivateKey,
    };
  }

  factory DeploymentSettingsGitAuthSSHAuth.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGitAuthSSHAuth(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      sshPrivateKey: (map['sshPrivateKey'] as String).input(),
    );
  }
}

