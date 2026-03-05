// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_other_cloud_starting_location_aws_location.dart';

class PreventionDiscoveryConfigOtherCloudStartingLocation {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation>? awsLocation;

  /// Creates a new [PreventionDiscoveryConfigOtherCloudStartingLocation].
  /// [awsLocation] A nested object resource.
  PreventionDiscoveryConfigOtherCloudStartingLocation({
    this.awsLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsLocation': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation, Map<String, dynamic>>(awsLocation, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigOtherCloudStartingLocation(
      awsLocation: (() { final guardedValue = map['awsLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

