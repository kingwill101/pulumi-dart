// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final pulumi.Input<String> sandboxType;

  /// Creates a new [GetClusterNodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  GetClusterNodePoolNodeConfigSandboxConfig({required this.sandboxType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sandboxType': sandboxType};
  }

  factory GetClusterNodePoolNodeConfigSandboxConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigSandboxConfig(
      sandboxType: pulumi.Input.fromValue(map['sandboxType'] as String),
    );
  }
}
