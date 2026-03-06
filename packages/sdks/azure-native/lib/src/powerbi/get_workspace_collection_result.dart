// ignore_for_file: unused_element, unnecessary_cast

import 'azure_sku_response.dart';

/// Result data returned by getWorkspaceCollection.
class GetWorkspaceCollectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource id
  final String? id;
  /// Azure location
  final String? location;
  /// Workspace collection name
  final String? name;
  /// Properties
  final dynamic properties;
  final AzureSkuResponse? sku;
  final Map<String, String>? tags;
  /// Resource type
  final String? type;

  /// Creates a new [GetWorkspaceCollectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource id
  /// [location] Azure location
  /// [name] Workspace collection name
  /// [properties] Properties
  /// [sku] Optional.
  /// [tags] Optional.
  /// [type] Resource type
  const GetWorkspaceCollectionResult({
    required this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    required this.properties,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': properties,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetWorkspaceCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceCollectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: map['properties'],
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return AzureSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

