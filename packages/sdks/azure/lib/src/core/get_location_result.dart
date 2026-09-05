// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_location_zone_mapping.dart';

/// Result data returned by getLocation.
class GetLocationResult {
  /// The display name of the location.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// A `zoneMappings` block as defined below.
  final List<GetLocationZoneMapping>? zoneMappings;

  /// Creates a new [GetLocationResult].
  /// [displayName] The display name of the location.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [zoneMappings] A `zoneMappings` block as defined below.
  const GetLocationResult({
    this.displayName,
    this.id,
    this.location,
    this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'location': ?location,
      'zoneMappings': ?(() { final guardedValue = zoneMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocationZoneMapping, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetLocationResult.fromMap(Map<String, dynamic> map) {
    return GetLocationResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneMappings: (() { final guardedValue = map['zoneMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocationZoneMapping>(guardedValue, (value) => GetLocationZoneMapping.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
