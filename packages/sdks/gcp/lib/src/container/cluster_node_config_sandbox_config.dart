// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigSandboxConfig {
  /// Which sandbox to use for pods in the node pool.
  /// Accepted values are:
  ///
  /// * `"gvisor"`: Pods run within a gVisor sandbox.
  final pulumi.Input<String> sandboxType;

  /// Creates a new [ClusterNodeConfigSandboxConfig].
  /// [sandboxType] Which sandbox to use for pods in the node pool.
  const ClusterNodeConfigSandboxConfig({
    required this.sandboxType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sandboxType': sandboxType,
    };
  }

  factory ClusterNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigSandboxConfig(
      sandboxType: pulumi.Input.fromValue(map['sandboxType'] as String),
    );
  }
}

