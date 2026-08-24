// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLocation {
  /// Latitude
  final pulumi.Input<String> lat;
  /// Longitude
  final pulumi.Input<String> lon;

  /// Creates a new [GetMagicTransitSiteLocation].
  /// [lat] Latitude
  /// [lon] Longitude
  const GetMagicTransitSiteLocation({
    required this.lat,
    required this.lon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': lat,
      'lon': lon,
    };
  }

  factory GetMagicTransitSiteLocation.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLocation(
      lat: pulumi.Input.fromValue(map['lat'] as String),
      lon: pulumi.Input.fromValue(map['lon'] as String),
    );
  }
}
