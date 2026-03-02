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
    this.location,
    this.name,
    this.resourceGroupName,
    this.sourceVirtualMachineId,
    this.tags,
  });

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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      sourceVirtualMachineId: map['sourceVirtualMachineId'] == null ? null : (map['sourceVirtualMachineId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

