// ignore_for_file: unused_element, unnecessary_cast


/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterResponseGkehubV1alpha {
  /// Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final String resourceLink;

  /// Creates a new [EdgeClusterResponseGkehubV1alpha].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  EdgeClusterResponseGkehubV1alpha({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': resourceLink,
    };
  }

  factory EdgeClusterResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return EdgeClusterResponseGkehubV1alpha(
      resourceLink: map['resourceLink'] as String,
    );
  }
}

