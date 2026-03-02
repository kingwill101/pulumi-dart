// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_duration_response.dart';

/// Daily retention schedule.
class DailyRetentionScheduleResponse {
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDurationResponse>? retentionDuration;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>>? retentionTimes;

  /// Creates a new [DailyRetentionScheduleResponse].
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  DailyRetentionScheduleResponse({
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDurationResponse, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory DailyRetentionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return DailyRetentionScheduleResponse(
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDurationResponse.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>())).input(),
      retentionTimes: map['retentionTimes'] == null ? null : ((map['retentionTimes'] as List).cast<String>()).input(),
    );
  }
}

