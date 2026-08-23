// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MembershipEndpointGkeCluster {
  /// Self-link of the GCP resource for the GKE cluster.
  /// For example: `//container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster`.
  /// It can be at the most 1000 characters in length. If the cluster is provisioned with Terraform,
  /// this can be `"//container.googleapis.com/${google_container_cluster.my-cluster.id}"` or
  /// `google_container_cluster.my-cluster.id`.
  final pulumi.Input<String> resourceLink;

  /// Creates a new [MembershipEndpointGkeCluster].
  /// [resourceLink] Self-link of the GCP resource for the GKE cluster.
  const MembershipEndpointGkeCluster({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': resourceLink,
    };
  }

  factory MembershipEndpointGkeCluster.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointGkeCluster(
      resourceLink: pulumi.Input.fromValue(map['resourceLink'] as String),
    );
  }
}
