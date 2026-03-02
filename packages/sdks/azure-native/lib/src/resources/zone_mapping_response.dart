// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneMappingResponse {
  /// The location of the zone mapping.
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ZoneMappingResponse].
  /// [location] The location of the zone mapping.
  /// [zones] Optional.
  ZoneMappingResponse({
    this.location,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'zones': ?zones,
    };
  }

  factory ZoneMappingResponse.fromMap(Map<String, dynamic> map) {
    return ZoneMappingResponse(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

