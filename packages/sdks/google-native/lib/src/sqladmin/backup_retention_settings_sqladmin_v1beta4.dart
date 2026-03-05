// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_retention_settings_retention_unit_sqladmin_v1beta4.dart';

/// We currently only support backup retention by specifying the number of backups we will retain.
class BackupRetentionSettingsSqladminV1beta4 {
  /// Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  final pulumi.Input<int>? retainedBackups;
  /// The unit that 'retained_backups' represents.
  final pulumi.Input<BackupRetentionSettingsRetentionUnitSqladminV1beta4>? retentionUnit;

  /// Creates a new [BackupRetentionSettingsSqladminV1beta4].
  /// [retainedBackups] Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  /// [retentionUnit] The unit that 'retained_backups' represents.
  BackupRetentionSettingsSqladminV1beta4({
    this.retainedBackups,
    this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retainedBackups': ?retainedBackups,
      'retentionUnit': ?pulumi.Input.mapOptionalInputValue<BackupRetentionSettingsRetentionUnitSqladminV1beta4, String>(retentionUnit, (value) => value.wireValue),
    };
  }

  factory BackupRetentionSettingsSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return BackupRetentionSettingsSqladminV1beta4(
      retainedBackups: (() { final guardedValue = map['retainedBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retentionUnit: (() { final guardedValue = map['retentionUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupRetentionSettingsRetentionUnitSqladminV1beta4.fromValue(guardedValue as String)); })(),
    );
  }
}

