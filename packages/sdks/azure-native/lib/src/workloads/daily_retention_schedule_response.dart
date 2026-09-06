// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_duration_response.dart';

/// Daily retention schedule.
class DailyRetentionScheduleResponse {
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDurationResponse?>? retentionDuration;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>?>? retentionTimes;

  /// Creates a new [DailyRetentionScheduleResponse].
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  const DailyRetentionScheduleResponse({
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
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionDurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionTimes: (() { final guardedValue = map['retentionTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
