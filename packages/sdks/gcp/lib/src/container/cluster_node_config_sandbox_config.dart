// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigSandboxConfig {
  /// Which sandbox to use for pods in the node pool. `sandbox_config.sandbox_type` is deprecated and will be removed in a future major release. Use `sandbox_config.type` instead.
  /// Accepted values are:
  ///
  /// * `"gvisor"`: Pods run within a gVisor sandbox.
  final pulumi.Input<String>? sandboxType;
  /// Which sandbox to use for pods in the node pool.
  /// Accepted values are:
  ///
  /// * `"GVISOR"`: Pods run within a gVisor sandbox.
  final pulumi.Input<String>? type;

  /// Creates a new [ClusterNodeConfigSandboxConfig].
  /// [sandboxType] Which sandbox to use for pods in the node pool. `sandbox_config.sandbox_type` is deprecated and will be removed in a future major release. Use `sandbox_config.type` instead.
  /// [type] Which sandbox to use for pods in the node pool.
  const ClusterNodeConfigSandboxConfig({
    this.sandboxType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sandboxType': ?sandboxType,
      'type': ?type,
    };
  }

  factory ClusterNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigSandboxConfig(
      sandboxType: (() { final guardedValue = map['sandboxType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
