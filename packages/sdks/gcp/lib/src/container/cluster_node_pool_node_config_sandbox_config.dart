// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigSandboxConfig {
  /// Which sandbox to use for pods in the node pool.
  /// Accepted values are:
  ///
  /// * `"gvisor"`: Pods run within a gVisor sandbox.
  final pulumi.Input<String> sandboxType;

  /// Creates a new [ClusterNodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Which sandbox to use for pods in the node pool.
  ClusterNodePoolNodeConfigSandboxConfig({required this.sandboxType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sandboxType': sandboxType};
  }

  factory ClusterNodePoolNodeConfigSandboxConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigSandboxConfig(
      sandboxType: pulumi.Input.fromValue(map['sandboxType'] as String),
    );
  }
}
