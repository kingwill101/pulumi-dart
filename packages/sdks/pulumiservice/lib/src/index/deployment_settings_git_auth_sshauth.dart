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
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshPrivateKey: pulumi.Input.fromValue(map['sshPrivateKey'] as String),
    );
  }
}
