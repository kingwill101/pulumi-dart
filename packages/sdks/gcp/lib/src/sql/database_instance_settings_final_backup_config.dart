// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsFinalBackupConfig {
  /// True if enabled final backup.
  final pulumi.Input<bool>? enabled;
  /// The number of days we retain the final backup after instance deletion. The valid range is between 1 and 365. For instances managed by BackupDR, the valid range is between 1 day and 99 years.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [DatabaseInstanceSettingsFinalBackupConfig].
  /// [enabled] True if enabled final backup.
  /// [retentionDays] The number of days we retain the final backup after instance deletion. The valid range is between 1 and 365. For instances managed by BackupDR, the valid range is between 1 day and 99 years.
  DatabaseInstanceSettingsFinalBackupConfig({
    this.enabled,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retentionDays': ?retentionDays,
    };
  }

  factory DatabaseInstanceSettingsFinalBackupConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsFinalBackupConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

