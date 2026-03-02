// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_duration.dart';

/// Daily retention schedule.
class DailyRetentionSchedule {
  /// Retention duration of retention Policy.
  final pulumi.Input<RetentionDuration>? retentionDuration;
  /// Retention times of retention policy.
  final pulumi.Input<List<String>>? retentionTimes;

  /// Creates a new [DailyRetentionSchedule].
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  DailyRetentionSchedule({
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
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDuration.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>())).input(),
      retentionTimes: map['retentionTimes'] == null ? null : ((map['retentionTimes'] as List).cast<String>()).input(),
    );
  }
}

