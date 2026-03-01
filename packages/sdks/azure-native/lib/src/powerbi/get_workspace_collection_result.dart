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
  GetWorkspaceCollectionResult({
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
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetWorkspaceCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceCollectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'],
      sku: map['sku'] == null ? null : AzureSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

