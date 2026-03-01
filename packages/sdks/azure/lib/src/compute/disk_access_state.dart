// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DiskAccess resources.
class DiskAccessState {
  /// The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Disk Access.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskAccessState].
  /// [location] The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created.
  /// [name] The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created.
  /// [resourceGroupName] The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created.
  /// [tags] A mapping of tags which should be assigned to the Disk Access.
  DiskAccessState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DiskAccessState.fromMap(Map<String, dynamic> map) {
    return DiskAccessState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

