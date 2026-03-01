// ignore_for_file: unused_element, unnecessary_cast

import 'protection_container_mapping_properties_response.dart';

/// Result data returned by getReplicationProtectionContainerMapping.
class GetReplicationProtectionContainerMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource Location
  final String? location;
  /// Resource Name
  final String name;
  /// The custom data.
  final ProtectionContainerMappingPropertiesResponse properties;
  /// Resource Type
  final String type;

  /// Creates a new [GetReplicationProtectionContainerMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [location] Resource Location
  /// [name] Resource Name
  /// [properties] The custom data.
  /// [type] Resource Type
  GetReplicationProtectionContainerMappingResult({
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

  factory GetReplicationProtectionContainerMappingResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationProtectionContainerMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: ProtectionContainerMappingPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

