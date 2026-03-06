// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OnPremCluster contains information specific to GKE On-Prem clusters.
class OnPremClusterResponseGkehubV1alpha2 {
  /// Immutable. Whether the cluster is an admin cluster.
  final pulumi.Input<bool> adminCluster;
  /// If cluster_missing is set then it denotes that API(gkeonprem.googleapis.com) resource for this GKE On-Prem cluster no longer exists.
  final pulumi.Input<bool> clusterMissing;
  /// Immutable. The on prem cluster's type.
  final pulumi.Input<String> clusterType;
  /// Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  final pulumi.Input<String> resourceLink;

  /// Creates a new [OnPremClusterResponseGkehubV1alpha2].
  /// [adminCluster] Immutable. Whether the cluster is an admin cluster.
  /// [clusterMissing] If cluster_missing is set then it denotes that API(gkeonprem.googleapis.com) resource for this GKE On-Prem cluster no longer exists.
  /// [clusterType] Immutable. The on prem cluster's type.
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  const OnPremClusterResponseGkehubV1alpha2({
    required this.adminCluster,
    required this.clusterMissing,
    required this.clusterType,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCluster': adminCluster,
      'clusterMissing': clusterMissing,
      'clusterType': clusterType,
      'resourceLink': resourceLink,
    };
  }

  factory OnPremClusterResponseGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return OnPremClusterResponseGkehubV1alpha2(
      adminCluster: pulumi.Input.fromValue(map['adminCluster'] as bool),
      clusterMissing: pulumi.Input.fromValue(map['clusterMissing'] as bool),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      resourceLink: pulumi.Input.fromValue(map['resourceLink'] as String),
    );
  }
}

