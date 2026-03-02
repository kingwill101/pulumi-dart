// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobSchedule resources.
class JobScheduleState {
  /// Should the Elastic Job Schedule be enabled? Defaults to `false`.
  ///
  /// > **Note:** When `type` is set to `Once` and `enabled` is set to `true`, it's recommended to add `enabled` to `ignore_changes`. This is because Azure will set `enabled` to `false` once the job has executed.
  final pulumi.Input<bool>? enabled;
  /// The end time of the schedule. Must be in RFC3339 format.
  final pulumi.Input<String>? endTime;
  /// The interval between job executions. Must be in ISO8601 duration format.
  final pulumi.Input<String>? interval;
  /// The ID of the Elastic Job. Changing this forces a new Elastic Job Schedule to be created.
  final pulumi.Input<String>? jobId;
  /// The start time of the schedule. Must be in RFC3339 format.
  final pulumi.Input<String>? startTime;
  /// The type of schedule. Possible values are `Once` and `Recurring`.
  final pulumi.Input<String>? type;

  /// Creates a new [JobScheduleState].
  /// [enabled] Should the Elastic Job Schedule be enabled? Defaults to `false`.
  /// [endTime] The end time of the schedule. Must be in RFC3339 format.
  /// [interval] The interval between job executions. Must be in ISO8601 duration format.
  /// [jobId] The ID of the Elastic Job. Changing this forces a new Elastic Job Schedule to be created.
  /// [startTime] The start time of the schedule. Must be in RFC3339 format.
  /// [type] The type of schedule. Possible values are `Once` and `Recurring`.
  JobScheduleState({
    this.enabled,
    this.endTime,
    this.interval,
    this.jobId,
    this.startTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endTime': ?endTime,
      'interval': ?interval,
      'jobId': ?jobId,
      'startTime': ?startTime,
      'type': ?type,
    };
  }

  factory JobScheduleState.fromMap(Map<String, dynamic> map) {
    return JobScheduleState(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      jobId: map['jobId'] == null ? null : (map['jobId'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

