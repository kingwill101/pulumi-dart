// ignore_for_file: unused_element, unnecessary_cast

import 'vcenter_properties_response.dart';

/// Result data returned by getReplicationvCenter.
class GetReplicationvCenterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource Id
  final String id;

  /// Resource Location
  final String? location;

  /// Resource Name
  final String name;

  /// VCenter related data.
  final VCenterPropertiesResponse properties;

  /// Resource Type
  final String type;

  /// Creates a new [GetReplicationvCenterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [location] Resource Location
  /// [name] Resource Name
  /// [properties] VCenter related data.
  /// [type] Resource Type
  GetReplicationvCenterResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetReplicationvCenterResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationvCenterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      properties: VCenterPropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
