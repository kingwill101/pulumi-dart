// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigTaintConfig {
  /// The taint behavior to be applied to the nodes based on the architecture.
  /// Accepted values are:
  /// * `ARCHITECTURE_TAINT_BEHAVIOR_UNSPECIFIED`: Default value. This should not be used.
  /// * `NONE`: Do not apply any taints based on architecture.
  /// * `ARM`: Apply ARM taint to the nodes.
  final pulumi.Input<String> architectureTaintBehavior;

  /// Creates a new [ClusterNodeConfigTaintConfig].
  /// [architectureTaintBehavior] The taint behavior to be applied to the nodes based on the architecture.
  const ClusterNodeConfigTaintConfig({
    required this.architectureTaintBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectureTaintBehavior': architectureTaintBehavior,
    };
  }

  factory ClusterNodeConfigTaintConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigTaintConfig(
      architectureTaintBehavior: pulumi.Input.fromValue(map['architectureTaintBehavior'] as String),
    );
  }
}
