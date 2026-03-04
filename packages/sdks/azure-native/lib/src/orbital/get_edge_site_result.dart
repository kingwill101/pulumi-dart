// ignore_for_file: unused_element, unnecessary_cast

import 'edge_sites_properties_response_global_communications_site.dart';
import 'system_data_response.dart';

/// Result data returned by getEdgeSite.
class GetEdgeSiteResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// A reference to global communications site.
  final EdgeSitesPropertiesResponseGlobalCommunicationsSite
  globalCommunicationsSite;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEdgeSiteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [globalCommunicationsSite] A reference to global communications site.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEdgeSiteResult({
    required this.azureApiVersion,
    required this.globalCommunicationsSite,
    required this.id,
    required this.location,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'globalCommunicationsSite': globalCommunicationsSite.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetEdgeSiteResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeSiteResult(
      azureApiVersion: map['azureApiVersion'] as String,
      globalCommunicationsSite:
          EdgeSitesPropertiesResponseGlobalCommunicationsSite.fromMap(
            (map['globalCommunicationsSite']! as Map).cast<String, dynamic>(),
          ),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
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
