// ignore_for_file: unused_element, unnecessary_cast

import 'azure_fileshare_protected_item_response.dart';

/// Result data returned by getProtectedItem.
class GetProtectedItemResult {
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
  /// ProtectedItemResource properties
  final AzureFileshareProtectedItemResponse properties;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String type;

  /// Creates a new [GetProtectedItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Optional ETag.
  /// [id] Resource Id represents the complete path to the resource.
  /// [location] Resource location.
  /// [name] Resource name associated with the resource.
  /// [properties] ProtectedItemResource properties
  /// [tags] Resource tags.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  GetProtectedItemResult({
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

  factory GetProtectedItemResult.fromMap(Map<String, dynamic> map) {
    return GetProtectedItemResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: AzureFileshareProtectedItemResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

