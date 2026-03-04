// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrivateCloudManagementClusterStretchedClusterConfig {
  /// Zone that will remain operational when connection between the two zones is lost.
  /// Specify the zone in the following format: projects/{project}/locations/{location}.
  final pulumi.Input<String> preferredLocation;

  /// Additional zone for a higher level of availability and load balancing.
  /// Specify the zone in the following format: projects/{project}/locations/{location}.
  final pulumi.Input<String> secondaryLocation;

  /// Creates a new [GetPrivateCloudManagementClusterStretchedClusterConfig].
  /// [preferredLocation] Zone that will remain operational when connection between the two zones is lost.
  /// [secondaryLocation] Additional zone for a higher level of availability and load balancing.
  GetPrivateCloudManagementClusterStretchedClusterConfig({
    required this.preferredLocation,
    required this.secondaryLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredLocation': preferredLocation,
      'secondaryLocation': secondaryLocation,
    };
  }

  factory GetPrivateCloudManagementClusterStretchedClusterConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrivateCloudManagementClusterStretchedClusterConfig(
      preferredLocation: pulumi.Input.fromValue(
        map['preferredLocation'] as String,
      ),
      secondaryLocation: pulumi.Input.fromValue(
        map['secondaryLocation'] as String,
      ),
    );
  }
}
