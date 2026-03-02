// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpringCloudServiceConfigServerGitSettingSshAuth {
  /// The host key of the Git repository server.
  final pulumi.Input<String> hostKey;
  /// The host key algorithm.
  final pulumi.Input<String> hostKeyAlgorithm;
  /// The SSH private key to access the Git repository, needed when the URI starts with `git@` or `ssh://`.
  final pulumi.Input<String> privateKey;
  /// Indicates whether the Config Server instance will fail to start if the host_key does not match.
  final pulumi.Input<bool> strictHostKeyCheckingEnabled;

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
      hostKey: (map['hostKey'] as String).input(),
      hostKeyAlgorithm: (map['hostKeyAlgorithm'] as String).input(),
      privateKey: (map['privateKey'] as String).input(),
      strictHostKeyCheckingEnabled: (map['strictHostKeyCheckingEnabled'] as bool).input(),
    );
  }
}

