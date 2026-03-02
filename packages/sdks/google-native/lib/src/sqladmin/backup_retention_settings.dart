// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_retention_settings_retention_unit.dart';

/// We currently only support backup retention by specifying the number of backups we will retain.
class BackupRetentionSettings {
  /// Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  final pulumi.Input<int>? retainedBackups;
  /// The unit that 'retained_backups' represents.
  final pulumi.Input<BackupRetentionSettingsRetentionUnit>? retentionUnit;

  /// Creates a new [BackupRetentionSettings].
  /// [retainedBackups] Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  /// [retentionUnit] The unit that 'retained_backups' represents.
  BackupRetentionSettings({
    this.retainedBackups,
    this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retainedBackups': ?retainedBackups,
      'retentionUnit': ?pulumi.Input.mapOptionalInputValue<BackupRetentionSettingsRetentionUnit, String>(retentionUnit, (value) => value.value),
    };
  }

  factory BackupRetentionSettings.fromMap(Map<String, dynamic> map) {
    return BackupRetentionSettings(
      retainedBackups: map['retainedBackups'] == null ? null : (map['retainedBackups']! as int).input(),
      retentionUnit: map['retentionUnit'] == null ? null : (BackupRetentionSettingsRetentionUnit.fromValue(map['retentionUnit']! as String)).input(),
    );
  }
}

