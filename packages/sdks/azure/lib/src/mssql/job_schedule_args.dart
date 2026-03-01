// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_job_schedule_job_schedule_args_doc}
/// The set of arguments for JobSchedule.
/// {@endtemplate}
/// {@macro pulumi_mssql_job_schedule_job_schedule_args_doc}
class JobScheduleArgs {
  /// Should the Elastic Job Schedule be enabled? Defaults to `false`.
  ///
  /// > **Note:** When `type` is set to `Once` and `enabled` is set to `true`, it's recommended to add `enabled` to `ignore_changes`. This is because Azure will set `enabled` to `false` once the job has executed.
  final pulumi.Input<bool>? enabled;
  /// The end time of the schedule. Must be in RFC3339 format.
  final pulumi.Input<String>? endTime;
  /// The interval between job executions. Must be in ISO8601 duration format.
  final pulumi.Input<String>? interval;
  /// The ID of the Elastic Job. Changing this forces a new Elastic Job Schedule to be created.
  final pulumi.Input<String> jobId;
  /// The start time of the schedule. Must be in RFC3339 format.
  final pulumi.Input<String>? startTime;
  /// The type of schedule. Possible values are `Once` and `Recurring`.
  final pulumi.Input<String> type;

  /// Creates a new [JobScheduleArgs].
  /// [enabled] Should the Elastic Job Schedule be enabled? Defaults to `false`.
  /// [endTime] The end time of the schedule. Must be in RFC3339 format.
  /// [interval] The interval between job executions. Must be in ISO8601 duration format.
  /// [jobId] The ID of the Elastic Job. Changing this forces a new Elastic Job Schedule to be created.
  /// [startTime] The start time of the schedule. Must be in RFC3339 format.
  /// [type] The type of schedule. Possible values are `Once` and `Recurring`.
  JobScheduleArgs({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? interval,
    required pulumi.Output<String> jobId,
    pulumi.Output<String>? startTime,
    required pulumi.Output<String> type,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      interval = pulumi.Input.asOptionalInput<String>(interval),
      jobId = pulumi.Input.asInput<String>(jobId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endTime': ?endTime,
      'interval': ?interval,
      'jobId': jobId,
      'startTime': ?startTime,
      'type': type,
    };
  }

  factory JobScheduleArgs.fromMap(Map<String, dynamic> map) {
    return JobScheduleArgs(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<String>(map['interval'] as String),
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

