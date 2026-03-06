// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigConfidentialNode {
  /// Defines the type of technology used by the confidential node.
  final pulumi.Input<String> confidentialInstanceType;
  /// Whether Confidential Nodes feature is enabled for all nodes in this pool.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodeConfigConfidentialNode].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential node.
  /// [enabled] Whether Confidential Nodes feature is enabled for all nodes in this pool.
  const GetClusterNodeConfigConfidentialNode({
    required this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory GetClusterNodeConfigConfidentialNode.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigConfidentialNode(
      confidentialInstanceType: pulumi.Input.fromValue(map['confidentialInstanceType'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

