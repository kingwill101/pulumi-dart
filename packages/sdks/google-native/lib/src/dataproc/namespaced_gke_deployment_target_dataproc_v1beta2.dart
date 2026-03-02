// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A full, namespace-isolated deployment target for an existing GKE cluster.
class NamespacedGkeDeploymentTargetDataprocV1beta2 {
  /// Optional. A namespace within the GKE cluster to deploy into.
  final pulumi.Input<String>? clusterNamespace;
  /// Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String>? targetGkeCluster;

  /// Creates a new [NamespacedGkeDeploymentTargetDataprocV1beta2].
  /// [clusterNamespace] Optional. A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  NamespacedGkeDeploymentTargetDataprocV1beta2({
    this.clusterNamespace,
    this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': ?clusterNamespace,
      'targetGkeCluster': ?targetGkeCluster,
    };
  }

  factory NamespacedGkeDeploymentTargetDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return NamespacedGkeDeploymentTargetDataprocV1beta2(
      clusterNamespace: map['clusterNamespace'] == null ? null : (map['clusterNamespace']! as String).input(),
      targetGkeCluster: map['targetGkeCluster'] == null ? null : (map['targetGkeCluster']! as String).input(),
    );
  }
}

