// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigConfidentialNodes {
  /// Defines the type of technology used
  /// by the confidential node.
  final pulumi.Input<String>? confidentialInstanceType;
  /// Enable Confidential GKE Nodes for this cluster, to
  /// enforce encryption of data in-use.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodePoolNodeConfigConfidentialNodes].
  /// [confidentialInstanceType] Defines the type of technology used
  /// [enabled] Enable Confidential GKE Nodes for this cluster, to
  ClusterNodePoolNodeConfigConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolNodeConfigConfidentialNodes.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigConfidentialNodes(
      confidentialInstanceType: map['confidentialInstanceType'] == null ? null : (map['confidentialInstanceType']! as String).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

