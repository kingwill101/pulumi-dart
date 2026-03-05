// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupBackup {
  /// Id of the requesting object, Backup.
  final pulumi.Input<String> backupId;
  /// The ID of the Backup Vault of the Data Source in which the Backup belongs.
  final pulumi.Input<String> backupVaultId;
  /// The time when the backup was created.
  final pulumi.Input<String> createTime;
  /// The ID of the Data Source in which the Backup belongs.
  final pulumi.Input<String> dataSourceId;
  /// The location in which the Backup belongs.
  final pulumi.Input<String> location;
  /// Name of the resource.
  final pulumi.Input<String> name;

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
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

