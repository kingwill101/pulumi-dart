// ignore_for_file: unused_element, unnecessary_cast

import 'api_connection_definition_response_properties.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ETag
  final String? etag;
  /// Resource id
  final String id;
  /// Resource location
  final String? location;
  /// Resource name
  final String name;
  final ApiConnectionDefinitionResponseProperties properties;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource ETag
  /// [id] Resource id
  /// [location] Resource location
  /// [name] Resource name
  /// [properties] Required.
  /// [tags] Resource tags
  /// [type] Resource type
  const GetConnectionResult({
    required this.azureApiVersion,
    this.etag,
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
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: ApiConnectionDefinitionResponseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

