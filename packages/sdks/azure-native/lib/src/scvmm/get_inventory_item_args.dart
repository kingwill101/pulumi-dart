// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_inventory_item_args_doc}
/// Arguments for getInventoryItem.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_inventory_item_args_doc}
class GetInventoryItemArgs {
  /// Name of the inventoryItem.
  final pulumi.Input<String> inventoryItemName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the VMMServer.
  final pulumi.Input<String> vmmServerName;

  /// Creates a new [GetInventoryItemArgs].
  /// [inventoryItemName] Name of the inventoryItem.
  /// [resourceGroupName] The name of the resource group.
  /// [vmmServerName] Name of the VMMServer.
  GetInventoryItemArgs({
    required pulumi.Output<String> inventoryItemName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmmServerName,
  }) :
      inventoryItemName = pulumi.Input.asInput<String>(inventoryItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmmServerName = pulumi.Input.asInput<String>(vmmServerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryItemName': inventoryItemName,
      'resourceGroupName': resourceGroupName,
      'vmmServerName': vmmServerName,
    };
  }

  factory GetInventoryItemArgs.fromMap(Map<String, dynamic> map) {
    return GetInventoryItemArgs(
      inventoryItemName: pulumi.Output.create<String>(map['inventoryItemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmmServerName: pulumi.Output.create<String>(map['vmmServerName'] as String),
    );
  }
}

