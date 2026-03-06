// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration {
  /// The count of the retention duration of the backup policy. Valid value inside `daily_schedule` is `7` to `9999` and inside `weekly_schedule` is `1` to `5163`.
  final pulumi.Input<int>? count;
  /// The duration type of the retention duration of the backup policy. Valid value inside `daily_schedule` is `Days` and inside `weekly_schedule` is `Weeks`. Defaults to `Days`.
  final pulumi.Input<String>? durationType;

  /// Creates a new [ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration].
  /// [count] The count of the retention duration of the backup policy. Valid value inside `daily_schedule` is `7` to `9999` and inside `weekly_schedule` is `1` to `5163`.
  /// [durationType] The duration type of the retention duration of the backup policy. Valid value inside `daily_schedule` is `Days` and inside `weekly_schedule` is `Weeks`. Defaults to `Days`.
  const ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration({
    this.count,
    this.durationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'durationType': ?durationType,
    };
  }

  factory ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackupRetentionPolicyDailyScheduleRetentionDuration(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      durationType: (() { final guardedValue = map['durationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

