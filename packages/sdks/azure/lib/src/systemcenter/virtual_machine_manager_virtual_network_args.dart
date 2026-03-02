// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_systemcenter_virtual_machine_manager_virtual_network_virtual_machine_manager_virtual_network_args_doc}
/// The set of arguments for VirtualMachineManagerVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_virtual_machine_manager_virtual_network_virtual_machine_manager_virtual_network_args_doc}
class VirtualMachineManagerVirtualNetworkArgs {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Network. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// The Azure Region where the System Center Virtual Machine Manager Virtual Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the System Center Virtual Machine Manager Virtual Network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the System Center Virtual Machine Virtual Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  final pulumi.Input<String> systemCenterVirtualMachineManagerServerInventoryItemId;
  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Virtual Network.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachineManagerVirtualNetworkArgs].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Network. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Virtual Network should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Virtual Network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Virtual Network should exist. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerServerInventoryItemId] The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Virtual Network.
  VirtualMachineManagerVirtualNetworkArgs({
    required this.customLocationId,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.systemCenterVirtualMachineManagerServerInventoryItemId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'systemCenterVirtualMachineManagerServerInventoryItemId': systemCenterVirtualMachineManagerServerInventoryItemId,
      'tags': ?tags,
    };
  }

  factory VirtualMachineManagerVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualNetworkArgs(
      customLocationId: (map['customLocationId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      systemCenterVirtualMachineManagerServerInventoryItemId: (map['systemCenterVirtualMachineManagerServerInventoryItemId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

