// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_index_volume_volume_args_doc}
class VolumeArgs {
  /// A free-form text field up to a limit of 1024 bytes to describe a block storage volume.
  final pulumi.Input<String>? description;
  /// Filesystem type (`xfs` or `ext4`) for the block storage volume.
  final pulumi.Input<String>? filesystemType;
  /// Initial filesystem label for the block storage volume.
  final pulumi.Input<String>? initialFilesystemLabel;
  /// Initial filesystem type (`xfs` or `ext4`) for the block storage volume.
  final pulumi.Input<String>? initialFilesystemType;
  /// A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters. The name must begin with a letter.
  final pulumi.Input<String>? name;
  /// The region that the block storage volume will be created in.
  final pulumi.Input<String> region;
  /// The size of the block storage volume in GiB. If updated, can only be expanded.
  final pulumi.Input<int> size;
  /// The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limited on creation to that of the referenced snapshot
  final pulumi.Input<String>? snapshotId;
  /// A list of the tags to be applied to this Volume.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [VolumeArgs].
  /// [description] A free-form text field up to a limit of 1024 bytes to describe a block storage volume.
  /// [filesystemType] Filesystem type (`xfs` or `ext4`) for the block storage volume.
  /// [initialFilesystemLabel] Initial filesystem label for the block storage volume.
  /// [initialFilesystemType] Initial filesystem type (`xfs` or `ext4`) for the block storage volume.
  /// [name] A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters. The name must begin with a letter.
  /// [region] The region that the block storage volume will be created in.
  /// [size] The size of the block storage volume in GiB. If updated, can only be expanded.
  /// [snapshotId] The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limited on creation to that of the referenced snapshot
  /// [tags] A list of the tags to be applied to this Volume.
  const VolumeArgs({
    this.description,
    this.filesystemType,
    this.initialFilesystemLabel,
    this.initialFilesystemType,
    this.name,
    required this.region,
    required this.size,
    this.snapshotId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filesystemType': ?filesystemType,
      'initialFilesystemLabel': ?initialFilesystemLabel,
      'initialFilesystemType': ?initialFilesystemType,
      'name': ?name,
      'region': region,
      'size': size,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filesystemType: (() { final guardedValue = map['filesystemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialFilesystemLabel: (() { final guardedValue = map['initialFilesystemLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialFilesystemType: (() { final guardedValue = map['initialFilesystemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
