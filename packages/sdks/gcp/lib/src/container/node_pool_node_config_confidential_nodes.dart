// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigConfidentialNodes {
  /// Defines the type of technology used by the confidential node.
  final pulumi.Input<String>? confidentialInstanceType;

  /// Whether Confidential Nodes feature is enabled for all nodes in this pool.
  final pulumi.Input<bool> enabled;

  /// Creates a new [NodePoolNodeConfigConfidentialNodes].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential node.
  /// [enabled] Whether Confidential Nodes feature is enabled for all nodes in this pool.
  NodePoolNodeConfigConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory NodePoolNodeConfigConfidentialNodes.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigConfidentialNodes(
      confidentialInstanceType: (() {
        final guardedValue = map['confidentialInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
