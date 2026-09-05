// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_mover_args_doc}
/// The set of arguments for Mover.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_mover_args_doc}
class MoverArgs {
  /// A description for the Storage Mover.
  final pulumi.Input<String?>? description;
  /// Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Storage Mover.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [MoverArgs].
  /// [description] A description for the Storage Mover.
  /// [location] Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  /// [name] Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  /// [tags] A mapping of tags which should be assigned to the Storage Mover.
  const MoverArgs({
    this.description,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MoverArgs.fromMap(Map<String, dynamic> map) {
    return MoverArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
