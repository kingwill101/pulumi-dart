// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeSnapshot resources.
class VolumeSnapshotState {
  /// The date and time the volume snapshot was created.
  final pulumi.Input<String>? createdAt;
  /// The minimum size in gigabytes required for a volume to be created based on this volume snapshot.
  final pulumi.Input<int>? minDiskSize;
  /// A name for the volume snapshot.
  final pulumi.Input<String>? name;
  /// A list of DigitalOcean region "slugs" indicating where the volume snapshot is available.
  final pulumi.Input<List<String>>? regions;
  /// The billable size of the volume snapshot in gigabytes.
  final pulumi.Input<double>? size;
  /// A list of the tags to be applied to this volume snapshot.
  final pulumi.Input<List<String>>? tags;
  /// The ID of the volume from which the volume snapshot originated.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [VolumeSnapshotState].
  /// [createdAt] The date and time the volume snapshot was created.
  /// [minDiskSize] The minimum size in gigabytes required for a volume to be created based on this volume snapshot.
  /// [name] A name for the volume snapshot.
  /// [regions] A list of DigitalOcean region "slugs" indicating where the volume snapshot is available.
  /// [size] The billable size of the volume snapshot in gigabytes.
  /// [tags] A list of the tags to be applied to this volume snapshot.
  /// [volumeId] The ID of the volume from which the volume snapshot originated.
  VolumeSnapshotState({
    pulumi.Output<String>? createdAt,
    pulumi.Output<int>? minDiskSize,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? regions,
    pulumi.Output<double>? size,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? volumeId,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      minDiskSize = pulumi.Input.asOptionalInput<int>(minDiskSize),
      name = pulumi.Input.asOptionalInput<String>(name),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      size = pulumi.Input.asOptionalInput<double>(size),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'minDiskSize': ?minDiskSize,
      'name': ?name,
      'regions': ?regions,
      'size': ?size,
      'tags': ?tags,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeSnapshotState.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotState(
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      minDiskSize: map['minDiskSize'] == null ? null : pulumi.Output.create<int>(map['minDiskSize'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
      size: map['size'] == null ? null : pulumi.Output.create<double>(map['size'] as double),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

