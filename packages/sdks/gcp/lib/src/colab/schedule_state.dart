// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request.dart';

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;
  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequest>? createNotebookExecutionJobRequest;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  final pulumi.Input<String>? cron;
  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  final pulumi.Input<String>? desiredState;
  /// Required. The display name of the Schedule.
  final pulumi.Input<String>? displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? endTime;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String>? location;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  final pulumi.Input<String>? maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount >= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;
  /// The resource name of the Schedule
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? startTime;
  /// Output only. The state of the schedule.
  final pulumi.Input<String>? state;

  /// Creates a new [ScheduleState].
  /// [allowQueueing] Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  /// [createNotebookExecutionJobRequest] Request for google_colab_notebook_execution.
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  /// [desiredState] Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  /// [displayName] Required. The display name of the Schedule.
  /// [endTime] Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [maxConcurrentRunCount] Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  /// [maxRunCount] Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount >= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [name] The resource name of the Schedule
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  /// [state] Output only. The state of the schedule.
  ScheduleState({
    this.allowQueueing,
    this.createNotebookExecutionJobRequest,
    this.cron,
    this.desiredState,
    this.displayName,
    this.endTime,
    this.location,
    this.maxConcurrentRunCount,
    this.maxRunCount,
    this.name,
    this.project,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowQueueing': ?allowQueueing,
      'createNotebookExecutionJobRequest': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequest, Map<String, dynamic>>(createNotebookExecutionJobRequest, (value) => value.toMap()),
      'cron': ?cron,
      'desiredState': ?desiredState,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'location': ?location,
      'maxConcurrentRunCount': ?maxConcurrentRunCount,
      'maxRunCount': ?maxRunCount,
      'name': ?name,
      'project': ?project,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      allowQueueing: map['allowQueueing'] == null ? null : (map['allowQueueing'] as bool).input(),
      createNotebookExecutionJobRequest: map['createNotebookExecutionJobRequest'] == null ? null : (ScheduleCreateNotebookExecutionJobRequest.fromMap((map['createNotebookExecutionJobRequest'] as Map).cast<String, dynamic>())).input(),
      cron: map['cron'] == null ? null : (map['cron'] as String).input(),
      desiredState: map['desiredState'] == null ? null : (map['desiredState'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxConcurrentRunCount: map['maxConcurrentRunCount'] == null ? null : (map['maxConcurrentRunCount'] as String).input(),
      maxRunCount: map['maxRunCount'] == null ? null : (map['maxRunCount'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

