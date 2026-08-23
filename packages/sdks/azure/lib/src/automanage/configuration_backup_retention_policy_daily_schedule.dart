// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_backup_retention_policy_daily_schedule_retention_duration.dart';

class ConfigurationBackupRetentionPolicyDailySchedule {
  /// A `retentionDuration` block as defined below.
  final pulumi.Input<ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration>? retentionDuration;
  /// The retention times of the backup policy.
  final pulumi.Input<List<String>>? retentionTimes;

  /// Creates a new [ConfigurationBackupRetentionPolicyDailySchedule].
  /// [retentionDuration] A `retentionDuration` block as defined below.
  /// [retentionTimes] The retention times of the backup policy.
  const ConfigurationBackupRetentionPolicyDailySchedule({
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory ConfigurationBackupRetentionPolicyDailySchedule.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackupRetentionPolicyDailySchedule(
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionTimes: (() { final guardedValue = map['retentionTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
