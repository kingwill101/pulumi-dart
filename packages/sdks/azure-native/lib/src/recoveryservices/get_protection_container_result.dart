// ignore_for_file: unused_element, unnecessary_cast

import 'azure_backup_server_container_response.dart';

/// Result data returned by getProtectionContainer.
class GetProtectionContainerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Optional ETag.
  final String? eTag;

  /// Resource Id represents the complete path to the resource.
  final String id;

  /// Resource location.
  final String? location;

  /// Resource name associated with the resource.
  final String name;

  /// ProtectionContainerResource properties
  final AzureBackupServerContainerResponse properties;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String type;

  /// Creates a new [GetProtectionContainerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Optional ETag.
  /// [id] Resource Id represents the complete path to the resource.
  /// [location] Resource location.
  /// [name] Resource name associated with the resource.
  /// [properties] ProtectionContainerResource properties
  /// [tags] Resource tags.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  GetProtectionContainerResult({
    required this.azureApiVersion,
    this.eTag,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': ?eTag,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetProtectionContainerResult.fromMap(Map<String, dynamic> map) {
    return GetProtectionContainerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: (() {
        final guardedValue = map['eTag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      properties: AzureBackupServerContainerResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
