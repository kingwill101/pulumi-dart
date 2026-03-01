// ignore_for_file: unused_element, unnecessary_cast


/// GkeCluster contains information specific to GKE clusters.
class GkeCluster {
  /// Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  final String? resourceLink;

  /// Creates a new [GkeCluster].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  GkeCluster({
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': ?resourceLink,
    };
  }

  factory GkeCluster.fromMap(Map<String, dynamic> map) {
    return GkeCluster(
      resourceLink: map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}

