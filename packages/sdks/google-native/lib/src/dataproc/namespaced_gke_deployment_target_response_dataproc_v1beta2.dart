// ignore_for_file: unused_element, unnecessary_cast


/// A full, namespace-isolated deployment target for an existing GKE cluster.
class NamespacedGkeDeploymentTargetResponseDataprocV1beta2 {
  /// Optional. A namespace within the GKE cluster to deploy into.
  final String clusterNamespace;
  /// Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String targetGkeCluster;

  /// Creates a new [NamespacedGkeDeploymentTargetResponseDataprocV1beta2].
  /// [clusterNamespace] Optional. A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  NamespacedGkeDeploymentTargetResponseDataprocV1beta2({
    required this.clusterNamespace,
    required this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': clusterNamespace,
      'targetGkeCluster': targetGkeCluster,
    };
  }

  factory NamespacedGkeDeploymentTargetResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return NamespacedGkeDeploymentTargetResponseDataprocV1beta2(
      clusterNamespace: map['clusterNamespace'] as String,
      targetGkeCluster: map['targetGkeCluster'] as String,
    );
  }
}

