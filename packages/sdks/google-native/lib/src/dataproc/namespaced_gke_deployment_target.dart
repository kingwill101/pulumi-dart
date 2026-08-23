// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. Used only for the deprecated beta. A full, namespace-isolated deployment target for an existing GKE cluster.
class NamespacedGkeDeploymentTarget {
  /// Optional. A namespace within the GKE cluster to deploy into.
  final pulumi.Input<String>? clusterNamespace;
  /// Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String>? targetGkeCluster;

  /// Creates a new [NamespacedGkeDeploymentTarget].
  /// [clusterNamespace] Optional. A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  const NamespacedGkeDeploymentTarget({
    this.clusterNamespace,
    this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': ?clusterNamespace,
      'targetGkeCluster': ?targetGkeCluster,
    };
  }

  factory NamespacedGkeDeploymentTarget.fromMap(Map<String, dynamic> map) {
    return NamespacedGkeDeploymentTarget(
      clusterNamespace: (() { final guardedValue = map['clusterNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGkeCluster: (() { final guardedValue = map['targetGkeCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
