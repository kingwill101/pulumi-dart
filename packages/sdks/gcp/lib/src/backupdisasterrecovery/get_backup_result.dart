// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_backup.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// Name of the Backup Vault associated with Backup.
  final String? backupVaultId;
  /// List of all backups under data source. Structure is defined below.
  final List<GetBackupBackup>? backups;
  /// The time when the backup was created.
  final String? createTime;
  /// Name of the Data Source associated with Backup.
  final String? dataSourceId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Location of the resource.
  final String? location;
  /// Name of the resource.
  final String? name;
  final String? project;

  /// Creates a new [GetBackupResult].
  /// [backupVaultId] Name of the Backup Vault associated with Backup.
  /// [backups] List of all backups under data source. Structure is defined below.
  /// [createTime] The time when the backup was created.
  /// [dataSourceId] Name of the Data Source associated with Backup.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [project] Optional.
  const GetBackupResult({
    this.backupVaultId,
    this.backups,
    this.createTime,
    this.dataSourceId,
    this.id,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': ?backupVaultId,
      'backups': ?(() { final guardedValue = backups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupBackup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'dataSourceId': ?dataSourceId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      backupVaultId: (() { final guardedValue = map['backupVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupBackup>(guardedValue, (value) => GetBackupBackup.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
