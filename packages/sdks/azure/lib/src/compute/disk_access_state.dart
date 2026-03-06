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
  const DiskAccessState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

