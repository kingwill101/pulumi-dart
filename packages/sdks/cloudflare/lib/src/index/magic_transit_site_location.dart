// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitSiteLocation {
  /// Latitude
  final pulumi.Input<String?>? lat;
  /// Longitude
  final pulumi.Input<String?>? lon;

  /// Creates a new [MagicTransitSiteLocation].
  /// [lat] Latitude
  /// [lon] Longitude
  const MagicTransitSiteLocation({
    this.lat,
    this.lon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': ?lat,
      'lon': ?lon,
    };
  }

  factory MagicTransitSiteLocation.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLocation(
      lat: (() { final guardedValue = map['lat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lon: (() { final guardedValue = map['lon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
