// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_storage_mover_args_doc}
/// The set of arguments for StorageMover.
/// {@endtemplate}
/// {@macro pulumi_storagemover_storage_mover_args_doc}
class StorageMoverArgs {
  /// A description for the Storage Mover.
  final pulumi.Input<String>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String>? storageMoverName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageMoverArgs].
  /// [description] A description for the Storage Mover.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  /// [tags] Resource tags.
  StorageMoverArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? storageMoverName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asOptionalInput<String>(storageMoverName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageMoverName: map['storageMoverName'] == null ? null : pulumi.Output.create<String>(map['storageMoverName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

