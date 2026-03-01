// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_backup_retention_policy_weekly_schedule_retention_duration.dart';

class ConfigurationBackupRetentionPolicyWeeklySchedule {
  /// A `retention_duration` block as defined below.
  final ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDuration? retentionDuration;
  /// The retention times of the backup policy.
  final List<String>? retentionTimes;

  /// Creates a new [ConfigurationBackupRetentionPolicyWeeklySchedule].
  /// [retentionDuration] A `retention_duration` block as defined below.
  /// [retentionTimes] The retention times of the backup policy.
  ConfigurationBackupRetentionPolicyWeeklySchedule({
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?retentionDuration == null ? null : retentionDuration!.toMap(),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory ConfigurationBackupRetentionPolicyWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackupRetentionPolicyWeeklySchedule(
      retentionDuration: map['retentionDuration'] == null ? null : ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDuration.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionTimes: map['retentionTimes'] == null ? null : (map['retentionTimes'] as List).cast<String>(),
    );
  }
}

