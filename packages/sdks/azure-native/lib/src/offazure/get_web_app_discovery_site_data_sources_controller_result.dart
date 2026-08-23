// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppDiscoverySiteDataSourcesController.
class GetWebAppDiscoverySiteDataSourcesControllerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the discovery site Id.
  final String? discoverySiteId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// provisioning state enum
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWebAppDiscoverySiteDataSourcesControllerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoverySiteId] Gets or sets the discovery site Id.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] provisioning state enum
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebAppDiscoverySiteDataSourcesControllerResult({
    required this.azureApiVersion,
    this.discoverySiteId,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'discoverySiteId': ?discoverySiteId,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWebAppDiscoverySiteDataSourcesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDiscoverySiteDataSourcesControllerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      discoverySiteId: (() { final guardedValue = map['discoverySiteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
