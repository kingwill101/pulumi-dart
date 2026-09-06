// ignore_for_file: unused_element, unnecessary_cast

import 'edge_sites_properties_response_global_communications_site.dart';
import 'system_data_response.dart';

/// Result data returned by getEdgeSite.
class GetEdgeSiteResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A reference to global communications site.
  final EdgeSitesPropertiesResponseGlobalCommunicationsSite? globalCommunicationsSite;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetEdgeSiteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [globalCommunicationsSite] A reference to global communications site.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetEdgeSiteResult({
    this.azureApiVersion,
    this.globalCommunicationsSite,
    this.id,
    this.location,
    this.name,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'globalCommunicationsSite': ?globalCommunicationsSite?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetEdgeSiteResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeSiteResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalCommunicationsSite: (() { final guardedValue = map['globalCommunicationsSite']; if (guardedValue == null) return null; return EdgeSitesPropertiesResponseGlobalCommunicationsSite.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
