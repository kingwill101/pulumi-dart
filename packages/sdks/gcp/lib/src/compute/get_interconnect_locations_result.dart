// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_locations_location.dart';

/// Result data returned by getInterconnectLocations.
class GetInterconnectLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of interconnect locations. Each location will have the following attributes:
  final List<GetInterconnectLocationsLocation>? locations;
  final String? project;

  /// Creates a new [GetInterconnectLocationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] A list of interconnect locations. Each location will have the following attributes:
  /// [project] Optional.
  const GetInterconnectLocationsResult({
    this.id,
    this.locations,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'locations': ?(() { final guardedValue = locations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInterconnectLocationsLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
    };
  }

  factory GetInterconnectLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInterconnectLocationsLocation>(guardedValue, (value) => GetInterconnectLocationsLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
