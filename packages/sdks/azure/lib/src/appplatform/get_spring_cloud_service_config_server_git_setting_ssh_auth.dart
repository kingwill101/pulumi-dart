// ignore_for_file: unused_element, unnecessary_cast


class GetSpringCloudServiceConfigServerGitSettingSshAuth {
  /// The host key of the Git repository server.
  final String hostKey;
  /// The host key algorithm.
  final String hostKeyAlgorithm;
  /// The SSH private key to access the Git repository, needed when the URI starts with `git@` or `ssh://`.
  final String privateKey;
  /// Indicates whether the Config Server instance will fail to start if the host_key does not match.
  final bool strictHostKeyCheckingEnabled;

  /// Creates a new [GetSpringCloudServiceConfigServerGitSettingSshAuth].
  /// [hostKey] The host key of the Git repository server.
  /// [hostKeyAlgorithm] The host key algorithm.
  /// [privateKey] The SSH private key to access the Git repository, needed when the URI starts with `git@` or `ssh://`.
  /// [strictHostKeyCheckingEnabled] Indicates whether the Config Server instance will fail to start if the host_key does not match.
  GetSpringCloudServiceConfigServerGitSettingSshAuth({
    required this.hostKey,
    required this.hostKeyAlgorithm,
    required this.privateKey,
    required this.strictHostKeyCheckingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostKey': hostKey,
      'hostKeyAlgorithm': hostKeyAlgorithm,
      'privateKey': privateKey,
      'strictHostKeyCheckingEnabled': strictHostKeyCheckingEnabled,
    };
  }

  factory GetSpringCloudServiceConfigServerGitSettingSshAuth.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceConfigServerGitSettingSshAuth(
      hostKey: map['hostKey'] as String,
      hostKeyAlgorithm: map['hostKeyAlgorithm'] as String,
      privateKey: map['privateKey'] as String,
      strictHostKeyCheckingEnabled: map['strictHostKeyCheckingEnabled'] as bool,
    );
  }
}

