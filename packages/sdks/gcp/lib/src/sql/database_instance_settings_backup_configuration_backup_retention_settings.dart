// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings {
  /// Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retentionUnit
  /// is 'COUNT', we will retain this many backups.
  final pulumi.Input<int> retainedBackups;
  /// The unit that 'retained_backups' represents. Defaults to `COUNT`.
  final pulumi.Input<String>? retentionUnit;

  /// Creates a new [DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings].
  /// [retainedBackups] Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retentionUnit
  /// [retentionUnit] The unit that 'retained_backups' represents. Defaults to `COUNT`.
  const DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings({
    required this.retainedBackups,
    this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retainedBackups': retainedBackups,
      'retentionUnit': ?retentionUnit,
    };
  }

  factory DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings(
      retainedBackups: pulumi.Input.fromValue(map['retainedBackups'] as int),
      retentionUnit: (() { final guardedValue = map['retentionUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
