// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterConfidentialNodes {
  /// Defines the type of technology used
  /// by the confidential node.
  final pulumi.Input<String?>? confidentialInstanceType;
  /// Enable Confidential GKE Nodes for this cluster, to
  /// enforce encryption of data in-use.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterConfidentialNodes].
  /// [confidentialInstanceType] Defines the type of technology used
  /// [enabled] Enable Confidential GKE Nodes for this cluster, to
  const ClusterConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory ClusterConfidentialNodes.fromMap(Map<String, dynamic> map) {
    return ClusterConfidentialNodes(
      confidentialInstanceType: (() { final guardedValue = map['confidentialInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
