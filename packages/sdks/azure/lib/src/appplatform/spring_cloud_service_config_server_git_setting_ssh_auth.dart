// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudServiceConfigServerGitSettingSshAuth {
  /// The host key of the Git repository server, should not include the algorithm prefix as covered by `host-key-algorithm`.
  final String? hostKey;
  /// The host key algorithm, should be `ssh-dss`, `ssh-rsa`, `ecdsa-sha2-nistp256`, `ecdsa-sha2-nistp384`, or `ecdsa-sha2-nistp521`. Required only if `host-key` exists.
  final String? hostKeyAlgorithm;
  /// The SSH private key to access the Git repository, required when the URI starts with `git@` or `ssh://`.
  final String privateKey;
  /// Indicates whether the Config Server instance will fail to start if the host_key does not match. Defaults to `true`.
  final bool? strictHostKeyCheckingEnabled;

  /// Creates a new [SpringCloudServiceConfigServerGitSettingSshAuth].
  /// [hostKey] The host key of the Git repository server, should not include the algorithm prefix as covered by `host-key-algorithm`.
  /// [hostKeyAlgorithm] The host key algorithm, should be `ssh-dss`, `ssh-rsa`, `ecdsa-sha2-nistp256`, `ecdsa-sha2-nistp384`, or `ecdsa-sha2-nistp521`. Required only if `host-key` exists.
  /// [privateKey] The SSH private key to access the Git repository, required when the URI starts with `git@` or `ssh://`.
  /// [strictHostKeyCheckingEnabled] Indicates whether the Config Server instance will fail to start if the host_key does not match. Defaults to `true`.
  SpringCloudServiceConfigServerGitSettingSshAuth({
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
      hostKey: map['hostKey'] == null ? null : map['hostKey'] as String,
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : map['hostKeyAlgorithm'] as String,
      privateKey: map['privateKey'] as String,
      strictHostKeyCheckingEnabled: map['strictHostKeyCheckingEnabled'] == null ? null : map['strictHostKeyCheckingEnabled'] as bool,
    );
  }
}

