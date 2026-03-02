// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_replication_destination_volume_parameters_tiering_policy.dart';

class VolumeReplicationDestinationVolumeParameters {
  /// Description for the destination volume.
  final pulumi.Input<String>? description;
  /// Share name for destination volume. If not specified, name of source volume's share name will be used.
  final pulumi.Input<String>? shareName;
  /// Name of an existing storage pool for the destination volume with format: `projects/{{project}}/locations/{{location}}/storagePools/{{poolId}}`
  final pulumi.Input<String> storagePool;
  /// Tiering policy for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeReplicationDestinationVolumeParametersTieringPolicy>? tieringPolicy;
  /// Name for the destination volume to be created. If not specified, the name of the source volume will be used.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [VolumeReplicationDestinationVolumeParameters].
  /// [description] Description for the destination volume.
  /// [shareName] Share name for destination volume. If not specified, name of source volume's share name will be used.
  /// [storagePool] Name of an existing storage pool for the destination volume with format: `projects/{{project}}/locations/{{location}}/storagePools/{{poolId}}`
  /// [tieringPolicy] Tiering policy for the volume.
  /// [volumeId] Name for the destination volume to be created. If not specified, the name of the source volume will be used.
  VolumeReplicationDestinationVolumeParameters({
    this.description,
    this.shareName,
    required this.storagePool,
    this.tieringPolicy,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'shareName': ?shareName,
      'storagePool': storagePool,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeReplicationDestinationVolumeParametersTieringPolicy, Map<String, dynamic>>(tieringPolicy, (value) => value.toMap()),
      'volumeId': ?volumeId,
    };
  }

  factory VolumeReplicationDestinationVolumeParameters.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationDestinationVolumeParameters(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
      storagePool: (map['storagePool'] as String).input(),
      tieringPolicy: map['tieringPolicy'] == null ? null : (VolumeReplicationDestinationVolumeParametersTieringPolicy.fromMap((map['tieringPolicy']! as Map).cast<String, dynamic>())).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as String).input(),
    );
  }
}

