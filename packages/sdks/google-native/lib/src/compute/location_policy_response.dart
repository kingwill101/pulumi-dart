// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for location policy among multiple possible locations (e.g. preferences for zone selection among zones in a single region).
class LocationPolicyResponse {
  /// Location configurations mapped by location name. Currently only zone names are supported and must be represented as valid internal URLs, such as zones/us-central1-a.
  final pulumi.Input<Map<String, String>> locations;
  /// Strategy for distributing VMs across zones in a region.
  final pulumi.Input<String> targetShape;

  /// Creates a new [LocationPolicyResponse].
  /// [locations] Location configurations mapped by location name. Currently only zone names are supported and must be represented as valid internal URLs, such as zones/us-central1-a.
  /// [targetShape] Strategy for distributing VMs across zones in a region.
  LocationPolicyResponse({
    required this.locations,
    required this.targetShape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
      'targetShape': targetShape,
    };
  }

  factory LocationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return LocationPolicyResponse(
      locations: pulumi.Input.fromValue((map['locations'] as Map).cast<String, String>()),
      targetShape: pulumi.Input.fromValue(map['targetShape'] as String),
    );
  }
}

