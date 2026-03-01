// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_other_cloud_starting_location_aws_location.dart';

class PreventionDiscoveryConfigOtherCloudStartingLocation {
  /// A nested object resource.
  /// Structure is documented below.
  final PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation? awsLocation;

  /// Creates a new [PreventionDiscoveryConfigOtherCloudStartingLocation].
  /// [awsLocation] A nested object resource.
  PreventionDiscoveryConfigOtherCloudStartingLocation({
    this.awsLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsLocation': ?awsLocation == null ? null : awsLocation!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigOtherCloudStartingLocation(
      awsLocation: map['awsLocation'] == null ? null : PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation.fromMap((map['awsLocation'] as Map).cast<String, dynamic>()),
    );
  }
}

