// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_duration.dart';

/// Daily retention schedule.
class DailyRetentionSchedule {
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDuration?>? retentionDuration;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>?>? retentionTimes;

  /// Creates a new [DailyRetentionSchedule].
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  const DailyRetentionSchedule({
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDuration, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory DailyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return DailyRetentionSchedule(
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionTimes: (() { final guardedValue = map['retentionTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
