// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/object_reference_patch.dart';

/// CronJobStatus represents the current state of a cron job.
class CronJobStatusPatch {
  /// A list of pointers to currently running jobs.
  final List<ObjectReferencePatch>? active;
  /// Information when was the last time the job was successfully scheduled.
  final String? lastScheduleTime;
  /// Information when was the last time the job successfully completed.
  final String? lastSuccessfulTime;

  /// Creates a new [CronJobStatusPatch].
  /// [active] A list of pointers to currently running jobs.
  /// [lastScheduleTime] Information when was the last time the job was successfully scheduled.
  /// [lastSuccessfulTime] Information when was the last time the job successfully completed.
  CronJobStatusPatch({
    this.active,
    this.lastScheduleTime,
    this.lastSuccessfulTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active == null ? null : pulumi.Input.encodeList<ObjectReferencePatch, Map<String, dynamic>>(active!, (value) => value.toMap()),
      'lastScheduleTime': ?lastScheduleTime,
      'lastSuccessfulTime': ?lastSuccessfulTime,
    };
  }

  factory CronJobStatusPatch.fromMap(Map<String, dynamic> map) {
    return CronJobStatusPatch(
      active: map['active'] == null ? null : pulumi.Input.decodeList<ObjectReferencePatch>(map['active'], (value) => ObjectReferencePatch.fromMap((value as Map).cast<String, dynamic>())),
      lastScheduleTime: map['lastScheduleTime'] == null ? null : map['lastScheduleTime'] as String,
      lastSuccessfulTime: map['lastSuccessfulTime'] == null ? null : map['lastSuccessfulTime'] as String,
    );
  }
}

