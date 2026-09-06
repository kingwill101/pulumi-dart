// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_response.dart';
import 'database_backup_setting_response.dart';

/// Result data returned by listWebAppBackupConfiguration.
class ListWebAppBackupConfigurationResult {
  /// Name of the backup.
  final String? backupName;
  /// Schedule for the backup if it is executed periodically.
  final BackupScheduleResponse? backupSchedule;
  /// Databases included in the backup.
  final List<DatabaseBackupSettingResponse>? databases;
  /// True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  final bool? enabled;
  /// Resource Id.
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String? name;
  /// SAS URL to the container.
  final String? storageAccountUrl;
  /// Resource type.
  final String? type;

  /// Creates a new [ListWebAppBackupConfigurationResult].
  /// [backupName] Name of the backup.
  /// [backupSchedule] Schedule for the backup if it is executed periodically.
  /// [databases] Databases included in the backup.
  /// [enabled] True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [storageAccountUrl] SAS URL to the container.
  /// [type] Resource type.
  const ListWebAppBackupConfigurationResult({
    this.backupName,
    this.backupSchedule,
    this.databases,
    this.enabled,
    this.id,
    this.kind,
    this.name,
    this.storageAccountUrl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
      'backupSchedule': ?backupSchedule?.toMap(),
      'databases': ?(() { final guardedValue = databases; if (guardedValue == null) return null; return pulumi.Input.encodeList<DatabaseBackupSettingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'storageAccountUrl': ?storageAccountUrl,
      'type': ?type,
    };
  }

  factory ListWebAppBackupConfigurationResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppBackupConfigurationResult(
      backupName: (() { final guardedValue = map['backupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupSchedule: (() { final guardedValue = map['backupSchedule']; if (guardedValue == null) return null; return BackupScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatabaseBackupSettingResponse>(guardedValue, (value) => DatabaseBackupSettingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountUrl: (() { final guardedValue = map['storageAccountUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
