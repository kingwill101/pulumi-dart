// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/object_reference.dart';

/// CronJobStatus represents the current state of a cron job.
class CronJobStatusBatchV2alpha1 {
  /// A list of pointers to currently running jobs.
  final pulumi.Input<List<ObjectReference>>? active;
  /// Information when was the last time the job was successfully scheduled.
  final pulumi.Input<String>? lastScheduleTime;

  /// Creates a new [CronJobStatusBatchV2alpha1].
  /// [active] A list of pointers to currently running jobs.
  /// [lastScheduleTime] Information when was the last time the job was successfully scheduled.
  const CronJobStatusBatchV2alpha1({
    this.active,
    this.lastScheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?pulumi.Input.mapOptionalInputValue<List<ObjectReference>, List<Map<String, dynamic>>>(active, (value) => pulumi.Input.encodeList<ObjectReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastScheduleTime': ?lastScheduleTime,
    };
  }

  factory CronJobStatusBatchV2alpha1.fromMap(Map<String, dynamic> map) {
    return CronJobStatusBatchV2alpha1(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectReference>(guardedValue, (value) => ObjectReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastScheduleTime: (() { final guardedValue = map['lastScheduleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

