// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
class ApplianceClusterResponseGkehubV1beta {
  /// Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  final pulumi.Input<String> resourceLink;

  /// Creates a new [ApplianceClusterResponseGkehubV1beta].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  ApplianceClusterResponseGkehubV1beta({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': resourceLink,
    };
  }

  factory ApplianceClusterResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ApplianceClusterResponseGkehubV1beta(
      resourceLink: (map['resourceLink'] as String).input(),
    );
  }
}

