// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_systemcenter_get_virtual_machine_manager_inventory_items_get_virtual_machine_manager_inventory_items_args_doc}
/// Arguments for getVirtualMachineManagerInventoryItems.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_get_virtual_machine_manager_inventory_items_get_virtual_machine_manager_inventory_items_args_doc}
class GetVirtualMachineManagerInventoryItemsArgs {
  /// The inventory type of the System Center Virtual Machine Manager Inventory Item. Possible values are `Cloud`, `VirtualMachine`, `VirtualMachineTemplate` and `VirtualNetwork`.
  final pulumi.Input<String> inventoryType;
  /// The ID of the System Center Virtual Machine Manager Server.
  final pulumi.Input<String> systemCenterVirtualMachineManagerServerId;

  /// Creates a new [GetVirtualMachineManagerInventoryItemsArgs].
  /// [inventoryType] The inventory type of the System Center Virtual Machine Manager Inventory Item. Possible values are `Cloud`, `VirtualMachine`, `VirtualMachineTemplate` and `VirtualNetwork`.
  /// [systemCenterVirtualMachineManagerServerId] The ID of the System Center Virtual Machine Manager Server.
  GetVirtualMachineManagerInventoryItemsArgs({
    required this.inventoryType,
    required this.systemCenterVirtualMachineManagerServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryType': inventoryType,
      'systemCenterVirtualMachineManagerServerId': systemCenterVirtualMachineManagerServerId,
    };
  }

  factory GetVirtualMachineManagerInventoryItemsArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineManagerInventoryItemsArgs(
      inventoryType: pulumi.Input.fromValue(map['inventoryType'] as String),
      systemCenterVirtualMachineManagerServerId: pulumi.Input.fromValue(map['systemCenterVirtualMachineManagerServerId'] as String),
    );
  }
}

