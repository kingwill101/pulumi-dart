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
    pulumi.Output<String>? description,
    pulumi.Output<List<int>>? dropletIds,
    pulumi.Output<String>? filesystemLabel,
    pulumi.Output<String>? filesystemType,
    pulumi.Output<String>? initialFilesystemLabel,
    pulumi.Output<String>? initialFilesystemType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<int>? size,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? volumeUrn,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dropletIds = pulumi.Input.asOptionalInput<List<int>>(dropletIds),
      filesystemLabel = pulumi.Input.asOptionalInput<String>(filesystemLabel),
      filesystemType = pulumi.Input.asOptionalInput<String>(filesystemType),
      initialFilesystemLabel = pulumi.Input.asOptionalInput<String>(initialFilesystemLabel),
      initialFilesystemType = pulumi.Input.asOptionalInput<String>(initialFilesystemType),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      volumeUrn = pulumi.Input.asOptionalInput<String>(volumeUrn);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dropletIds: map['dropletIds'] == null ? null : pulumi.Output.create<List<int>>((map['dropletIds'] as List).cast<int>()),
      filesystemLabel: map['filesystemLabel'] == null ? null : pulumi.Output.create<String>(map['filesystemLabel'] as String),
      filesystemType: map['filesystemType'] == null ? null : pulumi.Output.create<String>(map['filesystemType'] as String),
      initialFilesystemLabel: map['initialFilesystemLabel'] == null ? null : pulumi.Output.create<String>(map['initialFilesystemLabel'] as String),
      initialFilesystemType: map['initialFilesystemType'] == null ? null : pulumi.Output.create<String>(map['initialFilesystemType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      volumeUrn: map['volumeUrn'] == null ? null : pulumi.Output.create<String>(map['volumeUrn'] as String),
    );
  }
}

