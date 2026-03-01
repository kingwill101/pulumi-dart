// ignore_for_file: unused_element, unnecessary_cast

import 'location_policy_target_shape.dart';

/// Configuration for location policy among multiple possible locations (e.g. preferences for zone selection among zones in a single region).
class LocationPolicy {
  /// Location configurations mapped by location name. Currently only zone names are supported and must be represented as valid internal URLs, such as zones/us-central1-a.
  final Map<String, String>? locations;
  /// Strategy for distributing VMs across zones in a region.
  final LocationPolicyTargetShape? targetShape;

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
      'targetShape': ?targetShape == null ? null : targetShape!.value,
    };
  }

  factory LocationPolicy.fromMap(Map<String, dynamic> map) {
    return LocationPolicy(
      locations: map['locations'] == null ? null : (map['locations'] as Map).cast<String, String>(),
      targetShape: map['targetShape'] == null ? null : LocationPolicyTargetShape.fromValue(map['targetShape'] as String),
    );
  }
}

