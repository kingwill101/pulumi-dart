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
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDurationResponse, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionScheduleDaily': ?pulumi.Input.mapOptionalInputValue<DailyRetentionFormatResponse, Map<String, dynamic>>(retentionScheduleDaily, (value) => value.toMap()),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly': ?pulumi.Input.mapOptionalInputValue<WeeklyRetentionFormatResponse, Map<String, dynamic>>(retentionScheduleWeekly, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory YearlyRetentionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return YearlyRetentionScheduleResponse(
      monthsOfYear: map['monthsOfYear'] == null ? null : ((map['monthsOfYear'] as List).cast<String>()).input(),
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDurationResponse.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>())).input(),
      retentionScheduleDaily: map['retentionScheduleDaily'] == null ? null : (DailyRetentionFormatResponse.fromMap((map['retentionScheduleDaily'] as Map).cast<String, dynamic>())).input(),
      retentionScheduleFormatType: map['retentionScheduleFormatType'] == null ? null : (map['retentionScheduleFormatType'] as String).input(),
      retentionScheduleWeekly: map['retentionScheduleWeekly'] == null ? null : (WeeklyRetentionFormatResponse.fromMap((map['retentionScheduleWeekly'] as Map).cast<String, dynamic>())).input(),
      retentionTimes: map['retentionTimes'] == null ? null : ((map['retentionTimes'] as List).cast<String>()).input(),
    );
  }
}

