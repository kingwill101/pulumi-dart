// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSitesResultLocation {
  /// Latitude
  final pulumi.Input<String> lat;
  /// Longitude
  final pulumi.Input<String> lon;

  /// Creates a new [GetMagicTransitSitesResultLocation].
  /// [lat] Latitude
  /// [lon] Longitude
  const GetMagicTransitSitesResultLocation({
    required this.lat,
    required this.lon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': lat,
      'lon': lon,
    };
  }

  factory GetMagicTransitSitesResultLocation.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSitesResultLocation(
      lat: pulumi.Input.fromValue(map['lat'] as String),
      lon: pulumi.Input.fromValue(map['lon'] as String),
    );
  }
}
