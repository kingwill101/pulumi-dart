// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationBackupSchedulePolicy {
  /// The schedule policy type of the backup policy. Possible value is `SimpleSchedulePolicy`. Defaults to `SimpleSchedulePolicy`.
  final pulumi.Input<String>? schedulePolicyType;
  /// The schedule run days of the backup policy. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final pulumi.Input<List<String>>? scheduleRunDays;
  /// The schedule run frequency of the backup policy. Possible values are `Daily` and `Weekly`. Defaults to `Daily`.
  final pulumi.Input<String>? scheduleRunFrequency;
  /// The schedule run times of the backup policy.
  final pulumi.Input<List<String>>? scheduleRunTimes;

  /// Creates a new [ConfigurationBackupSchedulePolicy].
  /// [schedulePolicyType] The schedule policy type of the backup policy. Possible value is `SimpleSchedulePolicy`. Defaults to `SimpleSchedulePolicy`.
  /// [scheduleRunDays] The schedule run days of the backup policy. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  /// [scheduleRunFrequency] The schedule run frequency of the backup policy. Possible values are `Daily` and `Weekly`. Defaults to `Daily`.
  /// [scheduleRunTimes] The schedule run times of the backup policy.
  ConfigurationBackupSchedulePolicy({
    this.schedulePolicyType,
    this.scheduleRunDays,
    this.scheduleRunFrequency,
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedulePolicyType': ?schedulePolicyType,
      'scheduleRunDays': ?scheduleRunDays,
      'scheduleRunFrequency': ?scheduleRunFrequency,
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory ConfigurationBackupSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return ConfigurationBackupSchedulePolicy(
      schedulePolicyType: (() { final guardedValue = map['schedulePolicyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleRunDays: (() { final guardedValue = map['scheduleRunDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduleRunFrequency: (() { final guardedValue = map['scheduleRunFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleRunTimes: (() { final guardedValue = map['scheduleRunTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

