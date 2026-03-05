// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';
import 'retention_duration.dart';

/// Weekly retention schedule.
class WeeklyRetentionSchedule {
  /// List of days of week for weekly retention policy.
  final pulumi.Input<List<DayOfWeek>>? daysOfTheWeek;
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDuration>? retentionDuration;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>>? retentionTimes;

  /// Creates a new [WeeklyRetentionSchedule].
  /// [daysOfTheWeek] List of days of week for weekly retention policy.
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  WeeklyRetentionSchedule({
    this.daysOfTheWeek,
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheWeek': ?pulumi.Input.mapOptionalInputValue<List<DayOfWeek>, List<String>>(daysOfTheWeek, (value) => pulumi.Input.encodeList<DayOfWeek, String>(value, (value) => value.wireValue)),
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDuration, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory WeeklyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionSchedule(
      daysOfTheWeek: (() { final guardedValue = map['daysOfTheWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DayOfWeek>(guardedValue, (value) => DayOfWeek.fromValue(value as String))); })(),
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionTimes: (() { final guardedValue = map['retentionTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

