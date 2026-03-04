// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
class ApplianceClusterResponseGkehubV1alpha {
  /// Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  final pulumi.Input<String> resourceLink;

  /// Creates a new [ApplianceClusterResponseGkehubV1alpha].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  ApplianceClusterResponseGkehubV1alpha({required this.resourceLink});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceLink': resourceLink};
  }

  factory ApplianceClusterResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplianceClusterResponseGkehubV1alpha(
      resourceLink: pulumi.Input.fromValue(map['resourceLink'] as String),
    );
  }
}
