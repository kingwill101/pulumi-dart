// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locations_location.dart';

/// Result data returned by getLocations.
class GetLocationsResult {
  final List<String> descriptions;

  /// The ID of this resource.
  final String id;
  final List<String> locationIds;
  final List<GetLocationsLocation> locations;
  final List<String> names;

  /// Creates a new [GetLocationsResult].
  /// [descriptions] Required.
  /// [id] The ID of this resource.
  /// [locationIds] Required.
  /// [locations] Required.
  /// [names] Required.
  GetLocationsResult({
    required this.descriptions,
    required this.id,
    required this.locationIds,
    required this.locations,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptions': descriptions,
      'id': id,
      'locationIds': locationIds,
      'locations':
          pulumi.Input.encodeList<GetLocationsLocation, Map<String, dynamic>>(
            locations,
            (value) => value.toMap(),
          ),
      'names': names,
    };
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      locationIds: (map['locationIds'] as List).cast<String>(),
      locations: pulumi.Input.decodeList<GetLocationsLocation>(
        map['locations']!,
        (value) => GetLocationsLocation.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      names: (map['names'] as List).cast<String>(),
    );
  }
}
