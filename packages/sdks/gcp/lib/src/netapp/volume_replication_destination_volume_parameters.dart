// ignore_for_file: unused_element, unnecessary_cast

import 'volume_replication_destination_volume_parameters_tiering_policy.dart';

class VolumeReplicationDestinationVolumeParameters {
  /// Description for the destination volume.
  final String? description;
  /// Share name for destination volume. If not specified, name of source volume's share name will be used.
  final String? shareName;
  /// Name of an existing storage pool for the destination volume with format: `projects/{{project}}/locations/{{location}}/storagePools/{{poolId}}`
  final String storagePool;
  /// Tiering policy for the volume.
  /// Structure is documented below.
  final VolumeReplicationDestinationVolumeParametersTieringPolicy? tieringPolicy;
  /// Name for the destination volume to be created. If not specified, the name of the source volume will be used.
  final String? volumeId;

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
      'tieringPolicy': ?tieringPolicy == null ? null : tieringPolicy!.toMap(),
      'volumeId': ?volumeId,
    };
  }

  factory VolumeReplicationDestinationVolumeParameters.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationDestinationVolumeParameters(
      description: map['description'] == null ? null : map['description'] as String,
      shareName: map['shareName'] == null ? null : map['shareName'] as String,
      storagePool: map['storagePool'] as String,
      tieringPolicy: map['tieringPolicy'] == null ? null : VolumeReplicationDestinationVolumeParametersTieringPolicy.fromMap((map['tieringPolicy'] as Map).cast<String, dynamic>()),
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as String,
    );
  }
}

