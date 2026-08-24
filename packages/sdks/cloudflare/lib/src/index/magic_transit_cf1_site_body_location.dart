// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitCf1SiteBodyLocation {
  /// Latitude of the CF1 Site.
  final pulumi.Input<double?>? lat;
  /// Longitude of the CF1 Site.
  final pulumi.Input<double?>? long;
  /// Name of nearest town, city, or village.
  final pulumi.Input<String?>? name;

  /// Creates a new [MagicTransitCf1SiteBodyLocation].
  /// [lat] Latitude of the CF1 Site.
  /// [long] Longitude of the CF1 Site.
  /// [name] Name of nearest town, city, or village.
  const MagicTransitCf1SiteBodyLocation({
    this.lat,
    this.long,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': ?lat,
      'long': ?long,
      'name': ?name,
    };
  }

  factory MagicTransitCf1SiteBodyLocation.fromMap(Map<String, dynamic> map) {
    return MagicTransitCf1SiteBodyLocation(
      lat: (() { final guardedValue = map['lat']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      long: (() { final guardedValue = map['long']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
