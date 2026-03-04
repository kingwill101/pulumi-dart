// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertMutingRuleSchedule {
  /// The datetime stamp when the muting rule schedule stops repeating. This is in local ISO 8601 format without an offset. Example: '2020-07-10T15:00:00'. Conflicts with `repeat_count`
  final pulumi.Input<String>? endRepeat;

  /// The datetime stamp that represents when the muting rule ends. This is in local ISO 8601 format without an offset. Example: '2020-07-15T14:30:00'
  /// * `timeZone` (Required) The time zone that applies to the muting rule schedule. Example: 'America/Los_Angeles'. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  final pulumi.Input<String>? endTime;

  /// The frequency the muting rule schedule repeats. If it does not repeat, omit this field. Options are DAILY, WEEKLY, MONTHLY
  final pulumi.Input<String>? repeat;

  /// The number of times the muting rule schedule repeats. This includes the original schedule. For example, a repeatCount of 2 will recur one time. Conflicts with `end_repeat`
  final pulumi.Input<int>? repeatCount;

  /// The datetime stamp that represents when the muting rule starts. This is in local ISO 8601 format without an offset. Example: '2020-07-08T14:30:00'
  final pulumi.Input<String>? startTime;

  /// The time zone that applies to the MutingRule schedule.
  final pulumi.Input<String> timeZone;

  /// The day(s) of the week that a muting rule should repeat when the repeat field is set to 'WEEKLY'. Example: ['MONDAY', 'WEDNESDAY']
  final pulumi.Input<List<String>>? weeklyRepeatDays;

  /// Creates a new [AlertMutingRuleSchedule].
  /// [endRepeat] The datetime stamp when the muting rule schedule stops repeating. This is in local ISO 8601 format without an offset. Example: '2020-07-10T15:00:00'. Conflicts with `repeat_count`
  /// [endTime] The datetime stamp that represents when the muting rule ends. This is in local ISO 8601 format without an offset. Example: '2020-07-15T14:30:00'
  /// [repeat] The frequency the muting rule schedule repeats. If it does not repeat, omit this field. Options are DAILY, WEEKLY, MONTHLY
  /// [repeatCount] The number of times the muting rule schedule repeats. This includes the original schedule. For example, a repeatCount of 2 will recur one time. Conflicts with `end_repeat`
  /// [startTime] The datetime stamp that represents when the muting rule starts. This is in local ISO 8601 format without an offset. Example: '2020-07-08T14:30:00'
  /// [timeZone] The time zone that applies to the MutingRule schedule.
  /// [weeklyRepeatDays] The day(s) of the week that a muting rule should repeat when the repeat field is set to 'WEEKLY'. Example: ['MONDAY', 'WEDNESDAY']
  AlertMutingRuleSchedule({
    this.endRepeat,
    this.endTime,
    this.repeat,
    this.repeatCount,
    this.startTime,
    required this.timeZone,
    this.weeklyRepeatDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endRepeat': ?endRepeat,
      'endTime': ?endTime,
      'repeat': ?repeat,
      'repeatCount': ?repeatCount,
      'startTime': ?startTime,
      'timeZone': timeZone,
      'weeklyRepeatDays': ?weeklyRepeatDays,
    };
  }

  factory AlertMutingRuleSchedule.fromMap(Map<String, dynamic> map) {
    return AlertMutingRuleSchedule(
      endRepeat: (() {
        final guardedValue = map['endRepeat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repeat: (() {
        final guardedValue = map['repeat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repeatCount: (() {
        final guardedValue = map['repeatCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      weeklyRepeatDays: (() {
        final guardedValue = map['weeklyRepeatDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
