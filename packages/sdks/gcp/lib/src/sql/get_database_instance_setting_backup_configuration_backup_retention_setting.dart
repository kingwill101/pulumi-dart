// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting {
  /// Number of backups to retain.
  final pulumi.Input<int> retainedBackups;
  /// The unit that 'retainedBackups' represents. Defaults to COUNT
  final pulumi.Input<String> retentionUnit;

  /// Creates a new [GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting].
  /// [retainedBackups] Number of backups to retain.
  /// [retentionUnit] The unit that 'retainedBackups' represents. Defaults to COUNT
  const GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting({
    required this.retainedBackups,
    required this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retainedBackups': retainedBackups,
      'retentionUnit': retentionUnit,
    };
  }

  factory GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting(
      retainedBackups: pulumi.Input.fromValue(map['retainedBackups'] as int),
      retentionUnit: pulumi.Input.fromValue(map['retentionUnit'] as String),
    );
  }
}
