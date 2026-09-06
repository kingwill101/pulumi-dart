// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getInventoryItem.
class GetInventoryItemResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Gets the Managed Object name in VMM for the inventory item.
  final String? inventoryItemName;
  /// They inventory type.
  final String? inventoryType;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets the tracked resource id corresponding to the inventory resource.
  final String? managedResourceId;
  /// The name of the resource
  final String? name;
  /// Gets the provisioning state.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Gets the UUID (which is assigned by VMM) for the inventory item.
  final String? uuid;

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
  const GetInventoryItemResult({
    this.azureApiVersion,
    this.id,
    this.inventoryItemName,
    this.inventoryType,
    this.kind,
    this.managedResourceId,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'inventoryItemName': ?inventoryItemName,
      'inventoryType': ?inventoryType,
      'kind': ?kind,
      'managedResourceId': ?managedResourceId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory GetInventoryItemResult.fromMap(Map<String, dynamic> map) {
    return GetInventoryItemResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItemName: (() { final guardedValue = map['inventoryItemName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryType: (() { final guardedValue = map['inventoryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceId: (() { final guardedValue = map['managedResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
