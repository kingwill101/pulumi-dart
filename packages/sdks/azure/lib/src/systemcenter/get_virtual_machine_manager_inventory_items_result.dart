// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_manager_inventory_items_inventory_item.dart';

/// Result data returned by getVirtualMachineManagerInventoryItems.
class GetVirtualMachineManagerInventoryItemsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// One or more `inventoryItems` blocks as defined below.
  final List<GetVirtualMachineManagerInventoryItemsInventoryItem>? inventoryItems;
  final String? inventoryType;
  final String? systemCenterVirtualMachineManagerServerId;

  /// Creates a new [GetVirtualMachineManagerInventoryItemsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inventoryItems] One or more `inventoryItems` blocks as defined below.
  /// [inventoryType] Optional.
  /// [systemCenterVirtualMachineManagerServerId] Optional.
  const GetVirtualMachineManagerInventoryItemsResult({
    this.id,
    this.inventoryItems,
    this.inventoryType,
    this.systemCenterVirtualMachineManagerServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'inventoryItems': ?(() { final guardedValue = inventoryItems; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualMachineManagerInventoryItemsInventoryItem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inventoryType': ?inventoryType,
      'systemCenterVirtualMachineManagerServerId': ?systemCenterVirtualMachineManagerServerId,
    };
  }

  factory GetVirtualMachineManagerInventoryItemsResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineManagerInventoryItemsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItems: (() { final guardedValue = map['inventoryItems']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualMachineManagerInventoryItemsInventoryItem>(guardedValue, (value) => GetVirtualMachineManagerInventoryItemsInventoryItem.fromMap((value as Map).cast<String, dynamic>())); })(),
      inventoryType: (() { final guardedValue = map['inventoryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemCenterVirtualMachineManagerServerId: (() { final guardedValue = map['systemCenterVirtualMachineManagerServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
