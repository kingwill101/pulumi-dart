// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigTaintConfig {
  /// The taint behavior to be applied to the nodes based on the architecture.
  /// Accepted values are:
  /// * `ARCHITECTURE_TAINT_BEHAVIOR_UNSPECIFIED`: Default value. This should not be used.
  /// * `NONE`: Do not apply any taints based on architecture.
  /// * `ARM`: Apply ARM taint to the nodes.
  final pulumi.Input<String> architectureTaintBehavior;

  /// Creates a new [NodePoolNodeConfigTaintConfig].
  /// [architectureTaintBehavior] The taint behavior to be applied to the nodes based on the architecture.
  const NodePoolNodeConfigTaintConfig({
    required this.architectureTaintBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectureTaintBehavior': architectureTaintBehavior,
    };
  }

  factory NodePoolNodeConfigTaintConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigTaintConfig(
      architectureTaintBehavior: pulumi.Input.fromValue(map['architectureTaintBehavior'] as String),
    );
  }
}
