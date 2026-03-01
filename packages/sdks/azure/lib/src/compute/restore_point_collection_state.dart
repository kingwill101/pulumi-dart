// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RestorePointCollection resources.
class RestorePointCollectionState {
  /// The Azure location where the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the virtual machine that will be associated with this Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceVirtualMachineId;
  /// A mapping of tags which should be assigned to this Virtual Machine Restore Point Collection.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RestorePointCollectionState].
  /// [location] The Azure location where the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  /// [sourceVirtualMachineId] The ID of the virtual machine that will be associated with this Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine Restore Point Collection.
  RestorePointCollectionState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sourceVirtualMachineId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sourceVirtualMachineId = pulumi.Input.asOptionalInput<String>(sourceVirtualMachineId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sourceVirtualMachineId': ?sourceVirtualMachineId,
      'tags': ?tags,
    };
  }

  factory RestorePointCollectionState.fromMap(Map<String, dynamic> map) {
    return RestorePointCollectionState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceVirtualMachineId: map['sourceVirtualMachineId'] == null ? null : pulumi.Output.create<String>(map['sourceVirtualMachineId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

