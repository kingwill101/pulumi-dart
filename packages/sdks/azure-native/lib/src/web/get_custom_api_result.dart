// ignore_for_file: unused_element, unnecessary_cast

import 'custom_api_properties_definition_response.dart';

/// Result data returned by getCustomApi.
class GetCustomApiResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ETag
  final String? etag;
  /// Resource id
  final String? id;
  /// Resource location
  final String? location;
  /// Resource name
  final String? name;
  /// Custom API properties
  final CustomApiPropertiesDefinitionResponse? properties;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String? type;

  /// Creates a new [GetCustomApiResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource ETag
  /// [id] Resource id
  /// [location] Resource location
  /// [name] Resource name
  /// [properties] Custom API properties
  /// [tags] Resource tags
  /// [type] Resource type
  const GetCustomApiResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetCustomApiResult.fromMap(Map<String, dynamic> map) {
    return GetCustomApiResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return CustomApiPropertiesDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
