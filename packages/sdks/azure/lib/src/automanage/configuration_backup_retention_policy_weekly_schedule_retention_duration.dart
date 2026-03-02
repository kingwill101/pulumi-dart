// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDuration {
  /// The count of the retention duration of the backup policy. Valid value inside `daily_schedule` is `7` to `9999` and inside `weekly_schedule` is `1` to `5163`.
  final pulumi.Input<int>? count;
  /// The duration type of the retention duration of the backup policy. Valid value inside `daily_schedule` is `Days` and inside `weekly_schedule` is `Weeks`. Defaults to `Days`.
  final pulumi.Input<String>? durationType;

  /// Creates a new [ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDuration].
  /// [count] The count of the retention duration of the backup policy. Valid value inside `daily_schedule` is `7` to `9999` and inside `weekly_schedule` is `1` to `5163`.
  /// [durationType] The duration type of the retention duration of the backup policy. Valid value inside `daily_schedule` is `Days` and inside `weekly_schedule` is `Weeks`. Defaults to `Days`.
  ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDuration({
    this.count,
    this.durationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'durationType': ?durationType,
    };
  }

  factory ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDuration.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDuration(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      durationType: map['durationType'] == null ? null : (map['durationType'] as String).input(),
    );
  }
}

