// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualMachineManagerCloud resources.
class VirtualMachineManagerCloudState {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;

  /// The Azure Region where the System Center Virtual Machine Manager Cloud should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// The name of the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the System Center Virtual Machine Cloud should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  final pulumi.Input<String>?
  systemCenterVirtualMachineManagerServerInventoryItemId;

  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Cloud.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachineManagerCloudState].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Cloud should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Cloud should exist. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerServerInventoryItemId] The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Cloud.
  VirtualMachineManagerCloudState({
    this.customLocationId,
    this.location,
    this.name,
    this.resourceGroupName,
    this.systemCenterVirtualMachineManagerServerInventoryItemId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'systemCenterVirtualMachineManagerServerInventoryItemId':
          ?systemCenterVirtualMachineManagerServerInventoryItemId,
      'tags': ?tags,
    };
  }

  factory VirtualMachineManagerCloudState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerCloudState(
      customLocationId: (() {
        final guardedValue = map['customLocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemCenterVirtualMachineManagerServerInventoryItemId: (() {
        final guardedValue =
            map['systemCenterVirtualMachineManagerServerInventoryItemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
