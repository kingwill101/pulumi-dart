// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualMachineManagerInventoryItemsInventoryItem {
  /// The ID of the System Center Virtual Machine Manager Inventory Item.
  final pulumi.Input<String> id;
  /// The name of the System Center Virtual Machine Manager Inventory Item.
  final pulumi.Input<String> name;
  /// The UUID of the System Center Virtual Machine Manager Inventory Item that is assigned by System Center Virtual Machine Manager.
  final pulumi.Input<String> uuid;

  /// Creates a new [GetVirtualMachineManagerInventoryItemsInventoryItem].
  /// [id] The ID of the System Center Virtual Machine Manager Inventory Item.
  /// [name] The name of the System Center Virtual Machine Manager Inventory Item.
  /// [uuid] The UUID of the System Center Virtual Machine Manager Inventory Item that is assigned by System Center Virtual Machine Manager.
  GetVirtualMachineManagerInventoryItemsInventoryItem({
    required this.id,
    required this.name,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'uuid': uuid,
    };
  }

  factory GetVirtualMachineManagerInventoryItemsInventoryItem.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineManagerInventoryItemsInventoryItem(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

