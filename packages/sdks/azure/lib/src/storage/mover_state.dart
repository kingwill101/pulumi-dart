// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Mover resources.
class MoverState {
  /// A description for the Storage Mover.
  final pulumi.Input<String>? description;
  /// Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Storage Mover.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MoverState].
  /// [description] A description for the Storage Mover.
  /// [location] Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  /// [name] Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  /// [tags] A mapping of tags which should be assigned to the Storage Mover.
  MoverState({
    this.description,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MoverState.fromMap(Map<String, dynamic> map) {
    return MoverState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

