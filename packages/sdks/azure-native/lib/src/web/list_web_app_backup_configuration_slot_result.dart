// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_response.dart';
import 'database_backup_setting_response.dart';

/// Result data returned by listWebAppBackupConfigurationSlot.
class ListWebAppBackupConfigurationSlotResult {
  /// Name of the backup.
  final String? backupName;
  /// Schedule for the backup if it is executed periodically.
  final BackupScheduleResponse? backupSchedule;
  /// Databases included in the backup.
  final List<DatabaseBackupSettingResponse>? databases;
  /// True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  final bool? enabled;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// SAS URL to the container.
  final String storageAccountUrl;
  /// Resource type.
  final String type;

  /// Creates a new [ListWebAppBackupConfigurationSlotResult].
  /// [backupName] Name of the backup.
  /// [backupSchedule] Schedule for the backup if it is executed periodically.
  /// [databases] Databases included in the backup.
  /// [enabled] True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [storageAccountUrl] SAS URL to the container.
  /// [type] Resource type.
  ListWebAppBackupConfigurationSlotResult({
    this.backupName,
    this.backupSchedule,
    this.databases,
    this.enabled,
    required this.id,
    this.kind,
    required this.name,
    required this.storageAccountUrl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
      'backupSchedule': ?backupSchedule == null ? null : backupSchedule!.toMap(),
      'databases': ?databases == null ? null : pulumi.Input.encodeList<DatabaseBackupSettingResponse, Map<String, dynamic>>(databases!, (value) => value.toMap()),
      'enabled': ?enabled,
      'id': id,
      'kind': ?kind,
      'name': name,
      'storageAccountUrl': storageAccountUrl,
      'type': type,
    };
  }

  factory ListWebAppBackupConfigurationSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppBackupConfigurationSlotResult(
      backupName: map['backupName'] == null ? null : map['backupName'] as String,
      backupSchedule: map['backupSchedule'] == null ? null : BackupScheduleResponse.fromMap((map['backupSchedule'] as Map).cast<String, dynamic>()),
      databases: map['databases'] == null ? null : pulumi.Input.decodeList<DatabaseBackupSettingResponse>(map['databases'], (value) => DatabaseBackupSettingResponse.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      storageAccountUrl: map['storageAccountUrl'] as String,
      type: map['type'] as String,
    );
  }
}

