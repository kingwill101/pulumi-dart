// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_volume_snapshot_volume_snapshot_args_doc}
/// The set of arguments for VolumeSnapshot.
/// {@endtemplate}
/// {@macro pulumi_index_volume_snapshot_volume_snapshot_args_doc}
class VolumeSnapshotArgs {
  /// A name for the volume snapshot.
  final pulumi.Input<String>? name;
  /// A list of the tags to be applied to this volume snapshot.
  final pulumi.Input<List<String>>? tags;
  /// The ID of the volume from which the volume snapshot originated.
  final pulumi.Input<String> volumeId;

  /// Creates a new [VolumeSnapshotArgs].
  /// [name] A name for the volume snapshot.
  /// [tags] A list of the tags to be applied to this volume snapshot.
  /// [volumeId] The ID of the volume from which the volume snapshot originated.
  VolumeSnapshotArgs({
    this.name,
    this.tags,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tags': ?tags,
      'volumeId': volumeId,
    };
  }

  factory VolumeSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}

