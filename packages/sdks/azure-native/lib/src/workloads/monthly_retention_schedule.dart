// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_retention_format.dart';
import 'retention_duration.dart';
import 'weekly_retention_format.dart';

/// Monthly retention schedule.
class MonthlyRetentionSchedule {
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDuration>? retentionDuration;
  /// Daily retention format for monthly retention policy.
  final pulumi.Input<DailyRetentionFormat>? retentionScheduleDaily;
  /// Retention schedule format type for monthly retention policy.
  final pulumi.Input<String>? retentionScheduleFormatType;
  /// Weekly retention format for monthly retention policy.
  final pulumi.Input<WeeklyRetentionFormat>? retentionScheduleWeekly;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>>? retentionTimes;

  /// Creates a new [MonthlyRetentionSchedule].
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionScheduleDaily] Daily retention format for monthly retention policy.
  /// [retentionScheduleFormatType] Retention schedule format type for monthly retention policy.
  /// [retentionScheduleWeekly] Weekly retention format for monthly retention policy.
  /// [retentionTimes] Retention times of retention policy.
  MonthlyRetentionSchedule({
    this.retentionDuration,
    this.retentionScheduleDaily,
    this.retentionScheduleFormatType,
    this.retentionScheduleWeekly,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDuration, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionScheduleDaily': ?pulumi.Input.mapOptionalInputValue<DailyRetentionFormat, Map<String, dynamic>>(retentionScheduleDaily, (value) => value.toMap()),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly': ?pulumi.Input.mapOptionalInputValue<WeeklyRetentionFormat, Map<String, dynamic>>(retentionScheduleWeekly, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory MonthlyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return MonthlyRetentionSchedule(
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDuration.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>())).input(),
      retentionScheduleDaily: map['retentionScheduleDaily'] == null ? null : (DailyRetentionFormat.fromMap((map['retentionScheduleDaily'] as Map).cast<String, dynamic>())).input(),
      retentionScheduleFormatType: map['retentionScheduleFormatType'] == null ? null : (map['retentionScheduleFormatType'] as String).input(),
      retentionScheduleWeekly: map['retentionScheduleWeekly'] == null ? null : (WeeklyRetentionFormat.fromMap((map['retentionScheduleWeekly'] as Map).cast<String, dynamic>())).input(),
      retentionTimes: map['retentionTimes'] == null ? null : ((map['retentionTimes'] as List).cast<String>()).input(),
    );
  }
}

