// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GkeCluster contains information specific to GKE clusters.
class GkeClusterGkehubV1beta1 {
  /// Immutable. Self-link of the GCP resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  final pulumi.Input<String>? resourceLink;

  /// Creates a new [GkeClusterGkehubV1beta1].
  /// [resourceLink] Immutable. Self-link of the GCP resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  const GkeClusterGkehubV1beta1({
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': ?resourceLink,
    };
  }

  factory GkeClusterGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return GkeClusterGkehubV1beta1(
      resourceLink: (() { final guardedValue = map['resourceLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

