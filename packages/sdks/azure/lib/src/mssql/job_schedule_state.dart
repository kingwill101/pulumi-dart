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
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? interval,
    pulumi.Output<String>? jobId,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? type,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      interval = pulumi.Input.asOptionalInput<String>(interval),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<String>(map['interval'] as String),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

