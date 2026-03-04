// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final pulumi.Input<String> sandboxType;

  /// Creates a new [GetClusterNodeConfigSandboxConfig].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  GetClusterNodeConfigSandboxConfig({required this.sandboxType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sandboxType': sandboxType};
  }

  factory GetClusterNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigSandboxConfig(
      sandboxType: pulumi.Input.fromValue(map['sandboxType'] as String),
    );
  }
}
