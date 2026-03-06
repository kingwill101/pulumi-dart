// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackup.
class GetBackupFileV1beta1Result {
  /// Capacity of the source file share when the backup was created.
  final String capacityGb;
  /// The time when the backup was created.
  final String createTime;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final String description;
  /// Amount of bytes that will be downloaded if the backup is restored
  final String downloadBytes;
  /// Immutable. KMS key name used for data encryption.
  final String kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;
  /// The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`.
  final String name;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// Name of the file share in the source Filestore instance that the backup is created from.
  final String sourceFileShare;
  /// The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final String sourceInstance;
  /// The service tier of the source Filestore instance that this backup is created from.
  final String sourceInstanceTier;
  /// The backup state.
  final String state;
  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  final String storageBytes;

  /// Creates a new [GetBackupFileV1beta1Result].
  /// [capacityGb] Capacity of the source file share when the backup was created.
  /// [createTime] The time when the backup was created.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [downloadBytes] Amount of bytes that will be downloaded if the backup is restored
  /// [kmsKeyName] Immutable. KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`.
  /// [satisfiesPzs] Reserved for future use.
  /// [sourceFileShare] Name of the file share in the source Filestore instance that the backup is created from.
  /// [sourceInstance] The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  /// [sourceInstanceTier] The service tier of the source Filestore instance that this backup is created from.
  /// [state] The backup state.
  /// [storageBytes] The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  const GetBackupFileV1beta1Result({
    required this.capacityGb,
    required this.createTime,
    required this.description,
    required this.downloadBytes,
    required this.kmsKeyName,
    required this.labels,
    required this.name,
    required this.satisfiesPzs,
    required this.sourceFileShare,
    required this.sourceInstance,
    required this.sourceInstanceTier,
    required this.state,
    required this.storageBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': capacityGb,
      'createTime': createTime,
      'description': description,
      'downloadBytes': downloadBytes,
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'name': name,
      'satisfiesPzs': satisfiesPzs,
      'sourceFileShare': sourceFileShare,
      'sourceInstance': sourceInstance,
      'sourceInstanceTier': sourceInstanceTier,
      'state': state,
      'storageBytes': storageBytes,
    };
  }

  factory GetBackupFileV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetBackupFileV1beta1Result(
      capacityGb: map['capacityGb'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      downloadBytes: map['downloadBytes'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      sourceFileShare: map['sourceFileShare'] as String,
      sourceInstance: map['sourceInstance'] as String,
      sourceInstanceTier: map['sourceInstanceTier'] as String,
      state: map['state'] as String,
      storageBytes: map['storageBytes'] as String,
    );
  }
}

