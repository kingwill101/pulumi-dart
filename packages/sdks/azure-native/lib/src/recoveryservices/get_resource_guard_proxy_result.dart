// ignore_for_file: unused_element, unnecessary_cast

import 'resource_guard_proxy_base_response.dart';

/// Result data returned by getResourceGuardProxy.
class GetResourceGuardProxyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Optional ETag.
  final String? eTag;
  /// Resource Id represents the complete path to the resource.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name associated with the resource.
  final String? name;
  /// ResourceGuardProxyBaseResource properties
  final ResourceGuardProxyBaseResponse? properties;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String? type;

  /// Creates a new [GetResourceGuardProxyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Optional ETag.
  /// [id] Resource Id represents the complete path to the resource.
  /// [location] Resource location.
  /// [name] Resource name associated with the resource.
  /// [properties] ResourceGuardProxyBaseResource properties
  /// [tags] Resource tags.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  const GetResourceGuardProxyResult({
    this.azureApiVersion,
    this.eTag,
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
      'eTag': ?eTag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetResourceGuardProxyResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGuardProxyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ResourceGuardProxyBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
