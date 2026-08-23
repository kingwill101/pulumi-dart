// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_duration_response.dart';

/// Weekly retention schedule.
class WeeklyRetentionScheduleResponse {
  /// List of days of week for weekly retention policy.
  final pulumi.Input<List<String>>? daysOfTheWeek;
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDurationResponse>? retentionDuration;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>>? retentionTimes;

  /// Creates a new [WeeklyRetentionScheduleResponse].
  /// [daysOfTheWeek] List of days of week for weekly retention policy.
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  const WeeklyRetentionScheduleResponse({
    this.daysOfTheWeek,
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheWeek': ?daysOfTheWeek,
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDurationResponse, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory WeeklyRetentionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionScheduleResponse(
      daysOfTheWeek: (() { final guardedValue = map['daysOfTheWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionDurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionTimes: (() { final guardedValue = map['retentionTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
