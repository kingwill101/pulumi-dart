// ignore_for_file: unused_element, unnecessary_cast

import 'storage_classification_mapping_properties_response.dart';

/// Result data returned by getReplicationStorageClassificationMapping.
class GetReplicationStorageClassificationMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource Location
  final String? location;
  /// Resource Name
  final String name;
  /// Properties of the storage mapping object.
  final StorageClassificationMappingPropertiesResponse properties;
  /// Resource Type
  final String type;

  /// Creates a new [GetReplicationStorageClassificationMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [location] Resource Location
  /// [name] Resource Name
  /// [properties] Properties of the storage mapping object.
  /// [type] Resource Type
  const GetReplicationStorageClassificationMappingResult({
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

  factory GetReplicationStorageClassificationMappingResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationStorageClassificationMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: StorageClassificationMappingPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

