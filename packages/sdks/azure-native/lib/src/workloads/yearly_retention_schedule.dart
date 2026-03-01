// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_retention_format.dart';
import 'month_of_year.dart';
import 'retention_duration.dart';
import 'weekly_retention_format.dart';

/// Yearly retention schedule.
class YearlyRetentionSchedule {
  /// List of months of year of yearly retention policy.
  final List<MonthOfYear>? monthsOfYear;
  /// Retention duration of retention Policy.
  final RetentionDuration? retentionDuration;
  /// Daily retention format for yearly retention policy.
  final DailyRetentionFormat? retentionScheduleDaily;
  /// Retention schedule format for yearly retention policy.
  final String? retentionScheduleFormatType;
  /// Weekly retention format for yearly retention policy.
  final WeeklyRetentionFormat? retentionScheduleWeekly;
  /// Retention times of retention policy.
  final List<String>? retentionTimes;

  /// Creates a new [YearlyRetentionSchedule].
  /// [monthsOfYear] List of months of year of yearly retention policy.
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionScheduleDaily] Daily retention format for yearly retention policy.
  /// [retentionScheduleFormatType] Retention schedule format for yearly retention policy.
  /// [retentionScheduleWeekly] Weekly retention format for yearly retention policy.
  /// [retentionTimes] Retention times of retention policy.
  YearlyRetentionSchedule({
    this.monthsOfYear,
    this.retentionDuration,
    this.retentionScheduleDaily,
    this.retentionScheduleFormatType,
    this.retentionScheduleWeekly,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthsOfYear': ?monthsOfYear == null ? null : pulumi.Input.encodeList<MonthOfYear, String>(monthsOfYear!, (value) => value.value),
      'retentionDuration': ?retentionDuration == null ? null : retentionDuration!.toMap(),
      'retentionScheduleDaily': ?retentionScheduleDaily == null ? null : retentionScheduleDaily!.toMap(),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly': ?retentionScheduleWeekly == null ? null : retentionScheduleWeekly!.toMap(),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory YearlyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return YearlyRetentionSchedule(
      monthsOfYear: map['monthsOfYear'] == null ? null : pulumi.Input.decodeList<MonthOfYear>(map['monthsOfYear'], (value) => MonthOfYear.fromValue(value as String)),
      retentionDuration: map['retentionDuration'] == null ? null : RetentionDuration.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionScheduleDaily: map['retentionScheduleDaily'] == null ? null : DailyRetentionFormat.fromMap((map['retentionScheduleDaily'] as Map).cast<String, dynamic>()),
      retentionScheduleFormatType: map['retentionScheduleFormatType'] == null ? null : map['retentionScheduleFormatType'] as String,
      retentionScheduleWeekly: map['retentionScheduleWeekly'] == null ? null : WeeklyRetentionFormat.fromMap((map['retentionScheduleWeekly'] as Map).cast<String, dynamic>()),
      retentionTimes: map['retentionTimes'] == null ? null : (map['retentionTimes'] as List).cast<String>(),
    );
  }
}

