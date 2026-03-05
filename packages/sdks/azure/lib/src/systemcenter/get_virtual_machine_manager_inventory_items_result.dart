// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_manager_inventory_items_inventory_item.dart';

/// Result data returned by getVirtualMachineManagerInventoryItems.
class GetVirtualMachineManagerInventoryItemsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// One or more `inventory_items` blocks as defined below.
  final List<GetVirtualMachineManagerInventoryItemsInventoryItem> inventoryItems;
  final String inventoryType;
  final String systemCenterVirtualMachineManagerServerId;

  /// Creates a new [GetVirtualMachineManagerInventoryItemsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inventoryItems] One or more `inventory_items` blocks as defined below.
  /// [inventoryType] Required.
  /// [systemCenterVirtualMachineManagerServerId] Required.
  GetVirtualMachineManagerInventoryItemsResult({
    required this.id,
    required this.inventoryItems,
    required this.inventoryType,
    required this.systemCenterVirtualMachineManagerServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'inventoryItems': pulumi.Input.encodeList<GetVirtualMachineManagerInventoryItemsInventoryItem, Map<String, dynamic>>(inventoryItems, (value) => value.toMap()),
      'inventoryType': inventoryType,
      'systemCenterVirtualMachineManagerServerId': systemCenterVirtualMachineManagerServerId,
    };
  }

  factory GetVirtualMachineManagerInventoryItemsResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineManagerInventoryItemsResult(
      id: map['id'] as String,
      inventoryItems: pulumi.Input.decodeList<GetVirtualMachineManagerInventoryItemsInventoryItem>(map['inventoryItems']!, (value) => GetVirtualMachineManagerInventoryItemsInventoryItem.fromMap((value as Map).cast<String, dynamic>())),
      inventoryType: map['inventoryType'] as String,
      systemCenterVirtualMachineManagerServerId: map['systemCenterVirtualMachineManagerServerId'] as String,
    );
  }
}

