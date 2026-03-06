// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final pulumi.Input<String> sandboxType;

  /// Creates a new [NodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  const NodePoolNodeConfigSandboxConfig({
    required this.sandboxType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sandboxType': sandboxType,
    };
  }

  factory NodePoolNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigSandboxConfig(
      sandboxType: pulumi.Input.fromValue(map['sandboxType'] as String),
    );
  }
}

