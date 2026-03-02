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
      'daysOfTheWeek': ?pulumi.Input.mapOptionalInputValue<List<DayOfWeek>, List<String>>(daysOfTheWeek, (value) => pulumi.Input.encodeList<DayOfWeek, String>(value, (value) => value.value)),
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDuration, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory WeeklyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionSchedule(
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : (pulumi.Input.decodeList<DayOfWeek>(map['daysOfTheWeek']!, (value) => DayOfWeek.fromValue(value as String))).input(),
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDuration.fromMap((map['retentionDuration']! as Map).cast<String, dynamic>())).input(),
      retentionTimes: map['retentionTimes'] == null ? null : ((map['retentionTimes']! as List).cast<String>()).input(),
    );
  }
}

