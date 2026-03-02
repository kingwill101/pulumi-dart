// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Volume resources.
class VolumeState {
  /// A free-form text field up to a limit of 1024 bytes to describe a block storage volume.
  final pulumi.Input<String>? description;
  /// A list of associated droplet ids.
  final pulumi.Input<List<int>>? dropletIds;
  /// Filesystem label for the block storage volume.
  final pulumi.Input<String>? filesystemLabel;
  /// Filesystem type (`xfs` or `ext4`) for the block storage volume.
  final pulumi.Input<String>? filesystemType;
  /// Initial filesystem label for the block storage volume.
  final pulumi.Input<String>? initialFilesystemLabel;
  /// Initial filesystem type (`xfs` or `ext4`) for the block storage volume.
  final pulumi.Input<String>? initialFilesystemType;
  /// A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters. The name must begin with a letter.
  final pulumi.Input<String>? name;
  /// The region that the block storage volume will be created in.
  final pulumi.Input<String>? region;
  /// The size of the block storage volume in GiB. If updated, can only be expanded.
  final pulumi.Input<int>? size;
  /// The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limited on creation to that of the referenced snapshot
  final pulumi.Input<String>? snapshotId;
  /// A list of the tags to be applied to this Volume.
  final pulumi.Input<List<String>>? tags;
  /// The uniform resource name for the volume.
  final pulumi.Input<String>? volumeUrn;

  /// Creates a new [VolumeState].
  /// [description] A free-form text field up to a limit of 1024 bytes to describe a block storage volume.
  /// [dropletIds] A list of associated droplet ids.
  /// [filesystemLabel] Filesystem label for the block storage volume.
  /// [filesystemType] Filesystem type (`xfs` or `ext4`) for the block storage volume.
  /// [initialFilesystemLabel] Initial filesystem label for the block storage volume.
  /// [initialFilesystemType] Initial filesystem type (`xfs` or `ext4`) for the block storage volume.
  /// [name] A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters. The name must begin with a letter.
  /// [region] The region that the block storage volume will be created in.
  /// [size] The size of the block storage volume in GiB. If updated, can only be expanded.
  /// [snapshotId] The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limited on creation to that of the referenced snapshot
  /// [tags] A list of the tags to be applied to this Volume.
  /// [volumeUrn] The uniform resource name for the volume.
  VolumeState({
    this.description,
    this.dropletIds,
    this.filesystemLabel,
    this.filesystemType,
    this.initialFilesystemLabel,
    this.initialFilesystemType,
    this.name,
    this.region,
    this.size,
    this.snapshotId,
    this.tags,
    this.volumeUrn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dropletIds': ?dropletIds,
      'filesystemLabel': ?filesystemLabel,
      'filesystemType': ?filesystemType,
      'initialFilesystemLabel': ?initialFilesystemLabel,
      'initialFilesystemType': ?initialFilesystemType,
      'name': ?name,
      'region': ?region,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'volumeUrn': ?volumeUrn,
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dropletIds: map['dropletIds'] == null ? null : ((map['dropletIds']! as List).cast<int>()).input(),
      filesystemLabel: map['filesystemLabel'] == null ? null : (map['filesystemLabel']! as String).input(),
      filesystemType: map['filesystemType'] == null ? null : (map['filesystemType']! as String).input(),
      initialFilesystemLabel: map['initialFilesystemLabel'] == null ? null : (map['initialFilesystemLabel']! as String).input(),
      initialFilesystemType: map['initialFilesystemType'] == null ? null : (map['initialFilesystemType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      volumeUrn: map['volumeUrn'] == null ? null : (map['volumeUrn']! as String).input(),
    );
  }
}

