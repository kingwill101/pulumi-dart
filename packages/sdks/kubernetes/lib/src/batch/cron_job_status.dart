// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/object_reference.dart';

/// CronJobStatus represents the current state of a cron job.
class CronJobStatus {
  /// A list of pointers to currently running jobs.
  final pulumi.Input<List<ObjectReference>>? active;
  /// Information when was the last time the job was successfully scheduled.
  final pulumi.Input<String>? lastScheduleTime;
  /// Information when was the last time the job successfully completed.
  final pulumi.Input<String>? lastSuccessfulTime;

  /// Creates a new [CronJobStatus].
  /// [active] A list of pointers to currently running jobs.
  /// [lastScheduleTime] Information when was the last time the job was successfully scheduled.
  /// [lastSuccessfulTime] Information when was the last time the job successfully completed.
  CronJobStatus({
    this.active,
    this.lastScheduleTime,
    this.lastSuccessfulTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?pulumi.Input.mapOptionalInputValue<List<ObjectReference>, List<Map<String, dynamic>>>(active, (value) => pulumi.Input.encodeList<ObjectReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastScheduleTime': ?lastScheduleTime,
      'lastSuccessfulTime': ?lastSuccessfulTime,
    };
  }

  factory CronJobStatus.fromMap(Map<String, dynamic> map) {
    return CronJobStatus(
      active: map['active'] == null ? null : (pulumi.Input.decodeList<ObjectReference>(map['active'], (value) => ObjectReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastScheduleTime: map['lastScheduleTime'] == null ? null : (map['lastScheduleTime'] as String).input(),
      lastSuccessfulTime: map['lastSuccessfulTime'] == null ? null : (map['lastSuccessfulTime'] as String).input(),
    );
  }
}

