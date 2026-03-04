// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_retention_format_response.dart';
import 'retention_duration_response.dart';
import 'weekly_retention_format_response.dart';

/// Yearly retention schedule.
class YearlyRetentionScheduleResponse {
  /// List of months of year of yearly retention policy.
  final pulumi.Input<List<String>>? monthsOfYear;

  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDurationResponse>? retentionDuration;

  /// Daily retention format for yearly retention policy.
  final pulumi.Input<DailyRetentionFormatResponse>? retentionScheduleDaily;

  /// Retention schedule format for yearly retention policy.
  final pulumi.Input<String>? retentionScheduleFormatType;

  /// Weekly retention format for yearly retention policy.
  final pulumi.Input<WeeklyRetentionFormatResponse>? retentionScheduleWeekly;

  /// Retention times of retention policy.
  final pulumi.Input<List<String>>? retentionTimes;

  /// Creates a new [YearlyRetentionScheduleResponse].
  /// [monthsOfYear] List of months of year of yearly retention policy.
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionScheduleDaily] Daily retention format for yearly retention policy.
  /// [retentionScheduleFormatType] Retention schedule format for yearly retention policy.
  /// [retentionScheduleWeekly] Weekly retention format for yearly retention policy.
  /// [retentionTimes] Retention times of retention policy.
  YearlyRetentionScheduleResponse({
    this.monthsOfYear,
    this.retentionDuration,
    this.retentionScheduleDaily,
    this.retentionScheduleFormatType,
    this.retentionScheduleWeekly,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthsOfYear': ?monthsOfYear,
      'retentionDuration':
          ?pulumi.Input.mapOptionalInputValue<
            RetentionDurationResponse,
            Map<String, dynamic>
          >(retentionDuration, (value) => value.toMap()),
      'retentionScheduleDaily':
          ?pulumi.Input.mapOptionalInputValue<
            DailyRetentionFormatResponse,
            Map<String, dynamic>
          >(retentionScheduleDaily, (value) => value.toMap()),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly':
          ?pulumi.Input.mapOptionalInputValue<
            WeeklyRetentionFormatResponse,
            Map<String, dynamic>
          >(retentionScheduleWeekly, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory YearlyRetentionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return YearlyRetentionScheduleResponse(
      monthsOfYear: (() {
        final guardedValue = map['monthsOfYear'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      retentionDuration: (() {
        final guardedValue = map['retentionDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RetentionDurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      retentionScheduleDaily: (() {
        final guardedValue = map['retentionScheduleDaily'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DailyRetentionFormatResponse.fromMap(
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
          WeeklyRetentionFormatResponse.fromMap(
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
