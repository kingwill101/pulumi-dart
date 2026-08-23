// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor'). Deprecated in favor of type.
  final pulumi.Input<String> sandboxType;
  /// Type of the sandbox to use for the node (e.g. 'GVISOR').
  final pulumi.Input<String> type;

  /// Creates a new [GetClusterNodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor'). Deprecated in favor of type.
  /// [type] Type of the sandbox to use for the node (e.g. 'GVISOR').
  const GetClusterNodePoolNodeConfigSandboxConfig({
    required this.sandboxType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sandboxType': sandboxType,
      'type': type,
    };
  }

  factory GetClusterNodePoolNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigSandboxConfig(
      sandboxType: pulumi.Input.fromValue(map['sandboxType'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
