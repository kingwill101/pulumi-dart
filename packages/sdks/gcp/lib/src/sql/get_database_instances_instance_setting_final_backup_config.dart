// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingFinalBackupConfig {
  /// When this parameter is set to true, the final backup is enabled for the instance
  final pulumi.Input<bool> enabled;
  /// The number of days to retain the final backup after the instance deletion. The valid range is between 1 and 365. For instances managed by BackupDR, the valid range is between 1 day and 99 years. The final backup will be purged at (time_of_instance_deletion + retention_days).
  final pulumi.Input<int> retentionDays;

  /// Creates a new [GetDatabaseInstancesInstanceSettingFinalBackupConfig].
  /// [enabled] When this parameter is set to true, the final backup is enabled for the instance
  /// [retentionDays] The number of days to retain the final backup after the instance deletion. The valid range is between 1 and 365. For instances managed by BackupDR, the valid range is between 1 day and 99 years. The final backup will be purged at (time_of_instance_deletion + retention_days).
  const GetDatabaseInstancesInstanceSettingFinalBackupConfig({
    required this.enabled,
    required this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'retentionDays': retentionDays,
    };
  }

  factory GetDatabaseInstancesInstanceSettingFinalBackupConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingFinalBackupConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      retentionDays: pulumi.Input.fromValue((map['retentionDays'] as num).toInt()),
    );
  }
}
