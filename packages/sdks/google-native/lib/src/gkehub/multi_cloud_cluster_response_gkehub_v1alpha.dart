// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
class MultiCloudClusterResponseGkehubV1alpha {
  /// If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
  final pulumi.Input<bool> clusterMissing;
  /// Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  final pulumi.Input<String> resourceLink;

  /// Creates a new [MultiCloudClusterResponseGkehubV1alpha].
  /// [clusterMissing] If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  MultiCloudClusterResponseGkehubV1alpha({
    required this.clusterMissing,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterMissing': clusterMissing,
      'resourceLink': resourceLink,
    };
  }

  factory MultiCloudClusterResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return MultiCloudClusterResponseGkehubV1alpha(
      clusterMissing: (map['clusterMissing'] as bool).input(),
      resourceLink: (map['resourceLink'] as String).input(),
    );
  }
}

