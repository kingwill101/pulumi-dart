// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. Used only for the deprecated beta. A full, namespace-isolated deployment target for an existing GKE cluster.
class NamespacedGkeDeploymentTargetResponse {
  /// Optional. A namespace within the GKE cluster to deploy into.
  final pulumi.Input<String> clusterNamespace;
  /// Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String> targetGkeCluster;

  /// Creates a new [NamespacedGkeDeploymentTargetResponse].
  /// [clusterNamespace] Optional. A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  const NamespacedGkeDeploymentTargetResponse({
    required this.clusterNamespace,
    required this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': clusterNamespace,
      'targetGkeCluster': targetGkeCluster,
    };
  }

  factory NamespacedGkeDeploymentTargetResponse.fromMap(Map<String, dynamic> map) {
    return NamespacedGkeDeploymentTargetResponse(
      clusterNamespace: pulumi.Input.fromValue(map['clusterNamespace'] as String),
      targetGkeCluster: pulumi.Input.fromValue(map['targetGkeCluster'] as String),
    );
  }
}
