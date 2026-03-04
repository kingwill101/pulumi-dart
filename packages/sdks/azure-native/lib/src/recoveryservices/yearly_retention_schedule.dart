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
      'monthsOfYear':
          ?pulumi.Input.mapOptionalInputValue<List<MonthOfYear>, List<String>>(
            monthsOfYear,
            (value) => pulumi.Input.encodeList<MonthOfYear, String>(
              value,
              (value) => value.wireValue,
            ),
          ),
      'retentionDuration':
          ?pulumi.Input.mapOptionalInputValue<
            RetentionDuration,
            Map<String, dynamic>
          >(retentionDuration, (value) => value.toMap()),
      'retentionScheduleDaily':
          ?pulumi.Input.mapOptionalInputValue<
            DailyRetentionFormat,
            Map<String, dynamic>
          >(retentionScheduleDaily, (value) => value.toMap()),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly':
          ?pulumi.Input.mapOptionalInputValue<
            WeeklyRetentionFormat,
            Map<String, dynamic>
          >(retentionScheduleWeekly, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory YearlyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return YearlyRetentionSchedule(
      monthsOfYear: (() {
        final guardedValue = map['monthsOfYear'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MonthOfYear>(
            guardedValue,
            (value) => MonthOfYear.fromValue(value as String),
          ),
        );
      })(),
      retentionDuration: (() {
        final guardedValue = map['retentionDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RetentionDuration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      retentionScheduleDaily: (() {
        final guardedValue = map['retentionScheduleDaily'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DailyRetentionFormat.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      retentionScheduleFormatType: (() {
        final guardedValue = map['retentionScheduleFormatType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionScheduleWeekly: (() {
        final guardedValue = map['retentionScheduleWeekly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WeeklyRetentionFormat.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      retentionTimes: (() {
        final guardedValue = map['retentionTimes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
