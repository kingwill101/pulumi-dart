// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locations_location.dart';

/// Result data returned by getLocations.
class GetLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Contains a list of `location`, which contains the details about a particular location.
  final List<GetLocationsLocation> locations;
  final String? project;

  /// Creates a new [GetLocationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] Contains a list of `location`, which contains the details about a particular location.
  /// [project] Optional.
  GetLocationsResult({
    required this.id,
    required this.locations,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'locations': pulumi.Input.encodeList<GetLocationsLocation, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      id: map['id'] as String,
      locations: pulumi.Input.decodeList<GetLocationsLocation>(map['locations']!, (value) => GetLocationsLocation.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

