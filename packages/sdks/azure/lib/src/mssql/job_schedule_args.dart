// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_job_schedule_job_schedule_args_doc}
/// The set of arguments for JobSchedule.
/// {@endtemplate}
/// {@macro pulumi_mssql_job_schedule_job_schedule_args_doc}
class JobScheduleArgs {
  /// Should the Elastic Job Schedule be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** When `type` is set to `Once` and `enabled` is set to `true`, it's recommended to add `enabled` to `ignore_changes`. This is because Azure will set `enabled` to `false` once the job has executed.
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
  const JobScheduleArgs({
    this.enabled,
    this.endTime,
    this.interval,
    required this.jobId,
    this.startTime,
    required this.type,
  });

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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

