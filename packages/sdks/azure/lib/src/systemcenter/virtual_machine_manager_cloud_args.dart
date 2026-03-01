// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_systemcenter_virtual_machine_manager_cloud_virtual_machine_manager_cloud_args_doc}
/// The set of arguments for VirtualMachineManagerCloud.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_virtual_machine_manager_cloud_virtual_machine_manager_cloud_args_doc}
class VirtualMachineManagerCloudArgs {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// The Azure Region where the System Center Virtual Machine Manager Cloud should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the System Center Virtual Machine Cloud should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  final pulumi.Input<String> systemCenterVirtualMachineManagerServerInventoryItemId;
  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Cloud.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachineManagerCloudArgs].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Cloud should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Cloud should exist. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerServerInventoryItemId] The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Cloud.
  VirtualMachineManagerCloudArgs({
    required pulumi.Output<String> customLocationId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> systemCenterVirtualMachineManagerServerInventoryItemId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customLocationId = pulumi.Input.asInput<String>(customLocationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      systemCenterVirtualMachineManagerServerInventoryItemId = pulumi.Input.asInput<String>(systemCenterVirtualMachineManagerServerInventoryItemId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory VirtualMachineManagerCloudArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerCloudArgs(
      customLocationId: pulumi.Output.create<String>(map['customLocationId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      systemCenterVirtualMachineManagerServerInventoryItemId: pulumi.Output.create<String>(map['systemCenterVirtualMachineManagerServerInventoryItemId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

