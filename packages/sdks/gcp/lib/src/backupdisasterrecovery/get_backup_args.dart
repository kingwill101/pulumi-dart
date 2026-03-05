// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_backup_get_backup_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_backup_get_backup_args_doc}
class GetBackupArgs {
  /// The ID of the Backup Vault of the Data Source in which the Backup belongs.
  final pulumi.Input<String> backupVaultId;
  /// The ID of the Data Source in which the Backup belongs.
  final pulumi.Input<String> dataSourceId;
  /// The location in which the Backup belongs.
  final pulumi.Input<String> location;
  /// The Google Cloud Project in which the Backup belongs.
  final pulumi.Input<String> project;

  /// Creates a new [GetBackupArgs].
  /// [backupVaultId] The ID of the Backup Vault of the Data Source in which the Backup belongs.
  /// [dataSourceId] The ID of the Data Source in which the Backup belongs.
  /// [location] The location in which the Backup belongs.
  /// [project] The Google Cloud Project in which the Backup belongs.
  GetBackupArgs({
    required this.backupVaultId,
    required this.dataSourceId,
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': backupVaultId,
      'dataSourceId': dataSourceId,
      'location': location,
      'project': project,
    };
  }

  factory GetBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs(
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

