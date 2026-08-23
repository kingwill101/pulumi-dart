// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterResponseGkehubV1beta {
  /// Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final pulumi.Input<String> resourceLink;

  /// Creates a new [EdgeClusterResponseGkehubV1beta].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  const EdgeClusterResponseGkehubV1beta({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': resourceLink,
    };
  }

  factory EdgeClusterResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return EdgeClusterResponseGkehubV1beta(
      resourceLink: pulumi.Input.fromValue(map['resourceLink'] as String),
    );
  }
}
