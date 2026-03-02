// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_retention_format.dart';
import 'month_of_year.dart';
import 'retention_duration.dart';
import 'weekly_retention_format.dart';

/// Yearly retention schedule.
class YearlyRetentionSchedule {
  /// List of months of year of yearly retention policy.
  final pulumi.Input<List<MonthOfYear>>? monthsOfYear;
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDuration>? retentionDuration;
  /// Daily retention format for yearly retention policy.
  final pulumi.Input<DailyRetentionFormat>? retentionScheduleDaily;
  /// Retention schedule format for yearly retention policy.
  final pulumi.Input<String>? retentionScheduleFormatType;
  /// Weekly retention format for yearly retention policy.
  final pulumi.Input<WeeklyRetentionFormat>? retentionScheduleWeekly;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>>? retentionTimes;

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
      'monthsOfYear': ?pulumi.Input.mapOptionalInputValue<List<MonthOfYear>, List<String>>(monthsOfYear, (value) => pulumi.Input.encodeList<MonthOfYear, String>(value, (value) => value.value)),
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDuration, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionScheduleDaily': ?pulumi.Input.mapOptionalInputValue<DailyRetentionFormat, Map<String, dynamic>>(retentionScheduleDaily, (value) => value.toMap()),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly': ?pulumi.Input.mapOptionalInputValue<WeeklyRetentionFormat, Map<String, dynamic>>(retentionScheduleWeekly, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory YearlyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return YearlyRetentionSchedule(
      monthsOfYear: map['monthsOfYear'] == null ? null : (pulumi.Input.decodeList<MonthOfYear>(map['monthsOfYear']!, (value) => MonthOfYear.fromValue(value as String))).input(),
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDuration.fromMap((map['retentionDuration']! as Map).cast<String, dynamic>())).input(),
      retentionScheduleDaily: map['retentionScheduleDaily'] == null ? null : (DailyRetentionFormat.fromMap((map['retentionScheduleDaily']! as Map).cast<String, dynamic>())).input(),
      retentionScheduleFormatType: map['retentionScheduleFormatType'] == null ? null : (map['retentionScheduleFormatType']! as String).input(),
      retentionScheduleWeekly: map['retentionScheduleWeekly'] == null ? null : (WeeklyRetentionFormat.fromMap((map['retentionScheduleWeekly']! as Map).cast<String, dynamic>())).input(),
      retentionTimes: map['retentionTimes'] == null ? null : ((map['retentionTimes']! as List).cast<String>()).input(),
    );
  }
}

