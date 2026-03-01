// ignore_for_file: unused_element, unnecessary_cast


class GetBackupBackup {
  /// Id of the requesting object, Backup.
  final String backupId;
  /// The ID of the Backup Vault of the Data Source in which the Backup belongs.
  final String backupVaultId;
  /// The time when the backup was created.
  final String createTime;
  /// The ID of the Data Source in which the Backup belongs.
  final String dataSourceId;
  /// The location in which the Backup belongs.
  final String location;
  /// Name of the resource.
  final String name;

  /// Creates a new [GetBackupBackup].
  /// [backupId] Id of the requesting object, Backup.
  /// [backupVaultId] The ID of the Backup Vault of the Data Source in which the Backup belongs.
  /// [createTime] The time when the backup was created.
  /// [dataSourceId] The ID of the Data Source in which the Backup belongs.
  /// [location] The location in which the Backup belongs.
  /// [name] Name of the resource.
  GetBackupBackup({
    required this.backupId,
    required this.backupVaultId,
    required this.createTime,
    required this.dataSourceId,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'backupVaultId': backupVaultId,
      'createTime': createTime,
      'dataSourceId': dataSourceId,
      'location': location,
      'name': name,
    };
  }

  factory GetBackupBackup.fromMap(Map<String, dynamic> map) {
    return GetBackupBackup(
      backupId: map['backupId'] as String,
      backupVaultId: map['backupVaultId'] as String,
      createTime: map['createTime'] as String,
      dataSourceId: map['dataSourceId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}

