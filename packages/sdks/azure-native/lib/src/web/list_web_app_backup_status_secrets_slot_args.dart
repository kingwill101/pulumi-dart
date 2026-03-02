// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule.dart';
import 'database_backup_setting.dart';

/// {@template pulumi_web_list_web_app_backup_status_secrets_slot_args_doc}
/// Arguments for listWebAppBackupStatusSecretsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_backup_status_secrets_slot_args_doc}
class ListWebAppBackupStatusSecretsSlotArgs {
  /// ID of backup.
  final pulumi.Input<String> backupId;
  /// Name of the backup.
  final pulumi.Input<String>? backupName;
  /// Schedule for the backup if it is executed periodically.
  final pulumi.Input<BackupSchedule>? backupSchedule;
  /// Databases included in the backup.
  final pulumi.Input<List<DatabaseBackupSetting>>? databases;
  /// True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  final pulumi.Input<bool>? enabled;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of web app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of web app slot. If not specified then will default to production slot.
  final pulumi.Input<String> slot;
  /// SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [ListWebAppBackupStatusSecretsSlotArgs].
  /// [backupId] ID of backup.
  /// [backupName] Name of the backup.
  /// [backupSchedule] Schedule for the backup if it is executed periodically.
  /// [databases] Databases included in the backup.
  /// [enabled] True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  /// [kind] Kind of resource.
  /// [name] Name of web app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of web app slot. If not specified then will default to production slot.
  /// [storageAccountUrl] SAS URL to the container.
  ListWebAppBackupStatusSecretsSlotArgs({
    required this.backupId,
    this.backupName,
    this.backupSchedule,
    this.databases,
    this.enabled,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
    required this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'backupName': ?backupName,
      'backupSchedule': ?pulumi.Input.mapOptionalInputValue<BackupSchedule, Map<String, dynamic>>(backupSchedule, (value) => value.toMap()),
      'databases': ?pulumi.Input.mapOptionalInputValue<List<DatabaseBackupSetting>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<DatabaseBackupSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory ListWebAppBackupStatusSecretsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppBackupStatusSecretsSlotArgs(
      backupId: (map['backupId'] as String).input(),
      backupName: map['backupName'] == null ? null : (map['backupName']! as String).input(),
      backupSchedule: map['backupSchedule'] == null ? null : (BackupSchedule.fromMap((map['backupSchedule']! as Map).cast<String, dynamic>())).input(),
      databases: map['databases'] == null ? null : (pulumi.Input.decodeList<DatabaseBackupSetting>(map['databases']!, (value) => DatabaseBackupSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
      storageAccountUrl: (map['storageAccountUrl'] as String).input(),
    );
  }
}

