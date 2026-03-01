// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_restore_point_collection_restore_point_collection_args_doc}
/// The set of arguments for RestorePointCollection.
/// {@endtemplate}
/// {@macro pulumi_compute_restore_point_collection_restore_point_collection_args_doc}
class RestorePointCollectionArgs {
  /// The Azure location where the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the virtual machine that will be associated with this Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceVirtualMachineId;
  /// A mapping of tags which should be assigned to this Virtual Machine Restore Point Collection.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RestorePointCollectionArgs].
  /// [location] The Azure location where the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Virtual Machine Restore Point Collection should exist. Changing this forces a new resource to be created.
  /// [sourceVirtualMachineId] The ID of the virtual machine that will be associated with this Virtual Machine Restore Point Collection. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine Restore Point Collection.
  RestorePointCollectionArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceVirtualMachineId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceVirtualMachineId = pulumi.Input.asInput<String>(sourceVirtualMachineId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sourceVirtualMachineId': sourceVirtualMachineId,
      'tags': ?tags,
    };
  }

  factory RestorePointCollectionArgs.fromMap(Map<String, dynamic> map) {
    return RestorePointCollectionArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceVirtualMachineId: pulumi.Output.create<String>(map['sourceVirtualMachineId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

