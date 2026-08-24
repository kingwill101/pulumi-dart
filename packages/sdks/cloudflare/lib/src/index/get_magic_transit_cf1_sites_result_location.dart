// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitCf1SitesResultLocation {
  /// Latitude of the CF1 Site.
  final pulumi.Input<double> lat;
  /// Longitude of the CF1 Site.
  final pulumi.Input<double> long;
  /// Name of nearest town, city, or village.
  final pulumi.Input<String> name;

  /// Creates a new [GetMagicTransitCf1SitesResultLocation].
  /// [lat] Latitude of the CF1 Site.
  /// [long] Longitude of the CF1 Site.
  /// [name] Name of nearest town, city, or village.
  const GetMagicTransitCf1SitesResultLocation({
    required this.lat,
    required this.long,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': lat,
      'long': long,
      'name': name,
    };
  }

  factory GetMagicTransitCf1SitesResultLocation.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitCf1SitesResultLocation(
      lat: pulumi.Input.fromValue((map['lat'] as num).toDouble()),
      long: pulumi.Input.fromValue((map['long'] as num).toDouble()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
