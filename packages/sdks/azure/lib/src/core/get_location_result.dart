// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_location_zone_mapping.dart';

/// Result data returned by getLocation.
class GetLocationResult {
  /// The display name of the location.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// A `zone_mappings` block as defined below.
  final List<GetLocationZoneMapping> zoneMappings;

  /// Creates a new [GetLocationResult].
  /// [displayName] The display name of the location.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [zoneMappings] A `zone_mappings` block as defined below.
  const GetLocationResult({
    required this.displayName,
    required this.id,
    required this.location,
    required this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'location': location,
      'zoneMappings': pulumi.Input.encodeList<GetLocationZoneMapping, Map<String, dynamic>>(zoneMappings, (value) => value.toMap()),
    };
  }

  factory GetLocationResult.fromMap(Map<String, dynamic> map) {
    return GetLocationResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      zoneMappings: pulumi.Input.decodeList<GetLocationZoneMapping>(map['zoneMappings']!, (value) => GetLocationZoneMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

