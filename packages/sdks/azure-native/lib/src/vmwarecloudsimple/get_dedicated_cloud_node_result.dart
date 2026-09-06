// ignore_for_file: unused_element, unnecessary_cast

import 'dedicated_cloud_node_properties_response.dart';
import 'sku_response.dart';

/// Result data returned by getDedicatedCloudNode.
class GetDedicatedCloudNodeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudNodes/{dedicatedCloudNodeName}
  final String? id;
  /// Azure region
  final String? location;
  /// {dedicatedCloudNodeName}
  final String? name;
  /// Dedicated Cloud Nodes properties
  final DedicatedCloudNodePropertiesResponse? properties;
  /// Dedicated Cloud Nodes SKU
  final SkuResponse? sku;
  /// Dedicated Cloud Nodes tags
  final Map<String, String>? tags;
  /// {resourceProviderNamespace}/{resourceType}
  final String? type;

  /// Creates a new [GetDedicatedCloudNodeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudNodes/{dedicatedCloudNodeName}
  /// [location] Azure region
  /// [name] {dedicatedCloudNodeName}
  /// [properties] Dedicated Cloud Nodes properties
  /// [sku] Dedicated Cloud Nodes SKU
  /// [tags] Dedicated Cloud Nodes tags
  /// [type] {resourceProviderNamespace}/{resourceType}
  const GetDedicatedCloudNodeResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDedicatedCloudNodeResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedCloudNodeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return DedicatedCloudNodePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
