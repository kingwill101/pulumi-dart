// ignore_for_file: unused_element, unnecessary_cast

import 'daily_retention_format_response.dart';
import 'retention_duration_response.dart';
import 'weekly_retention_format_response.dart';

/// Yearly retention schedule.
class YearlyRetentionScheduleResponse {
  /// List of months of year of yearly retention policy.
  final List<String>? monthsOfYear;
  /// Retention duration of retention Policy.
  final RetentionDurationResponse? retentionDuration;
  /// Daily retention format for yearly retention policy.
  final DailyRetentionFormatResponse? retentionScheduleDaily;
  /// Retention schedule format for yearly retention policy.
  final String? retentionScheduleFormatType;
  /// Weekly retention format for yearly retention policy.
  final WeeklyRetentionFormatResponse? retentionScheduleWeekly;
  /// Retention times of retention policy.
  final List<String>? retentionTimes;

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
      'retentionDuration': ?retentionDuration == null ? null : retentionDuration!.toMap(),
      'retentionScheduleDaily': ?retentionScheduleDaily == null ? null : retentionScheduleDaily!.toMap(),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly': ?retentionScheduleWeekly == null ? null : retentionScheduleWeekly!.toMap(),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory YearlyRetentionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return YearlyRetentionScheduleResponse(
      monthsOfYear: map['monthsOfYear'] == null ? null : (map['monthsOfYear'] as List).cast<String>(),
      retentionDuration: map['retentionDuration'] == null ? null : RetentionDurationResponse.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionScheduleDaily: map['retentionScheduleDaily'] == null ? null : DailyRetentionFormatResponse.fromMap((map['retentionScheduleDaily'] as Map).cast<String, dynamic>()),
      retentionScheduleFormatType: map['retentionScheduleFormatType'] == null ? null : map['retentionScheduleFormatType'] as String,
      retentionScheduleWeekly: map['retentionScheduleWeekly'] == null ? null : WeeklyRetentionFormatResponse.fromMap((map['retentionScheduleWeekly'] as Map).cast<String, dynamic>()),
      retentionTimes: map['retentionTimes'] == null ? null : (map['retentionTimes'] as List).cast<String>(),
    );
  }
}

