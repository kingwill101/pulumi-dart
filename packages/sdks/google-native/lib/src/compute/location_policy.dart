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
  const LocationPolicy({
    this.locations,
    this.targetShape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'targetShape': ?pulumi.Input.mapOptionalInputValue<LocationPolicyTargetShape, String>(targetShape, (value) => value.wireValue),
    };
  }

  factory LocationPolicy.fromMap(Map<String, dynamic> map) {
    return LocationPolicy(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetShape: (() { final guardedValue = map['targetShape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocationPolicyTargetShape.fromValue(guardedValue as String)); })(),
    );
  }
}

