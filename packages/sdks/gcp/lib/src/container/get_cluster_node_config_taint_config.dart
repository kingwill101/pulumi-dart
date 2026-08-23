// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigTaintConfig {
  /// Architecture taint behavior. Controls, how we apply taints based on the node architecture.
  final pulumi.Input<String> architectureTaintBehavior;

  /// Creates a new [GetClusterNodeConfigTaintConfig].
  /// [architectureTaintBehavior] Architecture taint behavior. Controls, how we apply taints based on the node architecture.
  const GetClusterNodeConfigTaintConfig({
    required this.architectureTaintBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectureTaintBehavior': architectureTaintBehavior,
    };
  }

  factory GetClusterNodeConfigTaintConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigTaintConfig(
      architectureTaintBehavior: pulumi.Input.fromValue(map['architectureTaintBehavior'] as String),
    );
  }
}
