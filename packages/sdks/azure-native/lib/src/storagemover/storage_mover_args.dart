// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_storage_mover_args_doc}
/// The set of arguments for StorageMover.
/// {@endtemplate}
/// {@macro pulumi_storagemover_storage_mover_args_doc}
class StorageMoverArgs {
  /// A description for the Storage Mover.
  final pulumi.Input<String?>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String?>? storageMoverName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StorageMoverArgs].
  /// [description] A description for the Storage Mover.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  /// [tags] Resource tags.
  const StorageMoverArgs({
    this.description,
    this.location,
    required this.resourceGroupName,
    this.storageMoverName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': ?storageMoverName,
      'tags': ?tags,
    };
  }

  factory StorageMoverArgs.fromMap(Map<String, dynamic> map) {
    return StorageMoverArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageMoverName: (() { final guardedValue = map['storageMoverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
