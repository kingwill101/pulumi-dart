// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
class MultiCloudClusterResponseGkehubV1beta {
  /// If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
  final pulumi.Input<bool> clusterMissing;
  /// Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  final pulumi.Input<String> resourceLink;

  /// Creates a new [MultiCloudClusterResponseGkehubV1beta].
  /// [clusterMissing] If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  MultiCloudClusterResponseGkehubV1beta({
    required this.clusterMissing,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterMissing': clusterMissing,
      'resourceLink': resourceLink,
    };
  }

  factory MultiCloudClusterResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return MultiCloudClusterResponseGkehubV1beta(
      clusterMissing: pulumi.Input.fromValue(map['clusterMissing'] as bool),
      resourceLink: pulumi.Input.fromValue(map['resourceLink'] as String),
    );
  }
}

