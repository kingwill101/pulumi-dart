// ignore_for_file: unused_element, unnecessary_cast

import 'retention_duration_response.dart';

/// Weekly retention schedule.
class WeeklyRetentionScheduleResponse {
  /// List of days of week for weekly retention policy.
  final List<String>? daysOfTheWeek;
  /// Retention duration of retention Policy.
  final RetentionDurationResponse? retentionDuration;
  /// Retention times of retention policy.
  final List<String>? retentionTimes;

  /// Creates a new [WeeklyRetentionScheduleResponse].
  /// [daysOfTheWeek] List of days of week for weekly retention policy.
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  WeeklyRetentionScheduleResponse({
    this.daysOfTheWeek,
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheWeek': ?daysOfTheWeek,
      'retentionDuration': ?retentionDuration == null ? null : retentionDuration!.toMap(),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory WeeklyRetentionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionScheduleResponse(
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : (map['daysOfTheWeek'] as List).cast<String>(),
      retentionDuration: map['retentionDuration'] == null ? null : RetentionDurationResponse.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionTimes: map['retentionTimes'] == null ? null : (map['retentionTimes'] as List).cast<String>(),
    );
  }
}

