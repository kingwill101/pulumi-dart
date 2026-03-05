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
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionScheduleDaily: (() { final guardedValue = map['retentionScheduleDaily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DailyRetentionFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionScheduleFormatType: (() { final guardedValue = map['retentionScheduleFormatType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionScheduleWeekly: (() { final guardedValue = map['retentionScheduleWeekly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklyRetentionFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionTimes: (() { final guardedValue = map['retentionTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

