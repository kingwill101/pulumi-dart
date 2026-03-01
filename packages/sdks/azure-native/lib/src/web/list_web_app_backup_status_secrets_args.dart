// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule.dart';
import 'database_backup_setting.dart';

/// {@template pulumi_web_list_web_app_backup_status_secrets_args_doc}
/// Arguments for listWebAppBackupStatusSecrets.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_backup_status_secrets_args_doc}
class ListWebAppBackupStatusSecretsArgs {
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
  /// SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [ListWebAppBackupStatusSecretsArgs].
  /// [backupId] ID of backup.
  /// [backupName] Name of the backup.
  /// [backupSchedule] Schedule for the backup if it is executed periodically.
  /// [databases] Databases included in the backup.
  /// [enabled] True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  /// [kind] Kind of resource.
  /// [name] Name of web app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [storageAccountUrl] SAS URL to the container.
  ListWebAppBackupStatusSecretsArgs({
    required pulumi.Output<String> backupId,
    pulumi.Output<String>? backupName,
    pulumi.Output<BackupSchedule>? backupSchedule,
    pulumi.Output<List<DatabaseBackupSetting>>? databases,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageAccountUrl,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      backupName = pulumi.Input.asOptionalInput<String>(backupName),
      backupSchedule = pulumi.Input.asOptionalInput<BackupSchedule>(backupSchedule),
      databases = pulumi.Input.asOptionalInput<List<DatabaseBackupSetting>>(databases),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountUrl = pulumi.Input.asInput<String>(storageAccountUrl);

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
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory ListWebAppBackupStatusSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppBackupStatusSecretsArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      backupName: map['backupName'] == null ? null : pulumi.Output.create<String>(map['backupName'] as String),
      backupSchedule: map['backupSchedule'] == null ? null : pulumi.Output.create<BackupSchedule>(BackupSchedule.fromMap((map['backupSchedule'] as Map).cast<String, dynamic>())),
      databases: map['databases'] == null ? null : pulumi.Output.create<List<DatabaseBackupSetting>>(pulumi.Input.decodeList<DatabaseBackupSetting>(map['databases'], (value) => DatabaseBackupSetting.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageAccountUrl: pulumi.Output.create<String>(map['storageAccountUrl'] as String),
    );
  }
}

