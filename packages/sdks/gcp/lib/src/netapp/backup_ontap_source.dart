// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupOntapSource {
  /// The UUID of the ONTAP source snapshot.
  final pulumi.Input<String?>? snapshotUuid;
  /// Name of the storage pool. This must be specified for creating backups for ONTAP mode volumes.
  /// Format: `projects/{{project}}/locations/{{location}}/storagePools/{{storage_pool_id}}`
  final pulumi.Input<String> storagePool;
  /// The UUID of the ONTAP source volume.
  final pulumi.Input<String> volumeUuid;

  /// Creates a new [BackupOntapSource].
  /// [snapshotUuid] The UUID of the ONTAP source snapshot.
  /// [storagePool] Name of the storage pool. This must be specified for creating backups for ONTAP mode volumes.
  /// [volumeUuid] The UUID of the ONTAP source volume.
  const BackupOntapSource({
    this.snapshotUuid,
    required this.storagePool,
    required this.volumeUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotUuid': ?snapshotUuid,
      'storagePool': storagePool,
      'volumeUuid': volumeUuid,
    };
  }

  factory BackupOntapSource.fromMap(Map<String, dynamic> map) {
    return BackupOntapSource(
      snapshotUuid: (() { final guardedValue = map['snapshotUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePool: pulumi.Input.fromValue(map['storagePool'] as String),
      volumeUuid: pulumi.Input.fromValue(map['volumeUuid'] as String),
    );
  }
}
