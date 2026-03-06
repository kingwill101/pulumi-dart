// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLocationsLocation {
  /// Name of the closest city to the Location. City name and optionally state in short form.
  final pulumi.Input<String> city;
  /// Country the Location resides in. ISO 3166-1 alpha-2 code of the country.
  final pulumi.Input<String> country;
  /// Description of the Location.
  final pulumi.Input<String> description;
  /// ID of the Location.
  final pulumi.Input<int> id;
  /// Latitude of the city closest to the Location.
  final pulumi.Input<double> latitude;
  /// Longitude of the city closest to the Location.
  final pulumi.Input<double> longitude;
  /// Name of the Location.
  final pulumi.Input<String> name;
  /// Name of the Network Zone this Location resides in.
  final pulumi.Input<String> networkZone;

  /// Creates a new [GetLocationsLocation].
  /// [city] Name of the closest city to the Location. City name and optionally state in short form.
  /// [country] Country the Location resides in. ISO 3166-1 alpha-2 code of the country.
  /// [description] Description of the Location.
  /// [id] ID of the Location.
  /// [latitude] Latitude of the city closest to the Location.
  /// [longitude] Longitude of the city closest to the Location.
  /// [name] Name of the Location.
  /// [networkZone] Name of the Network Zone this Location resides in.
  const GetLocationsLocation({
    required this.city,
    required this.country,
    required this.description,
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.networkZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'country': country,
      'description': description,
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'name': name,
      'networkZone': networkZone,
    };
  }

  factory GetLocationsLocation.fromMap(Map<String, dynamic> map) {
    return GetLocationsLocation(
      city: pulumi.Input.fromValue(map['city'] as String),
      country: pulumi.Input.fromValue(map['country'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      latitude: pulumi.Input.fromValue(map['latitude'] as double),
      longitude: pulumi.Input.fromValue(map['longitude'] as double),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkZone: pulumi.Input.fromValue(map['networkZone'] as String),
    );
  }
}

