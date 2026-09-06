// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAPICollectionByAzureApiManagementService.
class GetAPICollectionByAzureApiManagementServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The base URI for this API collection. All endpoints of this API collection extend this base URI.
  final String? baseUrl;
  /// The resource Id of the resource from where this API collection was discovered.
  final String? discoveredVia;
  /// The display name of the API collection.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The number of API endpoints discovered in this API collection.
  final double? numberOfApiEndpoints;
  /// The number of API endpoints in this API collection which are exposing sensitive data in their requests and/or responses.
  final double? numberOfApiEndpointsWithSensitiveDataExposed;
  /// The number of API endpoints in this API collection for which API traffic from the internet was observed.
  final double? numberOfExternalApiEndpoints;
  /// The number of API endpoints in this API collection that have not received any API traffic in the last 30 days.
  final double? numberOfInactiveApiEndpoints;
  /// The number of API endpoints in this API collection that are unauthenticated.
  final double? numberOfUnauthenticatedApiEndpoints;
  /// Gets the provisioning state of the API collection.
  final String? provisioningState;
  /// The highest priority sensitivity label from Microsoft Purview in this API collection.
  final String? sensitivityLabel;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAPICollectionByAzureApiManagementServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [baseUrl] The base URI for this API collection. All endpoints of this API collection extend this base URI.
  /// [discoveredVia] The resource Id of the resource from where this API collection was discovered.
  /// [displayName] The display name of the API collection.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [numberOfApiEndpoints] The number of API endpoints discovered in this API collection.
  /// [numberOfApiEndpointsWithSensitiveDataExposed] The number of API endpoints in this API collection which are exposing sensitive data in their requests and/or responses.
  /// [numberOfExternalApiEndpoints] The number of API endpoints in this API collection for which API traffic from the internet was observed.
  /// [numberOfInactiveApiEndpoints] The number of API endpoints in this API collection that have not received any API traffic in the last 30 days.
  /// [numberOfUnauthenticatedApiEndpoints] The number of API endpoints in this API collection that are unauthenticated.
  /// [provisioningState] Gets the provisioning state of the API collection.
  /// [sensitivityLabel] The highest priority sensitivity label from Microsoft Purview in this API collection.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAPICollectionByAzureApiManagementServiceResult({
    this.azureApiVersion,
    this.baseUrl,
    this.discoveredVia,
    this.displayName,
    this.id,
    this.name,
    this.numberOfApiEndpoints,
    this.numberOfApiEndpointsWithSensitiveDataExposed,
    this.numberOfExternalApiEndpoints,
    this.numberOfInactiveApiEndpoints,
    this.numberOfUnauthenticatedApiEndpoints,
    this.provisioningState,
    this.sensitivityLabel,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'baseUrl': ?baseUrl,
      'discoveredVia': ?discoveredVia,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'numberOfApiEndpoints': ?numberOfApiEndpoints,
      'numberOfApiEndpointsWithSensitiveDataExposed': ?numberOfApiEndpointsWithSensitiveDataExposed,
      'numberOfExternalApiEndpoints': ?numberOfExternalApiEndpoints,
      'numberOfInactiveApiEndpoints': ?numberOfInactiveApiEndpoints,
      'numberOfUnauthenticatedApiEndpoints': ?numberOfUnauthenticatedApiEndpoints,
      'provisioningState': ?provisioningState,
      'sensitivityLabel': ?sensitivityLabel,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAPICollectionByAzureApiManagementServiceResult.fromMap(Map<String, dynamic> map) {
    return GetAPICollectionByAzureApiManagementServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveredVia: (() { final guardedValue = map['discoveredVia']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfApiEndpoints: (() { final guardedValue = map['numberOfApiEndpoints']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numberOfApiEndpointsWithSensitiveDataExposed: (() { final guardedValue = map['numberOfApiEndpointsWithSensitiveDataExposed']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numberOfExternalApiEndpoints: (() { final guardedValue = map['numberOfExternalApiEndpoints']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numberOfInactiveApiEndpoints: (() { final guardedValue = map['numberOfInactiveApiEndpoints']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numberOfUnauthenticatedApiEndpoints: (() { final guardedValue = map['numberOfUnauthenticatedApiEndpoints']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensitivityLabel: (() { final guardedValue = map['sensitivityLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
