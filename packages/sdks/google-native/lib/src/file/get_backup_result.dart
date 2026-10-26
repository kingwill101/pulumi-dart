// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackup.
class GetBackupResult {
  /// Capacity of the source file share when the backup was created.
  final String? capacityGb;
  /// The time when the backup was created.
  final String? createTime;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final String? description;
  /// Amount of bytes that will be downloaded if the backup is restored. This may be different than storage bytes, since sequential backups of the same disk will share storage.
  final String? downloadBytes;
  /// Immutable. KMS key name used for data encryption.
  final String? kmsKey;
  /// Resource labels to represent user provided metadata.
  final Map<String, String>? labels;
  /// The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  final String? name;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// Name of the file share in the source Filestore instance that the backup is created from.
  final String? sourceFileShare;
  /// The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final String? sourceInstance;
  /// The service tier of the source Filestore instance that this backup is created from.
  final String? sourceInstanceTier;
  /// The backup state.
  final String? state;
  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  final String? storageBytes;

  /// Creates a new [GetBackupResult].
  /// [capacityGb] Capacity of the source file share when the backup was created.
  /// [createTime] The time when the backup was created.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [downloadBytes] Amount of bytes that will be downloaded if the backup is restored. This may be different than storage bytes, since sequential backups of the same disk will share storage.
  /// [kmsKey] Immutable. KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  /// [satisfiesPzs] Reserved for future use.
  /// [sourceFileShare] Name of the file share in the source Filestore instance that the backup is created from.
  /// [sourceInstance] The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  /// [sourceInstanceTier] The service tier of the source Filestore instance that this backup is created from.
  /// [state] The backup state.
  /// [storageBytes] The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  const GetBackupResult({
    this.capacityGb,
    this.createTime,
    this.description,
    this.downloadBytes,
    this.kmsKey,
    this.labels,
    this.name,
    this.satisfiesPzs,
    this.sourceFileShare,
    this.sourceInstance,
    this.sourceInstanceTier,
    this.state,
    this.storageBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': ?capacityGb,
      'createTime': ?createTime,
      'description': ?description,
      'downloadBytes': ?downloadBytes,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'name': ?name,
      'satisfiesPzs': ?satisfiesPzs,
      'sourceFileShare': ?sourceFileShare,
      'sourceInstance': ?sourceInstance,
      'sourceInstanceTier': ?sourceInstanceTier,
      'state': ?state,
      'storageBytes': ?storageBytes,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      capacityGb: (() { final guardedValue = map['capacityGb']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      downloadBytes: (() { final guardedValue = map['downloadBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sourceFileShare: (() { final guardedValue = map['sourceFileShare']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstance: (() { final guardedValue = map['sourceInstance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstanceTier: (() { final guardedValue = map['sourceInstanceTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageBytes: (() { final guardedValue = map['storageBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
