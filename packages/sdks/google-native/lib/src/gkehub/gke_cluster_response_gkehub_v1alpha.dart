// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GkeCluster contains information specific to GKE clusters.
class GkeClusterResponseGkehubV1alpha {
  /// If cluster_missing is set then it denotes that the GKE cluster no longer exists in the GKE Control Plane.
  final pulumi.Input<bool> clusterMissing;
  /// Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  final pulumi.Input<String> resourceLink;

  /// Creates a new [GkeClusterResponseGkehubV1alpha].
  /// [clusterMissing] If cluster_missing is set then it denotes that the GKE cluster no longer exists in the GKE Control Plane.
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  GkeClusterResponseGkehubV1alpha({
    required this.clusterMissing,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterMissing': clusterMissing,
      'resourceLink': resourceLink,
    };
  }

  factory GkeClusterResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return GkeClusterResponseGkehubV1alpha(
      clusterMissing: (map['clusterMissing'] as bool).input(),
      resourceLink: (map['resourceLink'] as String).input(),
    );
  }
}

