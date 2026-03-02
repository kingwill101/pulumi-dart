// ignore_for_file: unused_element, unnecessary_cast

import 'identity_data_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'vault_properties_response.dart';

/// Result data returned by getVault.
class GetVaultResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Optional ETag.
  final String? etag;
  /// Resource Id represents the complete path to the resource.
  final String id;
  /// Identity for the resource.
  final IdentityDataResponse? identity;
  /// Resource location.
  final String location;
  /// Resource name associated with the resource.
  final String name;
  /// Properties of the vault.
  final VaultPropertiesResponse properties;
  /// Identifies the unique system identifier for each Azure resource.
  final SkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String type;

  /// Creates a new [GetVaultResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Optional ETag.
  /// [id] Resource Id represents the complete path to the resource.
  /// [identity] Identity for the resource.
  /// [location] Resource location.
  /// [name] Resource name associated with the resource.
  /// [properties] Properties of the vault.
  /// [sku] Identifies the unique system identifier for each Azure resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  GetVaultResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.properties,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetVaultResult.fromMap(Map<String, dynamic> map) {
    return GetVaultResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityDataResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: VaultPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

