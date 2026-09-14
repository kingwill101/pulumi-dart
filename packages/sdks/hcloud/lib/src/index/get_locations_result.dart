// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locations_location.dart';

/// Result data returned by getLocations.
class GetLocationsResult {
  final List<String>? descriptions;
  /// The ID of this resource.
  final String? id;
  final List<String>? locationIds;
  final List<GetLocationsLocation>? locations;
  final List<String>? names;

  /// Creates a new [GetLocationsResult].
  /// [descriptions] Optional.
  /// [id] The ID of this resource.
  /// [locationIds] Optional.
  /// [locations] Optional.
  /// [names] Optional.
  const GetLocationsResult({
    this.descriptions,
    this.id,
    this.locationIds,
    this.locations,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptions': ?descriptions,
      'id': ?id,
      'locationIds': ?locationIds,
      'locations': ?(() { final guardedValue = locations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocationsLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'names': ?names,
    };
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      descriptions: (() { final guardedValue = map['descriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationIds: (() { final guardedValue = map['locationIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocationsLocation>(guardedValue, (value) => GetLocationsLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
