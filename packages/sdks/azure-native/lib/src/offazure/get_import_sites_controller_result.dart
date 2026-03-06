// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getImportSitesController.
class GetImportSitesControllerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  final String? discoverySolutionId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Gets the Master Site this site is linked to.
  final String masterSiteId;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Gets the service endpoint.
  final String serviceEndpoint;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetImportSitesControllerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoverySolutionId] Gets or sets the ARM ID of migration hub solution for SDS.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [masterSiteId] Gets the Master Site this site is linked to.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [serviceEndpoint] Gets the service endpoint.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetImportSitesControllerResult({
    required this.azureApiVersion,
    this.discoverySolutionId,
    required this.id,
    required this.location,
    required this.masterSiteId,
    required this.name,
    this.provisioningState,
    required this.serviceEndpoint,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'discoverySolutionId': ?discoverySolutionId,
      'id': id,
      'location': location,
      'masterSiteId': masterSiteId,
      'name': name,
      'provisioningState': ?provisioningState,
      'serviceEndpoint': serviceEndpoint,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetImportSitesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetImportSitesControllerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      discoverySolutionId: (() { final guardedValue = map['discoverySolutionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      masterSiteId: map['masterSiteId'] as String,
      name: map['name'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceEndpoint: map['serviceEndpoint'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

