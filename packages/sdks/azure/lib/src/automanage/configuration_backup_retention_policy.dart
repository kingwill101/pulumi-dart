// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_backup_retention_policy_daily_schedule.dart';
import 'configuration_backup_retention_policy_weekly_schedule.dart';

class ConfigurationBackupRetentionPolicy {
  /// A `daily_schedule` block as defined below.
  final pulumi.Input<ConfigurationBackupRetentionPolicyDailySchedule>? dailySchedule;
  /// The retention policy type of the backup policy. Possible value is `LongTermRetentionPolicy`. Defaults to `LongTermRetentionPolicy`.
  final pulumi.Input<String>? retentionPolicyType;
  /// A `weekly_schedule` block as defined below.
  final pulumi.Input<ConfigurationBackupRetentionPolicyWeeklySchedule>? weeklySchedule;

  /// Creates a new [ConfigurationBackupRetentionPolicy].
  /// [dailySchedule] A `daily_schedule` block as defined below.
  /// [retentionPolicyType] The retention policy type of the backup policy. Possible value is `LongTermRetentionPolicy`. Defaults to `LongTermRetentionPolicy`.
  /// [weeklySchedule] A `weekly_schedule` block as defined below.
  ConfigurationBackupRetentionPolicy({
    this.dailySchedule,
    this.retentionPolicyType,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<ConfigurationBackupRetentionPolicyDailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'retentionPolicyType': ?retentionPolicyType,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ConfigurationBackupRetentionPolicyWeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ConfigurationBackupRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackupRetentionPolicy(
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationBackupRetentionPolicyDailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionPolicyType: (() { final guardedValue = map['retentionPolicyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationBackupRetentionPolicyWeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

