// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterConfidentialNode {
  /// Defines the type of technology used by the confidential node.
  final pulumi.Input<String> confidentialInstanceType;
  /// Whether Confidential Nodes feature is enabled for all nodes in this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterConfidentialNode].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential node.
  /// [enabled] Whether Confidential Nodes feature is enabled for all nodes in this cluster.
  GetClusterConfidentialNode({
    required this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory GetClusterConfidentialNode.fromMap(Map<String, dynamic> map) {
    return GetClusterConfidentialNode(
      confidentialInstanceType: (map['confidentialInstanceType'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

