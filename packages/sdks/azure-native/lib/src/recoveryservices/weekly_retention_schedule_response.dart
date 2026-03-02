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
  WeeklyRetentionScheduleResponse({
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
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : ((map['daysOfTheWeek']! as List).cast<String>()).input(),
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDurationResponse.fromMap((map['retentionDuration']! as Map).cast<String, dynamic>())).input(),
      retentionTimes: map['retentionTimes'] == null ? null : ((map['retentionTimes']! as List).cast<String>()).input(),
    );
  }
}

