// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';
import 'week_of_month.dart';

/// Weekly retention format.
class WeeklyRetentionFormat {
  /// List of days of the week.
  final pulumi.Input<List<DayOfWeek>>? daysOfTheWeek;
  /// List of weeks of month.
  final pulumi.Input<List<WeekOfMonth>>? weeksOfTheMonth;

  /// Creates a new [WeeklyRetentionFormat].
  /// [daysOfTheWeek] List of days of the week.
  /// [weeksOfTheMonth] List of weeks of month.
  WeeklyRetentionFormat({
    this.daysOfTheWeek,
    this.weeksOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheWeek': ?pulumi.Input.mapOptionalInputValue<List<DayOfWeek>, List<String>>(daysOfTheWeek, (value) => pulumi.Input.encodeList<DayOfWeek, String>(value, (value) => value.value)),
      'weeksOfTheMonth': ?pulumi.Input.mapOptionalInputValue<List<WeekOfMonth>, List<String>>(weeksOfTheMonth, (value) => pulumi.Input.encodeList<WeekOfMonth, String>(value, (value) => value.value)),
    };
  }

  factory WeeklyRetentionFormat.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionFormat(
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : (pulumi.Input.decodeList<DayOfWeek>(map['daysOfTheWeek']!, (value) => DayOfWeek.fromValue(value as String))).input(),
      weeksOfTheMonth: map['weeksOfTheMonth'] == null ? null : (pulumi.Input.decodeList<WeekOfMonth>(map['weeksOfTheMonth']!, (value) => WeekOfMonth.fromValue(value as String))).input(),
    );
  }
}

