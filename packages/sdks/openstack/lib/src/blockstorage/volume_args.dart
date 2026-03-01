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
  /// creates a new volume. Requires microversion >= 3.47.
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
  VolumeArgs({
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? backupId,
    pulumi.Output<String>? consistencyGroupId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableOnlineResize,
    pulumi.Output<String>? imageId,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<VolumeSchedulerHint>>? schedulerHints,
    required pulumi.Output<int> size,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? sourceReplica,
    pulumi.Output<String>? sourceVolId,
    pulumi.Output<String>? volumeRetypePolicy,
    pulumi.Output<String>? volumeType,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      backupId = pulumi.Input.asOptionalInput<String>(backupId),
      consistencyGroupId = pulumi.Input.asOptionalInput<String>(consistencyGroupId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableOnlineResize = pulumi.Input.asOptionalInput<bool>(enableOnlineResize),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedulerHints = pulumi.Input.asOptionalInput<List<VolumeSchedulerHint>>(schedulerHints),
      size = pulumi.Input.asInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      sourceReplica = pulumi.Input.asOptionalInput<String>(sourceReplica),
      sourceVolId = pulumi.Input.asOptionalInput<String>(sourceVolId),
      volumeRetypePolicy = pulumi.Input.asOptionalInput<String>(volumeRetypePolicy),
      volumeType = pulumi.Input.asOptionalInput<String>(volumeType);

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
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      backupId: map['backupId'] == null ? null : pulumi.Output.create<String>(map['backupId'] as String),
      consistencyGroupId: map['consistencyGroupId'] == null ? null : pulumi.Output.create<String>(map['consistencyGroupId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableOnlineResize: map['enableOnlineResize'] == null ? null : pulumi.Output.create<bool>(map['enableOnlineResize'] as bool),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedulerHints: map['schedulerHints'] == null ? null : pulumi.Output.create<List<VolumeSchedulerHint>>(pulumi.Input.decodeList<VolumeSchedulerHint>(map['schedulerHints'], (value) => VolumeSchedulerHint.fromMap((value as Map).cast<String, dynamic>()))),
      size: pulumi.Output.create<int>(map['size'] as int),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      sourceReplica: map['sourceReplica'] == null ? null : pulumi.Output.create<String>(map['sourceReplica'] as String),
      sourceVolId: map['sourceVolId'] == null ? null : pulumi.Output.create<String>(map['sourceVolId'] as String),
      volumeRetypePolicy: map['volumeRetypePolicy'] == null ? null : pulumi.Output.create<String>(map['volumeRetypePolicy'] as String),
      volumeType: map['volumeType'] == null ? null : pulumi.Output.create<String>(map['volumeType'] as String),
    );
  }
}

