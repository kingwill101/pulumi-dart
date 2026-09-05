// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudCustomizedAcceleratorGitRepositorySshAuth {
  /// Specifies the Public SSH Key of git repository basic auth.
  final pulumi.Input<String?>? hostKey;
  /// Specifies the SSH Key algorithm of git repository basic auth.
  final pulumi.Input<String?>? hostKeyAlgorithm;
  /// Specifies the Private SSH Key of git repository basic auth.
  final pulumi.Input<String> privateKey;

  /// Creates a new [SpringCloudCustomizedAcceleratorGitRepositorySshAuth].
  /// [hostKey] Specifies the Public SSH Key of git repository basic auth.
  /// [hostKeyAlgorithm] Specifies the SSH Key algorithm of git repository basic auth.
  /// [privateKey] Specifies the Private SSH Key of git repository basic auth.
  const SpringCloudCustomizedAcceleratorGitRepositorySshAuth({
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'privateKey': privateKey,
    };
  }

  factory SpringCloudCustomizedAcceleratorGitRepositorySshAuth.fromMap(Map<String, dynamic> map) {
    return SpringCloudCustomizedAcceleratorGitRepositorySshAuth(
      hostKey: (() { final guardedValue = map['hostKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostKeyAlgorithm: (() { final guardedValue = map['hostKeyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}
