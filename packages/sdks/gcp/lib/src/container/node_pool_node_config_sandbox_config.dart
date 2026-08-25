// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor'). Deprecated in favor of type.
  final pulumi.Input<String?>? sandboxType;
  /// Type of the sandbox to use for the node (e.g. 'GVISOR').
  final pulumi.Input<String?>? type;

  /// Creates a new [NodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor'). Deprecated in favor of type.
  /// [type] Type of the sandbox to use for the node (e.g. 'GVISOR').
  const NodePoolNodeConfigSandboxConfig({
    this.sandboxType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sandboxType': ?sandboxType,
      'type': ?type,
    };
  }

  factory NodePoolNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigSandboxConfig(
      sandboxType: (() { final guardedValue = map['sandboxType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
