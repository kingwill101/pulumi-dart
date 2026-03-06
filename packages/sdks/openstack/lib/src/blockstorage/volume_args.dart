// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_scheduler_hint.dart';

/// {@template pulumi_blockstorage_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_volume_volume_args_doc}
class VolumeArgs {
  /// The availability zone for the volume.
  /// Changing this creates a new volume.
  final pulumi.Input<String>? availabilityZone;
  /// The backup ID from which to create the volume.
  /// Conflicts with `snapshot_id`, `source_vol_id`, `image_id`. Changing this
  /// creates a new volume. Requires microversion &gt;= 3.47.
  final pulumi.Input<String>? backupId;
  /// The consistency group to place the volume
  /// in.
  final pulumi.Input<String>? consistencyGroupId;
  /// A description of the volume. Changing this updates
  /// the volume's description.
  final pulumi.Input<String>? description;
  /// When this option is set it allows extending
  /// attached volumes. Note: updating size of an attached volume requires Cinder
  /// support for version 3.42 and a compatible storage driver.
  final pulumi.Input<bool>? enableOnlineResize;
  /// The image ID from which to create the volume.
  /// Conflicts with `snapshot_id`, `source_vol_id`, `backup_id`. Changing this
  /// creates a new volume.
  final pulumi.Input<String>? imageId;
  /// Metadata key/value pairs to associate with the volume.
  /// Changing this updates the existing volume metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// A unique name for the volume. Changing this updates the
  /// volume's name.
  final pulumi.Input<String>? name;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new volume.
  final pulumi.Input<String>? region;
  /// Provide the Cinder scheduler with hints on where
  /// to instantiate a volume in the OpenStack cloud. The available hints are described below.
  final pulumi.Input<List<VolumeSchedulerHint>>? schedulerHints;
  /// The size of the volume to create (in gigabytes).
  final pulumi.Input<int> size;
  /// The snapshot ID from which to create the volume.
  /// Conflicts with `source_vol_id`, `image_id`, `backup_id`. Changing this
  /// creates a new volume.
  final pulumi.Input<String>? snapshotId;
  /// The volume ID to replicate with.
  final pulumi.Input<String>? sourceReplica;
  /// The volume ID from which to create the volume.
  /// Conflicts with `snapshot_id`, `image_id`, `backup_id`. Changing this
  /// creates a new volume.
  final pulumi.Input<String>? sourceVolId;
  /// Migration policy when changing `volume_type`.
  /// `"never"` *(default)* prevents migration to another storage backend, while `"on-demand"`
  /// allows migration if needed. Applicable only when updating `volume_type`.
  final pulumi.Input<String>? volumeRetypePolicy;
  /// The type of volume to create or update.
  /// Changing this will attempt an in-place retype operation; migration depends on `volume_retype_policy`.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [VolumeArgs].
  /// [availabilityZone] The availability zone for the volume.
  /// [backupId] The backup ID from which to create the volume.
  /// [consistencyGroupId] The consistency group to place the volume
  /// [description] A description of the volume. Changing this updates
  /// [enableOnlineResize] When this option is set it allows extending
  /// [imageId] The image ID from which to create the volume.
  /// [metadata] Metadata key/value pairs to associate with the volume.
  /// [name] A unique name for the volume. Changing this updates the
  /// [region] The region in which to create the volume. If
  /// [schedulerHints] Provide the Cinder scheduler with hints on where
  /// [size] The size of the volume to create (in gigabytes).
  /// [snapshotId] The snapshot ID from which to create the volume.
  /// [sourceReplica] The volume ID to replicate with.
  /// [sourceVolId] The volume ID from which to create the volume.
  /// [volumeRetypePolicy] Migration policy when changing `volume_type`.
  /// [volumeType] The type of volume to create or update.
  const VolumeArgs({
    this.availabilityZone,
    this.backupId,
    this.consistencyGroupId,
    this.description,
    this.enableOnlineResize,
    this.imageId,
    this.metadata,
    this.name,
    this.region,
    this.schedulerHints,
    required this.size,
    this.snapshotId,
    this.sourceReplica,
    this.sourceVolId,
    this.volumeRetypePolicy,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'backupId': ?backupId,
      'consistencyGroupId': ?consistencyGroupId,
      'description': ?description,
      'enableOnlineResize': ?enableOnlineResize,
      'imageId': ?imageId,
      'metadata': ?metadata,
      'name': ?name,
      'region': ?region,
      'schedulerHints': ?pulumi.Input.mapOptionalInputValue<List<VolumeSchedulerHint>, List<Map<String, dynamic>>>(schedulerHints, (value) => pulumi.Input.encodeList<VolumeSchedulerHint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': size,
      'snapshotId': ?snapshotId,
      'sourceReplica': ?sourceReplica,
      'sourceVolId': ?sourceVolId,
      'volumeRetypePolicy': ?volumeRetypePolicy,
      'volumeType': ?volumeType,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consistencyGroupId: (() { final guardedValue = map['consistencyGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableOnlineResize: (() { final guardedValue = map['enableOnlineResize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulerHints: (() { final guardedValue = map['schedulerHints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeSchedulerHint>(guardedValue, (value) => VolumeSchedulerHint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceReplica: (() { final guardedValue = map['sourceReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceVolId: (() { final guardedValue = map['sourceVolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeRetypePolicy: (() { final guardedValue = map['volumeRetypePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

