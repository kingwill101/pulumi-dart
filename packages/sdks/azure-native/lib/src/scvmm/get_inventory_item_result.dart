// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getInventoryItem.
class GetInventoryItemResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Gets the Managed Object name in VMM for the inventory item.
  final String inventoryItemName;
  /// They inventory type.
  final String inventoryType;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets the tracked resource id corresponding to the inventory resource.
  final String managedResourceId;
  /// The name of the resource
  final String name;
  /// Gets the provisioning state.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets the UUID (which is assigned by VMM) for the inventory item.
  final String uuid;

  /// Creates a new [GetInventoryItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [inventoryItemName] Gets the Managed Object name in VMM for the inventory item.
  /// [inventoryType] They inventory type.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [managedResourceId] Gets the tracked resource id corresponding to the inventory resource.
  /// [name] The name of the resource
  /// [provisioningState] Gets the provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Gets the UUID (which is assigned by VMM) for the inventory item.
  GetInventoryItemResult({
    required this.azureApiVersion,
    required this.id,
    required this.inventoryItemName,
    required this.inventoryType,
    this.kind,
    required this.managedResourceId,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'inventoryItemName': inventoryItemName,
      'inventoryType': inventoryType,
      'kind': ?kind,
      'managedResourceId': managedResourceId,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'uuid': uuid,
    };
  }

  factory GetInventoryItemResult.fromMap(Map<String, dynamic> map) {
    return GetInventoryItemResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      inventoryItemName: map['inventoryItemName'] as String,
      inventoryType: map['inventoryType'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      managedResourceId: map['managedResourceId'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

