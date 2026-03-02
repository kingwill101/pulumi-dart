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
    this.createdAt,
    this.minDiskSize,
    this.name,
    this.regions,
    this.size,
    this.tags,
    this.volumeId,
  });

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
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      minDiskSize: map['minDiskSize'] == null ? null : (map['minDiskSize']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      regions: map['regions'] == null ? null : ((map['regions']! as List).cast<String>()).input(),
      size: map['size'] == null ? null : (map['size']! as double).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as String).input(),
    );
  }
}

