// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceConfigServerGitSettingSshAuth {
  /// The host key of the Git repository server, should not include the algorithm prefix as covered by `host-key-algorithm`.
  final pulumi.Input<String>? hostKey;
  /// The host key algorithm, should be `ssh-dss`, `ssh-rsa`, `ecdsa-sha2-nistp256`, `ecdsa-sha2-nistp384`, or `ecdsa-sha2-nistp521`. Required only if `host-key` exists.
  final pulumi.Input<String>? hostKeyAlgorithm;
  /// The SSH private key to access the Git repository, required when the URI starts with `git@` or `ssh://`.
  final pulumi.Input<String> privateKey;
  /// Indicates whether the Config Server instance will fail to start if the host_key does not match. Defaults to `true`.
  final pulumi.Input<bool>? strictHostKeyCheckingEnabled;

  /// Creates a new [SpringCloudServiceConfigServerGitSettingSshAuth].
  /// [hostKey] The host key of the Git repository server, should not include the algorithm prefix as covered by `host-key-algorithm`.
  /// [hostKeyAlgorithm] The host key algorithm, should be `ssh-dss`, `ssh-rsa`, `ecdsa-sha2-nistp256`, `ecdsa-sha2-nistp384`, or `ecdsa-sha2-nistp521`. Required only if `host-key` exists.
  /// [privateKey] The SSH private key to access the Git repository, required when the URI starts with `git@` or `ssh://`.
  /// [strictHostKeyCheckingEnabled] Indicates whether the Config Server instance will fail to start if the host_key does not match. Defaults to `true`.
  const SpringCloudServiceConfigServerGitSettingSshAuth({
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.privateKey,
    this.strictHostKeyCheckingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'privateKey': privateKey,
      'strictHostKeyCheckingEnabled': ?strictHostKeyCheckingEnabled,
    };
  }

  factory SpringCloudServiceConfigServerGitSettingSshAuth.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceConfigServerGitSettingSshAuth(
      hostKey: (() { final guardedValue = map['hostKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostKeyAlgorithm: (() { final guardedValue = map['hostKeyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      strictHostKeyCheckingEnabled: (() { final guardedValue = map['strictHostKeyCheckingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

