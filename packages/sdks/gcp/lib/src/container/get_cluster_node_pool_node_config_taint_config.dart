// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigTaintConfig {
  /// Architecture taint behavior. Controls, how we apply taints based on the node architecture.
  final pulumi.Input<String> architectureTaintBehavior;

  /// Creates a new [GetClusterNodePoolNodeConfigTaintConfig].
  /// [architectureTaintBehavior] Architecture taint behavior. Controls, how we apply taints based on the node architecture.
  const GetClusterNodePoolNodeConfigTaintConfig({
    required this.architectureTaintBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectureTaintBehavior': architectureTaintBehavior,
    };
  }

  factory GetClusterNodePoolNodeConfigTaintConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigTaintConfig(
      architectureTaintBehavior: pulumi.Input.fromValue(map['architectureTaintBehavior'] as String),
    );
  }
}
