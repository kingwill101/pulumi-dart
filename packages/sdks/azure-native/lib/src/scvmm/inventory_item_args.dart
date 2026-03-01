// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_inventory_item_args_doc}
/// The set of arguments for InventoryItem.
/// {@endtemplate}
/// {@macro pulumi_scvmm_inventory_item_args_doc}
class InventoryItemArgs {
  /// Name of the inventoryItem.
  final pulumi.Input<String>? inventoryItemName;
  /// They inventory type.
  final pulumi.Input<String> inventoryType;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the VMMServer.
  final pulumi.Input<String> vmmServerName;

  /// Creates a new [InventoryItemArgs].
  /// [inventoryItemName] Name of the inventoryItem.
  /// [inventoryType] They inventory type.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [resourceGroupName] The name of the resource group.
  /// [vmmServerName] Name of the VMMServer.
  InventoryItemArgs({
    pulumi.Output<String>? inventoryItemName,
    required pulumi.Output<String> inventoryType,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmmServerName,
  }) :
      inventoryItemName = pulumi.Input.asOptionalInput<String>(inventoryItemName),
      inventoryType = pulumi.Input.asInput<String>(inventoryType),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmmServerName = pulumi.Input.asInput<String>(vmmServerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryItemName': ?inventoryItemName,
      'inventoryType': inventoryType,
      'kind': ?kind,
      'resourceGroupName': resourceGroupName,
      'vmmServerName': vmmServerName,
    };
  }

  factory InventoryItemArgs.fromMap(Map<String, dynamic> map) {
    return InventoryItemArgs(
      inventoryItemName: map['inventoryItemName'] == null ? null : pulumi.Output.create<String>(map['inventoryItemName'] as String),
      inventoryType: pulumi.Output.create<String>(map['inventoryType'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmmServerName: pulumi.Output.create<String>(map['vmmServerName'] as String),
    );
  }
}

