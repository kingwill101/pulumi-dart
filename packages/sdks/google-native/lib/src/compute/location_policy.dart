// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_policy_target_shape.dart';

/// Configuration for location policy among multiple possible locations (e.g. preferences for zone selection among zones in a single region).
class LocationPolicy {
  /// Location configurations mapped by location name. Currently only zone names are supported and must be represented as valid internal URLs, such as zones/us-central1-a.
  final pulumi.Input<Map<String, String>>? locations;
  /// Strategy for distributing VMs across zones in a region.
  final pulumi.Input<LocationPolicyTargetShape>? targetShape;

  /// Creates a new [LocationPolicy].
  /// [locations] Location configurations mapped by location name. Currently only zone names are supported and must be represented as valid internal URLs, such as zones/us-central1-a.
  /// [targetShape] Strategy for distributing VMs across zones in a region.
  LocationPolicy({
    this.locations,
    this.targetShape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'targetShape': ?pulumi.Input.mapOptionalInputValue<LocationPolicyTargetShape, String>(targetShape, (value) => value.value),
    };
  }

  factory LocationPolicy.fromMap(Map<String, dynamic> map) {
    return LocationPolicy(
      locations: map['locations'] == null ? null : ((map['locations']! as Map).cast<String, String>()).input(),
      targetShape: map['targetShape'] == null ? null : (LocationPolicyTargetShape.fromValue(map['targetShape']! as String)).input(),
    );
  }
}

